.class final enum Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;
.super Ljava/lang/Enum;
.source "ChannelServiceHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

.field public static final enum DELETE:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

.field public static final enum GET:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

.field public static final enum POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

.field public static final enum PUT:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->GET:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    new-instance v3, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->DELETE:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    new-instance v5, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    const-string v7, "PUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->PUT:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->$VALUES:[Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->$VALUES:[Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    return-object v0
.end method
