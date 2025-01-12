.class public final Lcom/linecorp/linesdk/openchat/OpenChatParameters;
.super Ljava/lang/Object;
.source "OpenChatParameters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenChatParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenChatParameters.kt\ncom/linecorp/linesdk/openchat/OpenChatParameters\n*L\n1#1,31:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
        "",
        "name",
        "",
        "description",
        "creatorDisplayName",
        "category",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        "isSearchable",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V",
        "toJsonString",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final category:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field private final creatorDisplayName:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final isSearchable:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creatorDisplayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->creatorDisplayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->category:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    iput-boolean p5, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->isSearchable:Z

    move-object p4, p1

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-lez p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    const/16 v1, 0x32

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    const-string p4, "String size needs to be less or equal to 50"

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xc8

    if-gt p1, p2, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    if-eqz p1, :cond_6

    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    move p1, p5

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v1, :cond_4

    goto :goto_4

    :cond_4
    move p5, v0

    :goto_4
    if-eqz p5, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String size needs to be less or equal to 200"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    sget-object p4, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/openchat/OpenChatParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V

    return-void
.end method


# virtual methods
.method public final toJsonString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "creatorDisplayName"

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->creatorDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->category:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "allowSearch"

    iget-boolean v2, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->isSearchable:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject().apply {\n   \u2026ble)\n        }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "{}"

    :goto_0
    return-object v0
.end method
