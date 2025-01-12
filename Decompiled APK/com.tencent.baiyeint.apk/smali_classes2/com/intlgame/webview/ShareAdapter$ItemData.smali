.class public Lcom/intlgame/webview/ShareAdapter$ItemData;
.super Ljava/lang/Object;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field isShare:Z

.field shareIconResId:I

.field shareTitleResId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/webview/ShareAdapter$ItemData;->isShare:Z

    iput-object p1, p0, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/intlgame/webview/ShareAdapter$ItemData;->isShare:Z

    return-void
.end method
