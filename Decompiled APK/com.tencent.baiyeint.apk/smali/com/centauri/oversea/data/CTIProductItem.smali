.class public Lcom/centauri/oversea/data/CTIProductItem;
.super Ljava/lang/Object;


# instance fields
.field public name:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->price:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIProductItem;->num:Ljava/lang/String;

    return-void
.end method
