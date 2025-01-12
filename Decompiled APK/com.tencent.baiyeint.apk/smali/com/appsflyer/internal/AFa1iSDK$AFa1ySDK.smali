.class final Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1iSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AFa1ySDK"
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/String;

.field final AFInAppEventType:Ljava/lang/String;

.field final values:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->values:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method
