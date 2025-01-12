.class public final enum Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

.field public static final enum DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

.field public static final enum MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

.field public static final enum NETWORK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;


# instance fields
.field final debugColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    new-instance v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const-string v3, "DISK"

    const/4 v4, 0x1

    const v5, -0xffff01

    invoke-direct {v1, v3, v4, v5}, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    new-instance v3, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const-string v5, "NETWORK"

    const/4 v6, 0x2

    const/high16 v7, -0x10000

    invoke-direct {v3, v5, v6, v7}, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->NETWORK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->$VALUES:[Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

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

    iput p3, p0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->debugColor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;
    .locals 1

    const-class v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;
    .locals 1

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->$VALUES:[Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {v0}, [Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    return-object v0
.end method
