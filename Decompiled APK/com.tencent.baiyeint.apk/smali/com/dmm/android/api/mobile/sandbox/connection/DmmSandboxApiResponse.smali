.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;
.super Ljava/lang/Object;
.source "DmmSandboxApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$JsonKeyName;,
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList;,
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;,
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorMessage;,
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorCode;
    }
.end annotation


# static fields
.field private static final ERROR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mErrorCode:I

.field protected mEventSucceed:Z

.field protected mExecuteTime:D

.field protected mMemoryUsage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->ERROR_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error101;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error101;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error300;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error300;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error301;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error301;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error500;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error500;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error510;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error510;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error511;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error511;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error1000;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error1000;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100002;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100002;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100007;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100007;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100008;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100008;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200000;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200000;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200014;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200014;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;

    sget-object v2, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->ERROR_MAP:Ljava/util/Map;

    invoke-interface {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mEventSucceed:Z

    :cond_0
    const-string v0, "exectime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mExecuteTime:D

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mExecuteTime:D

    :cond_2
    :goto_0
    const-string v0, "memory"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mMemoryUsage:Ljava/lang/String;

    :cond_3
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mErrorCode:I

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mErrorCode:I

    :cond_5
    :goto_1
    return-void
.end method

.method private static convertErrorFromCode(I)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;
    .locals 2

    sget-object v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->ERROR_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$FatalError;

    invoke-direct {v0, p0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$FatalError;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;",
            ">;)",
            "Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getError()Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mErrorCode:I

    invoke-static {v0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->convertErrorFromCode(I)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mErrorCode:I

    return v0
.end method

.method public getExecuteTime()D
    .locals 2

    iget-wide v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mExecuteTime:D

    return-wide v0
.end method

.method public getMemoryUsage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mMemoryUsage:Ljava/lang/String;

    return-object v0
.end method

.method public isEventSucceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mEventSucceed:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mEventSucceed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->mErrorCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
