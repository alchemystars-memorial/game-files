.class Lcom/centauri/api/UnityPayHelper$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->centauriSdkGetGrnProductInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final val$req:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$15;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$15;->val$req:Ljava/lang/String;

    invoke-static {v0}, Lcom/centauri/api/UnityPayHelper;->_GetProductInfoForGarena(Ljava/lang/String;)V

    return-void
.end method
