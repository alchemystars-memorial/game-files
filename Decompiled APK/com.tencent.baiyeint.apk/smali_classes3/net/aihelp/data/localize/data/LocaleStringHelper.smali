.class public final enum Lnet/aihelp/data/localize/data/LocaleStringHelper;
.super Ljava/lang/Enum;
.source "LocaleStringHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/data/LocaleStringHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/data/LocaleStringHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/data/LocaleStringHelper;


# instance fields
.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/data/LocaleStringHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->INSTANCE:Lnet/aihelp/data/localize/data/LocaleStringHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/data/LocaleStringHelper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/aihelp/data/localize/data/LocaleStringHelper;->$VALUES:[Lnet/aihelp/data/localize/data/LocaleStringHelper;

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

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->stringMap:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/data/LocaleStringHelper;
    .locals 1

    const-class v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/data/LocaleStringHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/data/LocaleStringHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->$VALUES:[Lnet/aihelp/data/localize/data/LocaleStringHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/data/LocaleStringHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/data/LocaleStringHelper;

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public prepareDataSource()V
    .locals 6

    const/16 v0, 0x3ed

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->stringMap:Ljava/util/Map;

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
