.class public final Lcom/appsflyer/internal/AFb1mSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:J

.field public AFInAppEventType:Ljava/lang/String;

.field public AFKeystoreWrapper:Ljava/lang/String;

.field public AFLogger:Ljava/lang/String;

.field public afErrorLog:Lcom/appsflyer/internal/AFe1lSDK;

.field public afRDLog:Ljava/lang/Throwable;

.field public valueOf:I

.field public values:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1mSDK;->AFKeystoreWrapper:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/appsflyer/internal/AFb1mSDK;->values:J

    iput-wide p5, p0, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName:J

    iput p7, p0, Lcom/appsflyer/internal/AFb1mSDK;->valueOf:I

    iput-object p8, p0, Lcom/appsflyer/internal/AFb1mSDK;->afErrorLog:Lcom/appsflyer/internal/AFe1lSDK;

    iput-object p9, p0, Lcom/appsflyer/internal/AFb1mSDK;->AFLogger:Ljava/lang/String;

    iput-object p10, p0, Lcom/appsflyer/internal/AFb1mSDK;->afRDLog:Ljava/lang/Throwable;

    return-void
.end method
