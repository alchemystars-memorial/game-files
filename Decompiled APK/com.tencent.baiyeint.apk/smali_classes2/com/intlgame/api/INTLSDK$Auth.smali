.class public Lcom/intlgame/api/INTLSDK$Auth;
.super Lcom/intlgame/api/auth/INTLAuth;
.source "INTLSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/api/INTLSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/auth/INTLAuth;-><init>()V

    return-void
.end method
