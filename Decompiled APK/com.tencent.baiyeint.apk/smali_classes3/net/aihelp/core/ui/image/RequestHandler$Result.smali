.class public final Lnet/aihelp/core/ui/image/RequestHandler$Result;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final exifOrientation:I

.field private final loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

.field private final source:Lokio/Source;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 2

    const-string v0, "bitmap == null"

    invoke-static {p1, v0}, Lnet/aihelp/core/ui/image/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->source:Lokio/Source;

    const-string p1, "loadedFrom == null"

    invoke-static {p3, p1}, Lnet/aihelp/core/ui/image/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    iput p4, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->exifOrientation:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 2

    const-string v0, "source == null"

    invoke-static {p1, v0}, Lnet/aihelp/core/ui/image/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Source;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;I)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getExifOrientation()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->exifOrientation:I

    return v0
.end method

.method public getLoadedFrom()Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    return-object v0
.end method

.method public getSource()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestHandler$Result;->source:Lokio/Source;

    return-object v0
.end method
