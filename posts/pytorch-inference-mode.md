---
language: "he"
title: "PyTorch - מה זה בעצם @torch.inference_mode()?"
categories:
  - "Pytorch"
tags:
  - "Python"
  - "Inference"
previousPost: "pytorch-tensor-views"
slug: "pytorch-inference-mode"
---


# PyTorch - מה זה בעצם @torch.inference_mode()?

כשאנחנו מריצים מודל של PyTorch בזמן Inference (כלומר שלב שבו המודל רק מנבא, ולא לומד) -
יש הרבה מנגנונים מיותרים שעדיין פועלים "ברקע", כי PyTorch בנוי כברירת מחדל למצב אימון.

כאן נכנסת לתמונה ההוראה:

```python
@torch.inference_mode()
```

## מה היא עושה בפועל?

ה-decorator הזה מכבה לגמרי את מנגנון ה-Autograd, כלומר:

- לא נשמרים גרפים של חישוב.
- לא נאספת היסטוריה לצורך backpropagation.
- לא מתבצעות פעולות מעקב אחרי gradients.

בקיצור: PyTorch עובר למצב קריאה בלבד - "אל תעקוב, רק תריץ".

## למה זה חשוב?

ב-inference, אנחנו לא צריכים לחשב גרדיאנטים -
אז אין סיבה לשלם את מחיר הזיכרון והביצועים עליהם.

היתרונות העיקריים:

- חיסכון של עד 30-50% בזיכרון GPU.
- Latency נמוך יותר - פחות bookkeeping פנימי.
- פחות עומס על CPU (שבו מנוהל ה-Autograd).

## שימוש טיפוסי

```python
import torch

model.eval()  # מכבה דברים כמו dropout
with torch.inference_mode():
    output = model(inputs)
```

או אם זו פונקציה שתרצי לעטוף:

```python
@torch.inference_mode()
def predict(model, x):
    return model(x)
```

## מה ההבדל בין inference_mode ל-no_grad?

שאלה קלאסית:

`torch.no_grad()` גם מכבה את מעקב הגרדיאנטים,
אבל עדיין משאיר חלק ממבני הנתונים של Autograd זמינים.

`torch.inference_mode()` הולך רחוק יותר -
הוא מניח שהטנזורים לא ישתנו, ולכן מבטל גם חלק מה-metadata.
התוצאה: עוד יותר מהיר, במיוחד כשעובדים ב-batch גדול או בריצות חוזרות.

## טיפ קטן

אם המודל שלך רץ באופן תדיר ב-production (API, שרת, benchmark) -
העטיפה הזו היא חובה. היא לא משנה את התוצאה,
אבל כן משנה דרמטית את היעילות.

## סיכום

| מצב | מעקב גרדיאנטים | שינוי בטנזורים | חסכון בזיכרון | מתאים ל- |
|---|---|---|---|---|
| רגיל | ✅ | ✅ | ❌ | אימון |
| no_grad | ❌ | ✅ | בינוני | בדיקה / ניסוי |
| inference_mode | ❌ | ❌ | גבוה | Production / Deployment |
