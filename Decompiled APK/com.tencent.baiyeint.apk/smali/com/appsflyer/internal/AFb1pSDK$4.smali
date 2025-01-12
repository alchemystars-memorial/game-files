.class final Lcom/appsflyer/internal/AFb1pSDK$4;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1pSDK;->values(Lcom/appsflyer/internal/AFa1uSDK;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/AFa1uSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1uSDK;)V
    .locals 1

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK$4;->values:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "type"

    const-string/jumbo v0, "unhashed"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK$4;->values:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
