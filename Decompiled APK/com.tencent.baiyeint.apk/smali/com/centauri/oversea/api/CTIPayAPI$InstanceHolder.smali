.class Lcom/centauri/oversea/api/CTIPayAPI$InstanceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/api/CTIPayAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field private static instance:Lcom/centauri/oversea/api/CTIPayAPI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/api/CTIPayAPI;

    invoke-direct {v0}, Lcom/centauri/oversea/api/CTIPayAPI;-><init>()V

    sput-object v0, Lcom/centauri/oversea/api/CTIPayAPI$InstanceHolder;->instance:Lcom/centauri/oversea/api/CTIPayAPI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/centauri/oversea/api/CTIPayAPI;
    .locals 1

    sget-object v0, Lcom/centauri/oversea/api/CTIPayAPI$InstanceHolder;->instance:Lcom/centauri/oversea/api/CTIPayAPI;

    return-object v0
.end method
