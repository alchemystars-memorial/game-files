.class public interface abstract Lcom/intlgame/webview/WebViewAIDL;
.super Ljava/lang/Object;
.source "WebViewAIDL.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/webview/WebViewAIDL$Stub;,
        Lcom/intlgame/webview/WebViewAIDL$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.intlgame.webview.WebViewAIDL"


# virtual methods
.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeLog(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
