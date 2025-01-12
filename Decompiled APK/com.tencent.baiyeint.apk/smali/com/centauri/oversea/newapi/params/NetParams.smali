.class public Lcom/centauri/oversea/newapi/params/NetParams;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/params/NetParams$Builder;,
        Lcom/centauri/oversea/newapi/params/NetParams$MP;
    }
.end annotation


# static fields
.field public static final GET_SHORT_OPENID:Ljava/lang/String; = "get_short_openid"

.field public static final MP:Ljava/lang/String; = "mp"


# instance fields
.field private mpReqType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$002(Lcom/centauri/oversea/newapi/params/NetParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/newapi/params/NetParams;)Z
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/NetParams;->checkParams()Z

    move-result p0

    return p0
.end method

.method private checkParams()Z
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    const-string v1, "mp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    const-string v1, "get_short_openid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getMpReqType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams;->mpReqType:Ljava/lang/String;

    return-object v0
.end method
