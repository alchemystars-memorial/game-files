.class Lcom/intlgame/foundation/NDKHelper$1;
.super Ljava/lang/Object;
.source "NDKHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/foundation/NDKHelper;->runOnUIThread(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/foundation/NDKHelper;

.field final synthetic val$callbackPtr:J

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/intlgame/foundation/NDKHelper;JI)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/foundation/NDKHelper$1;->this$0:Lcom/intlgame/foundation/NDKHelper;

    iput-wide p2, p0, Lcom/intlgame/foundation/NDKHelper$1;->val$callbackPtr:J

    iput p4, p0, Lcom/intlgame/foundation/NDKHelper$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/intlgame/foundation/NDKHelper$1;->this$0:Lcom/intlgame/foundation/NDKHelper;

    iget-wide v1, p0, Lcom/intlgame/foundation/NDKHelper$1;->val$callbackPtr:J

    iget v3, p0, Lcom/intlgame/foundation/NDKHelper$1;->val$taskId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/intlgame/foundation/NDKHelper;->runOnUiThreadHandler(JI)V

    return-void
.end method
