.class public Lnet/aihelp/ui/helper/AttachmentPickerFile;
.super Ljava/lang/Object;
.source "AttachmentPickerFile.java"


# instance fields
.field public attachmentType:I

.field public filePath:Ljava/lang/String;

.field public isFileCompressionAndCopyingDone:Z

.field public final originalFileName:Ljava/lang/String;

.field public final originalFileSize:Ljava/lang/Long;

.field public transientUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->transientUri:Landroid/net/Uri;

    iput-object p2, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->originalFileName:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->filePath:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->originalFileName:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/helper/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    return-void
.end method
