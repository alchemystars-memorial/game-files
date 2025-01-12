.class interface abstract annotation Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LOG_LEVEL;
.super Ljava/lang/Object;
.source "IPCWebViewPresenter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "LOG_LEVEL"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final INFO:I = 0x2

.field public static final WARN:I = 0x3
