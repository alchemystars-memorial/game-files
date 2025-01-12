.class Lnet/aihelp/core/util/luban/Luban$Builder$3;
.super Lnet/aihelp/core/util/luban/InputStreamAdapter;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/luban/Luban$Builder;->load(Landroid/net/Uri;)Lnet/aihelp/core/util/luban/Luban$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/luban/Luban$Builder;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/luban/Luban$Builder;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder$3;->this$0:Lnet/aihelp/core/util/luban/Luban$Builder;

    iput-object p2, p0, Lnet/aihelp/core/util/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lnet/aihelp/core/util/luban/InputStreamAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

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

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder$3;->this$0:Lnet/aihelp/core/util/luban/Luban$Builder;

    invoke-static {v0}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$900(Lnet/aihelp/core/util/luban/Luban$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
