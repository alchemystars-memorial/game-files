.class public Lcom/centauri/oversea/data/Cfg;
.super Ljava/lang/Object;


# instance fields
.field public mDetectDoain:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mIpList:[Ljava/lang/String;

.field public mReportDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/Cfg;->mReportDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/Cfg;->mDetectDoain:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/data/Cfg;->mDomain:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/oversea/data/Cfg;->mIpList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/data/Cfg;->mDomain:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/oversea/data/Cfg;->mIpList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/oversea/data/Cfg;->mReportDomain:Ljava/lang/String;

    iput-object p4, p0, Lcom/centauri/oversea/data/Cfg;->mDetectDoain:Ljava/lang/String;

    return-void
.end method
