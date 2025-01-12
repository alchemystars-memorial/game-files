.class public Lcom/intlgame/api/update/INTLUpdateOptionalRepoInitResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLUpdateOptionalRepoInitResult.java"


# instance fields
.field public action_type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "action_type"
    .end annotation
.end field

.field public repo_id_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "repo_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method
