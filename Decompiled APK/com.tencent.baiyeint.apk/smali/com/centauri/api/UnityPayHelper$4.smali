.class Lcom/centauri/api/UnityPayHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final val$bizType:Ljava/lang/String;

.field public final val$req:Ljava/lang/String;

.field public final val$reqType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$4;->val$reqType:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$4;->val$bizType:Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/api/UnityPayHelper$4;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$4;->val$reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$4;->val$bizType:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/api/UnityPayHelper$4;->val$req:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/centauri/api/UnityPayHelper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
