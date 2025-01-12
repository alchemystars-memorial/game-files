.class public Lnet/aihelp/data/model/cs/EvaluationEntity;
.super Ljava/lang/Object;
.source "EvaluationEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/cs/EvaluationEntity$DetailBean;
    }
.end annotation


# instance fields
.field private detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/EvaluationEntity$DetailBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/aihelp/core/net/json/GenericType;
        value = Lnet/aihelp/data/model/cs/EvaluationEntity$DetailBean;
    .end annotation
.end field

.field private detailStar:I

.field private dislike:Ljava/lang/String;

.field private like:Ljava/lang/String;

.field private new_cov:Ljava/lang/String;

.field private tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detailStar:I

    const-string v0, "\u975e\u5e38\u6ee1\u610f"

    iput-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->like:Ljava/lang/String;

    const-string v0, "\u5f88\u4e0d\u6ee1\u610f"

    iput-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->dislike:Ljava/lang/String;

    const-string v0, "\u8bf7\u5bf9\u6211\u4eec\u7684\u670d\u52a1\u8fdb\u884c\u8bc4\u4ef7"

    iput-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->tip:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detail:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/EvaluationEntity$DetailBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detail:Ljava/util/List;

    return-object v0
.end method

.method public getDetailStar()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detailStar:I

    return v0
.end method

.method public getDislike()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->dislike:Ljava/lang/String;

    return-object v0
.end method

.method public getLike()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->like:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_cov()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->new_cov:Ljava/lang/String;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/EvaluationEntity$DetailBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detail:Ljava/util/List;

    return-void
.end method

.method public setDetailStar(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->detailStar:I

    return-void
.end method

.method public setDislike(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->dislike:Ljava/lang/String;

    return-void
.end method

.method public setLike(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->like:Ljava/lang/String;

    return-void
.end method

.method public setNew_cov(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->new_cov:Ljava/lang/String;

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/EvaluationEntity;->tip:Ljava/lang/String;

    return-void
.end method
