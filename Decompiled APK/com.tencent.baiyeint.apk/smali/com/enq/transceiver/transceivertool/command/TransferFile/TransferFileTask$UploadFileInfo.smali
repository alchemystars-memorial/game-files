.class Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;
.super Ljava/lang/Object;
.source "TransferFileTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadFileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private fileHandle:Ljava/io/File;

.field private modifyTime:J


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->modifyTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->fileHandle:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)I
    .locals 4

    iget-wide v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->modifyTime:J

    iget-wide v2, p1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->modifyTime:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    invoke-virtual {p0, p1}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->compareTo(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)I

    move-result p1

    return p1
.end method
