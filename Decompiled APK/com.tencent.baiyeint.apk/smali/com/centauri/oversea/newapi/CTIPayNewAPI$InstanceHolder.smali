.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$InstanceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static instance:Lcom/centauri/oversea/newapi/CTIPayNewAPI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;)V

    sput-object v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$InstanceHolder;->instance:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
