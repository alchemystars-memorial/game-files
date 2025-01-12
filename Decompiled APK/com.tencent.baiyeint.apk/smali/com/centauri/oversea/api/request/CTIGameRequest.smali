.class public Lcom/centauri/oversea/api/request/CTIGameRequest;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;


# static fields
.field private static final serialVersionUID:J = -0x142b4746c3a9c548L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    const-string v0, "save"

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mOldType:I

    return-void
.end method
