.class public final enum Lnet/aihelp/core/ui/image/MemoryPolicy;
.super Ljava/lang/Enum;
.source "MemoryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/ui/image/MemoryPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/ui/image/MemoryPolicy;

.field public static final enum NO_CACHE:Lnet/aihelp/core/ui/image/MemoryPolicy;

.field public static final enum NO_STORE:Lnet/aihelp/core/ui/image/MemoryPolicy;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/aihelp/core/ui/image/MemoryPolicy;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/core/ui/image/MemoryPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->NO_CACHE:Lnet/aihelp/core/ui/image/MemoryPolicy;

    new-instance v1, Lnet/aihelp/core/ui/image/MemoryPolicy;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/aihelp/core/ui/image/MemoryPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/core/ui/image/MemoryPolicy;->NO_STORE:Lnet/aihelp/core/ui/image/MemoryPolicy;

    new-array v4, v5, [Lnet/aihelp/core/ui/image/MemoryPolicy;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/aihelp/core/ui/image/MemoryPolicy;->$VALUES:[Lnet/aihelp/core/ui/image/MemoryPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/aihelp/core/ui/image/MemoryPolicy;->index:I

    return-void
.end method

.method static shouldReadFromMemoryCache(I)Z
    .locals 1

    sget-object v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->NO_CACHE:Lnet/aihelp/core/ui/image/MemoryPolicy;

    iget v0, v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->index:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static shouldWriteToMemoryCache(I)Z
    .locals 1

    sget-object v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->NO_STORE:Lnet/aihelp/core/ui/image/MemoryPolicy;

    iget v0, v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->index:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/ui/image/MemoryPolicy;
    .locals 1

    const-class v0, Lnet/aihelp/core/ui/image/MemoryPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/ui/image/MemoryPolicy;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/ui/image/MemoryPolicy;
    .locals 1

    sget-object v0, Lnet/aihelp/core/ui/image/MemoryPolicy;->$VALUES:[Lnet/aihelp/core/ui/image/MemoryPolicy;

    invoke-virtual {v0}, [Lnet/aihelp/core/ui/image/MemoryPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/ui/image/MemoryPolicy;

    return-object v0
.end method
