.class public interface abstract Lcom/intlgame/view/ToolBarWebView$ToolBarListener;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Lcom/intlgame/view/ShareView$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/view/ToolBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ToolBarListener"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onJsPrompt(Ljava/lang/String;)Z
.end method

.method public abstract onProgress(I)V
.end method
