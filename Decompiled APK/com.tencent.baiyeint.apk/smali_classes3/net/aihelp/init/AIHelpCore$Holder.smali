.class Lnet/aihelp/init/AIHelpCore$Holder;
.super Ljava/lang/Object;
.source "AIHelpCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/init/AIHelpCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/aihelp/init/AIHelpCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/init/AIHelpCore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/init/AIHelpCore;-><init>(Lnet/aihelp/init/AIHelpCore$1;)V

    sput-object v0, Lnet/aihelp/init/AIHelpCore$Holder;->INSTANCE:Lnet/aihelp/init/AIHelpCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lnet/aihelp/init/AIHelpCore;
    .locals 1

    sget-object v0, Lnet/aihelp/init/AIHelpCore$Holder;->INSTANCE:Lnet/aihelp/init/AIHelpCore;

    return-object v0
.end method
