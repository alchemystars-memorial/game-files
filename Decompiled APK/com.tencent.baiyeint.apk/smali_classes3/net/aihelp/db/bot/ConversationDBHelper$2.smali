.class final Lnet/aihelp/db/bot/ConversationDBHelper$2;
.super Ljava/lang/Object;
.source "ConversationDBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/db/bot/ConversationDBHelper;->clearElvaMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lnet/aihelp/db/bot/controller/ElvaDBController;->getInstance()Lnet/aihelp/db/bot/controller/ElvaDBController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/db/bot/controller/ElvaDBController;->clearElvaMsg()V

    return-void
.end method
