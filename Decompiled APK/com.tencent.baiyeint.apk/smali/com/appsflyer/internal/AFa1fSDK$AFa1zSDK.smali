.class final Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1fSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AFa1zSDK"
.end annotation


# instance fields
.field private final AFInAppEventType:Z

.field final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;->valueOf:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;->AFInAppEventType:Z

    return-void
.end method


# virtual methods
.method final AFInAppEventParameterName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;->AFInAppEventType:Z

    return v0
.end method
