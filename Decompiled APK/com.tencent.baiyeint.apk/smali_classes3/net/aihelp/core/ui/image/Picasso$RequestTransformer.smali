.class public interface abstract Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestTransformer"
.end annotation


# static fields
.field public static final IDENTITY:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/ui/image/Picasso$RequestTransformer$1;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/Picasso$RequestTransformer$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;->IDENTITY:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    return-void
.end method


# virtual methods
.method public abstract transformRequest(Lnet/aihelp/core/ui/image/Request;)Lnet/aihelp/core/ui/image/Request;
.end method
