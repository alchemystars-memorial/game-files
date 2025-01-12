.class public Lcom/centauri/oversea/newapi/params/MallParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/params/MallParams$Builder;
    }
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private currencyType:Ljava/lang/String;

.field private isAutoPay:Z

.field private payChannel:Ljava/lang/String;

.field private resData:[B

.field private resId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->currencyType:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->country:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->isAutoPay:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/centauri/oversea/newapi/params/MallParams$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/MallParams;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->currencyType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->country:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/centauri/oversea/newapi/params/MallParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->payChannel:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/centauri/oversea/newapi/params/MallParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->isAutoPay:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/centauri/oversea/newapi/params/MallParams;I)I
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->resId:I

    return p1
.end method

.method public static synthetic access$602(Lcom/centauri/oversea/newapi/params/MallParams;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/MallParams;->resData:[B

    return-object p1
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->currencyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->resData:[B

    return-object v0
.end method

.method public getResID()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->resId:I

    return v0
.end method

.method public isAutoPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/newapi/params/MallParams;->isAutoPay:Z

    return v0
.end method
