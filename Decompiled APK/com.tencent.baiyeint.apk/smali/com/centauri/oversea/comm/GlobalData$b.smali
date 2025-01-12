.class public final Lcom/centauri/oversea/comm/GlobalData$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/GlobalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/centauri/oversea/comm/GlobalData;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/centauri/oversea/comm/GlobalData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/GlobalData;-><init>(Lcom/centauri/oversea/comm/GlobalData$a;)V

    sput-object v0, Lcom/centauri/oversea/comm/GlobalData$b;->a:Lcom/centauri/oversea/comm/GlobalData;

    return-void
.end method
