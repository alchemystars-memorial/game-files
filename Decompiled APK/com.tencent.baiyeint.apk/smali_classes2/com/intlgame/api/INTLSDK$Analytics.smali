.class public Lcom/intlgame/api/INTLSDK$Analytics;
.super Lcom/intlgame/api/analytics/INTLAnalytics;
.source "INTLSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/api/INTLSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Analytics"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/analytics/INTLAnalytics;-><init>()V

    return-void
.end method
