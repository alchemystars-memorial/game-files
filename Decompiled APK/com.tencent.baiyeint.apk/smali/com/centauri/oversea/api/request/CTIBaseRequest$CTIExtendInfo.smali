.class public Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/api/request/CTIBaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CTIExtendInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4ac5e85337650f74L


# instance fields
.field public iChannel:Ljava/lang/String;

.field public isShowListOtherNum:Z

.field public isShowNum:Z

.field public final this$0:Lcom/centauri/oversea/api/request/CTIBaseRequest;

.field public unit:Ljava/lang/String;

.field public userExtend:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/api/request/CTIBaseRequest;)V
    .locals 1

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->this$0:Lcom/centauri/oversea/api/request/CTIBaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->unit:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowNum:Z

    iput-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowListOtherNum:Z

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->userExtend:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->iChannel:Ljava/lang/String;

    return-void
.end method
