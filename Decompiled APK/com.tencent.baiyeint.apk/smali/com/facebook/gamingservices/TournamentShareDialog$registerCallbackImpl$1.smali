.class final Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$1;
.super Ljava/lang/Object;
.source "TournamentShareDialog.kt"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "resultCode",
        "",
        "data",
        "Landroid/content/Intent;",
        "onActivityResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

.field final synthetic this$0:Lcom/facebook/gamingservices/TournamentShareDialog;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$1;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$1;->$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$1;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {v0}, Lcom/facebook/gamingservices/TournamentShareDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$1;->$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p1

    return p1
.end method
