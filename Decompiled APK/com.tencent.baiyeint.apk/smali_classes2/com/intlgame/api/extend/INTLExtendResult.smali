.class public Lcom/intlgame/api/extend/INTLExtendResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLExtendResult.java"


# instance fields
.field public channel_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "channel"
    .end annotation
.end field

.field public extend_method_name_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extend_method_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iput-object p3, p0, Lcom/intlgame/api/extend/INTLExtendResult;->channel_:Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/api/extend/INTLExtendResult;->extend_method_name_:Ljava/lang/String;

    return-void
.end method
