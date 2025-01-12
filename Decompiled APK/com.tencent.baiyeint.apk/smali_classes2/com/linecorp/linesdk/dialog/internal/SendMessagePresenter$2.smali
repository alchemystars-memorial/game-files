.class Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;
.super Ljava/util/ArrayList;
.source "SendMessagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->sendMessage(Lcom/linecorp/linesdk/message/MessageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/linecorp/linesdk/message/MessageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

.field final synthetic val$messageData:Lcom/linecorp/linesdk/message/MessageData;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;Lcom/linecorp/linesdk/message/MessageData;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;->this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;->val$messageData:Lcom/linecorp/linesdk/message/MessageData;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
