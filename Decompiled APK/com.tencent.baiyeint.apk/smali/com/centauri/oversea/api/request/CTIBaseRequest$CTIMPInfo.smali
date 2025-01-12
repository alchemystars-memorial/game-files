.class public Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/api/request/CTIBaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CTIMPInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8c21fb381b55110L


# instance fields
.field public discountType:Ljava/lang/String;

.field public discountUrl:Ljava/lang/String;

.field public discoutId:Ljava/lang/String;

.field public drmInfo:Ljava/lang/String;

.field public extras:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;

.field public productid:Ljava/lang/String;

.field public final this$0:Lcom/centauri/oversea/api/request/CTIBaseRequest;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/api/request/CTIBaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->this$0:Lcom/centauri/oversea/api/request/CTIBaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountType:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discoutId:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->extras:Ljava/lang/String;

    return-void
.end method
