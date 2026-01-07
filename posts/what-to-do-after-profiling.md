---
language: "he"
title: "מצאתם צוואר בקבוק? הנה מה עושים עכשיו"
categories:
  - "Profiling"
tags:
  - "צווארי בקבוק"
  - "אופטימיזציית הסקה"
previousPost: "why-is-your-model-slow"
nextPost: "grpc-ai-communication"
slug: "what-to-do-after-profiling"
---


# מצאתם צוואר בקבוק? הנה מה עושים עכשיו

Profiling גילה שהמודל שלכם איטי, אבל למה?
השלב הבא הוא Optimization - להבין איפה בדיוק הכשל ואיך לתקן אותו.

## שלב 1 - הבינו את סוג הבעיה

לא כל עיכוב נובע מאותו מקום.
להלן ארבע קטגוריות עיקריות של צווארי בקבוק - ולכל אחת, דרך טיפול אחרת:

| סוג בעיה                | סימנים                                      | דרך שיפור                                                                 |
|-------------------------|---------------------------------------------|---------------------------------------------------------------------------|
| Memory I/O Bottleneck  | ה-GPU מחכה לגישה לזיכרון, ניצולת נמוכה      | שימוש ב-KV Cache יעיל, הפחתת העברות CPU↔GPU, או מעבר ל-Offload חכם       |
| Compute Bottleneck     | המאיץ עובד ב-100% כל הזמן                   | שימוש ב-Batching, Kernel Fusion או FP16/BF16 להפחתת עומס חישובי          |
| Scheduling Bottleneck  | חלק מהבקשות “מחכות בתור”                   | שימוש ב-Continuous Batching או Stream Scheduling                         |
| Network / Latency Bottleneck | זמני תקשורת בין רכיבים ארוכים            | שילוב שירותים קרובים (co-location) ושימוש בפרוטוקולי gRPC יעילים        |

## שלב 2 - בצעו ניסויים ממוקדים

לא כל שינוי עובד מיד.
שנו רק פרמטר אחד בכל פעם (batch size, precision, cache strategy) ובדקו את ההשפעה ב-profiling הבא.

שיפור ביצועים הוא תהליך איטרטיבי:
מדוד → שפר → מדוד שוב.

## שלב 3 - השתמשו בכלים הנכונים

כלים שמומלץ להשתמש בהם להמשך:

- TensorBoard Profiler - להשוואה בין ריצות שונות.
- NVIDIA Nsight Systems - לניתוח GPU ו-Memory Access.
- Perf / Py-Spy - לניתוח CPU-bound code.
- vLLM logs / traces - לבדיקת batch efficiency.

## טיפ אחרון

שיפור ביצועים הוא אמנות של איזון.
אופטימיזציה אחת יכולה לפתור בעיה אחת - וליצור אחרת.
אל תכוונו “לשבור שיא”, אלא לאזן בין throughput, latency וצריכת משאבים.