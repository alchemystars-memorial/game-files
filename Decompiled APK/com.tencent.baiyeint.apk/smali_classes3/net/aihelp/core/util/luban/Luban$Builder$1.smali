.class Lnet/aihelp/core/util/luban/Luban$Builder$1;
.super Lnet/aihelp/core/util/luban/InputStreamAdapter;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/luban/Luban$Builder;->load(Ljava/io/File;)Lnet/aihelp/core/util/luban/Luban$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/luban/Luban$Builder;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/luban/Luban$Builder;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder$1;->this$0:Lnet/aihelp/core/util/luban/Luban$Builder;

    iput-object p2, p0, Lnet/aihelp/core/util/luban/Luban$Builder$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lnet/aihelp/core/util/luban/InputStreamAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInternal()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban$Builder$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
