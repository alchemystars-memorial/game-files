.class public Lcom/intlgame/tools/INTLToolsResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLToolsResult.java"


# instance fields
.field public link_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "link"
    .end annotation
.end field

.field public short_url_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method
