.class public Lcom/centauri/oversea/newapi/params/MallParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/MallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private params:Lcom/centauri/oversea/newapi/params/MallParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/centauri/oversea/newapi/params/MallParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newapi/params/MallParams;-><init>(Lcom/centauri/oversea/newapi/params/MallParams$1;)V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    return-void
.end method


# virtual methods
.method public build()Lcom/centauri/oversea/newapi/params/MallParams;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$202(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$102(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIsAutoPay(Z)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$402(Lcom/centauri/oversea/newapi/params/MallParams;Z)Z

    return-object p0
.end method

.method public setPayChannel(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$302(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setResData([B)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$602(Lcom/centauri/oversea/newapi/params/MallParams;[B)[B

    return-object p0
.end method

.method public setResID(I)Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams$Builder;->params:Lcom/centauri/oversea/newapi/params/MallParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/MallParams;->access$502(Lcom/centauri/oversea/newapi/params/MallParams;I)I

    return-object p0
.end method
