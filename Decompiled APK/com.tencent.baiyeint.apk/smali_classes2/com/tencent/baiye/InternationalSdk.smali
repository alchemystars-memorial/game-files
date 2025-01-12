.class public Lcom/tencent/baiye/InternationalSdk;
.super Ljava/lang/Object;
.source "InternationalSdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MyActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/intlgame/api/INTLSDK;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static MyCreate(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/intlgame/api/INTLSDK;->initialize(Landroid/app/Activity;)Z

    return-void
.end method

.method public static MyNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/intlgame/api/INTLSDK;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static MyRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/intlgame/api/INTLSDK;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
