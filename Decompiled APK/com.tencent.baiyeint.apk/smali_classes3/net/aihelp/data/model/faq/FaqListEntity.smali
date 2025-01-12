.class public Lnet/aihelp/data/model/faq/FaqListEntity;
.super Ljava/lang/Object;
.source "FaqListEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/data/model/faq/FaqListEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final FAQ_DISPLAY_HOT_TOPICS:I = 0x6

.field public static final FAQ_DISPLAY_NOTIFICATION:I = 0x5

.field public static final FAQ_DISPLAY_QUESTION_LIST:I = 0x3

.field public static final FAQ_DISPLAY_SEARCH:I = 0x4

.field public static final FAQ_DISPLAY_SECTION:I = 0x1

.field public static final FAQ_DISPLAY_SUB_SECTION:I = 0x2


# instance fields
.field private displayType:I

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isHidden:Z

.field private order:I

.field private query:Ljava/lang/String;

.field private sectionName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    iput-object p2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    iput-object p2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    iput-object p2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->query:Ljava/lang/String;

    iput-object p5, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->iconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->compareTo(Lnet/aihelp/data/model/faq/FaqListEntity;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/data/model/faq/FaqListEntity;)I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->order:I

    iget p1, p1, Lnet/aihelp/data/model/faq/FaqListEntity;->order:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDisplayType()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->order:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->isHidden:Z

    return v0
.end method

.method public setDisplayType(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->isHidden:Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->order:I

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->query:Ljava/lang/String;

    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->sectionName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaqListEntity{displayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->displayType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", query=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->query:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", order="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->order:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sectionTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/data/model/faq/FaqListEntity;->sectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
