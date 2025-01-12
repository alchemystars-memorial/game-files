.class public Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;
.super Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;
.source "DmmUserStRequestCreateHelper.java"


# static fields
.field public static final USER_ST_COMMAND:Ljava/lang/String; = "User.St"


# instance fields
.field private mUniqueID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;->mUniqueID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "User.St"

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;->mUniqueID:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const-string v2, "exploit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/DmmApiResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/dmm/android/api/mobile/user/st/DmmUserStResponse;

    return-object v0
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;->mUniqueID:Ljava/lang/String;

    return-void
.end method
