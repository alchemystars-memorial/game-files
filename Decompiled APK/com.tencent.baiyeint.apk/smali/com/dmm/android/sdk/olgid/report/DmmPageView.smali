.class public Lcom/dmm/android/sdk/olgid/report/DmmPageView;
.super Ljava/lang/Object;
.source "DmmPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param;
    }
.end annotation


# static fields
.field private static final PageViewSendView:Ljava/lang/String; = "http://log-netgame.dmm.com/freegame_app_access.php"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;ZLcom/dmm/games/android/volley/RequestQueue;Z)V
    .locals 4

    if-nez p4, :cond_2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "http://log-netgame.dmm.com/freegame_app_access.php"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "app_id"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string/jumbo v1, "user_id"

    aput-object v1, v0, p0

    const/4 p0, 0x4

    aput-object p1, v0, p0

    const/4 p0, 0x5

    const-string p1, "device"

    aput-object p1, v0, p0

    const/4 p0, 0x6

    if-eqz p2, :cond_1

    sget-object p1, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->Emulator:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->AndroidApplication:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    :goto_0
    aput-object p1, v0, p0

    const-string p0, "%s?%s=%s&%s=%s&%s=%s"

    invoke-static {p4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/dmm/games/android/volley/toolbox/StringRequest;

    new-instance p2, Lcom/dmm/android/sdk/olgid/report/DmmPageView$1;

    invoke-direct {p2}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$1;-><init>()V

    new-instance p4, Lcom/dmm/android/sdk/olgid/report/DmmPageView$2;

    invoke-direct {p4}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$2;-><init>()V

    invoke-direct {p1, v2, p0, p2, p4}, Lcom/dmm/games/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    invoke-virtual {p3, p1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    :cond_2
    :goto_1
    return-void
.end method
