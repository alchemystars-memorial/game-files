.class Lnet/aihelp/core/util/bus/EventBus$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/bus/EventBus;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/bus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/EventBus$1;->this$0:Lnet/aihelp/core/util/bus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/util/bus/EventBus$1;->initialValue()Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;-><init>()V

    return-object v0
.end method
