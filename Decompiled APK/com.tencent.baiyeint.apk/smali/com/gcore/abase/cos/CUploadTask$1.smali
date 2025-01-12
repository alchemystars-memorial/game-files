.class Lcom/gcore/abase/cos/CUploadTask$1;
.super Ljava/lang/Object;
.source "CUploadTask.java"

# interfaces
.implements Lcom/gcore/abase/cos/CosResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gcore/abase/cos/CUploadTask;->upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcore/abase/cos/CUploadTask;


# direct methods
.method constructor <init>(Lcom/gcore/abase/cos/CUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/cos/CUploadTask$1;->this$0:Lcom/gcore/abase/cos/CUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 6

    iget-object v0, p0, Lcom/gcore/abase/cos/CUploadTask$1;->this$0:Lcom/gcore/abase/cos/CUploadTask;

    invoke-static {v0}, Lcom/gcore/abase/cos/CUploadTask;->access$000(Lcom/gcore/abase/cos/CUploadTask;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/gcore/abase/cos/CUploadTask$1;->this$0:Lcom/gcore/abase/cos/CUploadTask;

    invoke-static {v3}, Lcom/gcore/abase/cos/CUploadTask;->access$100(Lcom/gcore/abase/cos/CUploadTask;)J

    move-result-wide v3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/gcore/abase/cos/CUploadTask;->nativeOnUploadFinished(JJI)V

    return-void
.end method
