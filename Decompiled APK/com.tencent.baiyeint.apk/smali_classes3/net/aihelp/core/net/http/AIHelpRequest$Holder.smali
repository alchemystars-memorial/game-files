.class Lnet/aihelp/core/net/http/AIHelpRequest$Holder;
.super Ljava/lang/Object;
.source "AIHelpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/http/AIHelpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/aihelp/core/net/http/AIHelpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/net/http/AIHelpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;-><init>(Lnet/aihelp/core/net/http/AIHelpRequest$1;)V

    sput-object v0, Lnet/aihelp/core/net/http/AIHelpRequest$Holder;->INSTANCE:Lnet/aihelp/core/net/http/AIHelpRequest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/aihelp/core/net/http/AIHelpRequest;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/http/AIHelpRequest$Holder;->INSTANCE:Lnet/aihelp/core/net/http/AIHelpRequest;

    return-object v0
.end method
