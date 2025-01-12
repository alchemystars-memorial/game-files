.class public Lnet/aihelp/data/model/init/SDKConfigEntity;
.super Ljava/lang/Object;
.source "SDKConfigEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;,
        Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;,
        Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;,
        Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;
    }
.end annotation


# instance fields
.field private SdkConfig:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;

.field private SdkConfigImg:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;

.field private SdkConfigTopic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/aihelp/core/net/json/GenericType;
        value = Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;
    .end annotation
.end field

.field private SdkText:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdkConfig()Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfig:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;

    return-object v0
.end method

.method public getSdkConfigImg()Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfigImg:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;

    return-object v0
.end method

.method public getSdkConfigTopic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfigTopic:Ljava/util/List;

    return-object v0
.end method

.method public getSdkText()Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkText:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;

    return-object v0
.end method

.method public setSdkConfig(Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfig:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;

    return-void
.end method

.method public setSdkConfigImg(Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfigImg:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;

    return-void
.end method

.method public setSdkConfigTopic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkConfigTopic:Ljava/util/List;

    return-void
.end method

.method public setSdkText(Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity;->SdkText:Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;

    return-void
.end method
