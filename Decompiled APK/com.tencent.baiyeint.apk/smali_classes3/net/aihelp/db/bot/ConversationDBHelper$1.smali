.class final Lnet/aihelp/db/bot/ConversationDBHelper$1;
.super Ljava/lang/Object;
.source "ConversationDBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/db/bot/ConversationDBHelper;->storeElvaMsg(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rawResponse:Ljava/lang/String;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/db/bot/ConversationDBHelper$1;->val$timeStamp:J

    iput-object p3, p0, Lnet/aihelp/db/bot/ConversationDBHelper$1;->val$rawResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lnet/aihelp/db/bot/controller/ElvaDBController;->getInstance()Lnet/aihelp/db/bot/controller/ElvaDBController;

    move-result-object v0

    iget-wide v1, p0, Lnet/aihelp/db/bot/ConversationDBHelper$1;->val$timeStamp:J

    iget-object v3, p0, Lnet/aihelp/db/bot/ConversationDBHelper$1;->val$rawResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lnet/aihelp/db/bot/controller/ElvaDBController;->storeElvaBotMsg(JLjava/lang/String;)V

    return-void
.end method
