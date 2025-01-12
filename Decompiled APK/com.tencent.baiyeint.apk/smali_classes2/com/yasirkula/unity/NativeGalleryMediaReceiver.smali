.class public interface abstract Lcom/yasirkula/unity/NativeGalleryMediaReceiver;
.super Ljava/lang/Object;
.source "NativeGalleryMediaReceiver.java"


# virtual methods
.method public abstract OnMediaReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract OnMultipleMediaReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation
.end method
