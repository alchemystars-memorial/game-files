.class public interface abstract Lcom/enq/transceiver/transceivertool/local/ILocalTask;
.super Ljava/lang/Object;
.source "ILocalTask.java"


# virtual methods
.method public abstract checkParam(Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I
.end method
