.class public Lnet/aihelp/data/model/op/OperateSection;
.super Ljava/lang/Object;
.source "OperateSection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/data/model/op/OperateSection;",
        ">;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private order:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateSection;->id:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/data/model/op/OperateSection;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateSection;->id:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/data/model/op/OperateSection;->title:Ljava/lang/String;

    iput p3, p0, Lnet/aihelp/data/model/op/OperateSection;->order:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/op/OperateSection;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/op/OperateSection;->compareTo(Lnet/aihelp/data/model/op/OperateSection;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/data/model/op/OperateSection;)I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/op/OperateSection;->order:I

    iget p1, p1, Lnet/aihelp/data/model/op/OperateSection;->order:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateSection;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateSection;->title:Ljava/lang/String;

    return-object v0
.end method
