.class public Lcom/gcore/abase/cos/CUploadTask;
.super Ljava/lang/Object;
.source "CUploadTask.java"


# instance fields
.field private mCListener:J

.field private mCTask:J

.field private task:Lcom/gcore/abase/cos/CosUploadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gcore/abase/cos/CosUploadTask;

    invoke-direct {v0}, Lcom/gcore/abase/cos/CosUploadTask;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/cos/CUploadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/cos/CUploadTask;->mCTask:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/gcore/abase/cos/CUploadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/cos/CUploadTask;->mCListener:J

    return-wide v0
.end method


# virtual methods
.method public native nativeOnUploadFinished(JJI)V
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
    .locals 0

    iput-wide p6, p0, Lcom/gcore/abase/cos/CUploadTask;->mCListener:J

    iput-wide p8, p0, Lcom/gcore/abase/cos/CUploadTask;->mCTask:J

    iget-object p6, p0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    invoke-virtual {p6, p5}, Lcom/gcore/abase/cos/CosUploadTask;->setCredentialInfo(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    new-instance p6, Lcom/gcore/abase/cos/CUploadTask$1;

    invoke-direct {p6, p0}, Lcom/gcore/abase/cos/CUploadTask$1;-><init>(Lcom/gcore/abase/cos/CUploadTask;)V

    invoke-virtual {p5, p6}, Lcom/gcore/abase/cos/CosUploadTask;->setResultListener(Lcom/gcore/abase/cos/CosResultListener;)V

    iget-object p5, p0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/gcore/abase/cos/CosUploadTask;->upload(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
