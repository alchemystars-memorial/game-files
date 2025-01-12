.class public Lcom/centauri/oversea/api/request/CTIGoodsRequest;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;


# static fields
.field private static final serialVersionUID:J = -0x3c0bbece3654db26L


# instance fields
.field public goodsTokenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    const-string v0, "bg"

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mType:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mOldType:I

    return-void
.end method


# virtual methods
.method public getGoodsTokenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsTokenUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    return-void
.end method
