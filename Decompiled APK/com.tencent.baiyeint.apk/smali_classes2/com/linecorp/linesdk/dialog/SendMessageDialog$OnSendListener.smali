.class public interface abstract Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;
.super Ljava/lang/Object;
.source "SendMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/SendMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSendListener"
.end annotation


# virtual methods
.method public abstract onSendFailure(Landroid/content/DialogInterface;)V
.end method

.method public abstract onSendSuccess(Landroid/content/DialogInterface;)V
.end method
