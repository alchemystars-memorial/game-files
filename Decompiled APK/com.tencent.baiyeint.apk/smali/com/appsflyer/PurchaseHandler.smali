.class public final Lcom/appsflyer/PurchaseHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;
    }
.end annotation


# instance fields
.field public final AFInAppEventType:Lcom/appsflyer/internal/AFc1zSDK;

.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

.field private final valueOf:Lcom/appsflyer/internal/AFb1aSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/PurchaseHandler;->AFInAppEventType:Lcom/appsflyer/internal/AFc1zSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFb1aSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    return-void
.end method


# virtual methods
.method public final varargs AFInAppEventType(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFb1aSDK;

    invoke-static {p1, p3, v0}, Lcom/appsflyer/internal/AFb1tSDK;->values(Ljava/util/Map;[Ljava/lang/String;Lcom/appsflyer/internal/AFb1aSDK;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Request Data"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return p1
.end method
