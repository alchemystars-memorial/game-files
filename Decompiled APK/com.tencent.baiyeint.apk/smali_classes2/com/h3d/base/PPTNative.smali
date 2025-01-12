.class public Lcom/h3d/base/PPTNative;
.super Ljava/lang/Object;
.source "PPTNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PPTNative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native InitAssetManager(Landroid/content/res/AssetManager;)V
.end method
