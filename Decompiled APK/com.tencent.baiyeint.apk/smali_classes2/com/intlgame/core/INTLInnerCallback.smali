.class public abstract Lcom/intlgame/core/INTLInnerCallback;
.super Ljava/lang/Object;
.source "INTLInnerCallback.java"

# interfaces
.implements Lcom/intlgame/api/INTLResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/intlgame/api/INTLResultCallback<",
        "Lcom/intlgame/api/INTLResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInvokeSeqId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/intlgame/core/INTLInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/core/INTLInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInvokeSeqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/core/INTLInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onNotify(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
