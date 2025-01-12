.class public final enum Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;
.super Ljava/lang/Enum;
.source "FeedbackOpinionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;


# instance fields
.field private opinionArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->$VALUES:[Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

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

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->opinionArray:Landroid/util/SparseArray;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;
    .locals 1

    const-class v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->$VALUES:[Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    return-object v0
.end method


# virtual methods
.method public getOpinionArray()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->opinionArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public prepareDataSource(Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->opinionArray:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    const-string v3, "satisfyList"

    invoke-static {v1, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
