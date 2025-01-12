.class Lnet/aihelp/core/util/concurrent/ApiExecutorFactory$LazyHolder;
.super Ljava/lang/Object;
.source "ApiExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final HANDLER_EXECUTOR:Lnet/aihelp/core/util/concurrent/ApiExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

    const-string v1, "AIHelp-Worker-Thread"

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory$LazyHolder;->HANDLER_EXECUTOR:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
