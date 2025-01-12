.class Lcom/intlgame/tools/IT$3;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "IT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intlgame/core/INTLInnerCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$bitmapHashMap:Ljava/util/HashMap;

.field final synthetic val$callback:Lcom/intlgame/core/INTLInnerCallback;

.field final synthetic val$curIndex:I

.field final synthetic val$isCanCallbackNow:[Z

.field final synthetic val$length:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/core/INTLInnerCallback;Ljava/util/HashMap;Ljava/lang/String;[ZII)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/IT$3;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    iput-object p2, p0, Lcom/intlgame/tools/IT$3;->val$bitmapHashMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/intlgame/tools/IT$3;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/tools/IT$3;->val$isCanCallbackNow:[Z

    iput p5, p0, Lcom/intlgame/tools/IT$3;->val$curIndex:I

    iput p6, p0, Lcom/intlgame/tools/IT$3;->val$length:I

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/intlgame/tools/IT$3;->onNotify([B)V

    return-void
.end method

.method public onNotify([B)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/tools/IT$3;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    invoke-virtual {v1}, Lcom/intlgame/core/INTLInnerCallback;->getInvokeSeqId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] image from url is empty"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intlgame/tools/IT$3;->val$bitmapHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/intlgame/tools/IT$3;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/intlgame/tools/IT$3;->val$isCanCallbackNow:[Z

    iget v1, p0, Lcom/intlgame/tools/IT$3;->val$curIndex:I

    const/4 v2, 0x1

    aput-boolean v2, p1, v1

    move p1, v0

    :goto_1
    iget v1, p0, Lcom/intlgame/tools/IT$3;->val$length:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/intlgame/tools/IT$3;->val$isCanCallbackNow:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/intlgame/tools/IT$3;->val$isCanCallbackNow:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/intlgame/tools/IT$3;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    iget-object v0, p0, Lcom/intlgame/tools/IT$3;->val$bitmapHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/intlgame/core/INTLInnerCallback;->onNotify(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 2

    iget-object p1, p0, Lcom/intlgame/tools/IT$3;->val$isCanCallbackNow:[Z

    iget v0, p0, Lcom/intlgame/tools/IT$3;->val$curIndex:I

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget v0, p0, Lcom/intlgame/tools/IT$3;->val$length:I

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/IT$3;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    iget-object v0, p0, Lcom/intlgame/tools/IT$3;->val$bitmapHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/intlgame/core/INTLInnerCallback;->onNotify(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
