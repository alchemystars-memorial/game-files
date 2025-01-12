.class Lcom/intlgame/extend/FirebaseExtend$1;
.super Ljava/lang/Object;
.source "FirebaseExtend.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/extend/FirebaseExtend;->getInstanceIDAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/extend/FirebaseExtend;

.field final synthetic val$result:Lcom/intlgame/api/extend/INTLExtendResult;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/extend/FirebaseExtend;Lcom/intlgame/api/extend/INTLExtendResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/extend/FirebaseExtend$1;->this$0:Lcom/intlgame/extend/FirebaseExtend;

    iput-object p2, p0, Lcom/intlgame/extend/FirebaseExtend$1;->val$result:Lcom/intlgame/api/extend/INTLExtendResult;

    iput-object p3, p0, Lcom/intlgame/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/intlgame/extend/FirebaseExtend$1;->val$result:Lcom/intlgame/api/extend/INTLExtendResult;

    iget-object v0, p0, Lcom/intlgame/extend/FirebaseExtend$1;->val$seqID:Ljava/lang/String;

    const/16 v1, 0x515

    invoke-static {v1, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
