.class final Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1xSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AFa1zSDK"
.end annotation


# instance fields
.field final AFKeystoreWrapper:F

.field final values:Ljava/lang/String;


# direct methods
.method constructor <init>(FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->AFKeystoreWrapper:F

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->values:Ljava/lang/String;

    return-void
.end method
