.class Lcom/centauri/api/UnityPayHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->GetIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final val$channel:Ljava/lang/String;

.field public final val$mapProducts:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$3;->val$channel:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$3;->val$mapProducts:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$3;->val$channel:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$3;->val$mapProducts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/centauri/api/UnityPayHelper;->_GetIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
