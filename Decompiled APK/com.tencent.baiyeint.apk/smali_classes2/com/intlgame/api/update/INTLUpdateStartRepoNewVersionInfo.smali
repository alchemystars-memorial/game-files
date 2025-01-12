.class public Lcom/intlgame/api/update/INTLUpdateStartRepoNewVersionInfo;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLUpdateStartRepoNewVersionInfo.java"


# instance fields
.field public action_type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "action_type"
    .end annotation
.end field

.field public game_defined_str_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "game_defined_str"
    .end annotation
.end field

.field public method_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "methodID"
    .end annotation
.end field

.field public need_download_size_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "need_download_size"
    .end annotation
.end field

.field public new_version_type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "new_version_type"
    .end annotation
.end field

.field public version_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method
