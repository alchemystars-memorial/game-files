.class public Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLSysFriendCustomPadInfo.java"


# static fields
.field public static final FRIEND_RULE_EXCLUDE:I = 0x1

.field public static final FRIEND_RULE_INCLUDE:I = 0x2

.field public static final FRIEND_RULE_NONE:I


# instance fields
.field public contains_:Ljava/util/List;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "java.lang.String"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "contains"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public match_:Ljava/util/List;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "java.lang.String"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "match"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rule_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "rule"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTLSysFriendCustomPadInfo{rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->rule_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contains_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->contains_:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", match_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->match_:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
