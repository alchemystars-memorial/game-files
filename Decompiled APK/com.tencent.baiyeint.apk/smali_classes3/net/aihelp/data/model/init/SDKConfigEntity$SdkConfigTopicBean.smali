.class public Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;
.super Ljava/lang/Object;
.source "SDKConfigEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/init/SDKConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkConfigTopicBean"
.end annotation


# instance fields
.field private Topic_Content:Ljava/lang/String;

.field private Topic_Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Type:I

    iput-object p2, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTopic_Content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Content:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic_Type()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Type:I

    return v0
.end method

.method public setTopic_Content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Content:Ljava/lang/String;

    return-void
.end method

.method public setTopic_Type(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigTopicBean;->Topic_Type:I

    return-void
.end method
