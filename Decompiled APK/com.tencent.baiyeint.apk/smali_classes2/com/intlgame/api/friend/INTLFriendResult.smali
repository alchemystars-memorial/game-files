.class public Lcom/intlgame/api/friend/INTLFriendResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLFriendResult.java"


# instance fields
.field public extra:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extra"
    .end annotation
.end field

.field public friend_info_list_:Ljava/util/ArrayList;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "INTLPersonInfo"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "friendInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intlgame/api/friend/INTLPersonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
