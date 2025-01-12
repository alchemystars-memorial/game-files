.class public Lcom/centauri/oversea/newapi/params/InitParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/InitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Lcom/centauri/oversea/newapi/params/InitParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/centauri/oversea/newapi/params/InitParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams;-><init>(Lcom/centauri/oversea/newapi/params/InitParams$1;)V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    return-void
.end method


# virtual methods
.method public build()Lcom/centauri/oversea/newapi/params/InitParams;
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0}, Lcom/centauri/oversea/newapi/params/InitParams;->access$800(Lcom/centauri/oversea/newapi/params/InitParams;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InitParams"

    const-string v1, "params are missed,please check init params"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    return-object v0
.end method

.method public setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$102(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setExtra(Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$702(Lcom/centauri/oversea/newapi/params/InitParams;Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    return-object p0
.end method

.method public setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$202(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setInAppMessage(Ljava/lang/Boolean;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$602(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$302(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$402(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->mParams:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams;->access$502(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
