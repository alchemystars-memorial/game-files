.class final enum Lnet/aihelp/ui/chunk/BitmapType$1;
.super Lnet/aihelp/ui/chunk/BitmapType;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/chunk/BitmapType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/chunk/BitmapType;-><init>(Ljava/lang/String;ILnet/aihelp/ui/chunk/BitmapType$1;)V

    return-void
.end method


# virtual methods
.method public createChunk(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->parse([B)Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p1

    return-object p1
.end method
