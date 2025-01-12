.class public Lnet/aihelp/config/OperationConfig$Builder;
.super Ljava/lang/Object;
.source "OperationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/config/OperationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private conversationConfig:Lnet/aihelp/config/ConversationConfig;

.field private conversationTitle:Ljava/lang/String;

.field private selectIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lnet/aihelp/config/OperationConfig$Builder;->selectIndex:I

    new-instance v0, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/config/OperationConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/config/OperationConfig;
    .locals 5

    new-instance v0, Lnet/aihelp/config/OperationConfig;

    iget v1, p0, Lnet/aihelp/config/OperationConfig$Builder;->selectIndex:I

    iget-object v2, p0, Lnet/aihelp/config/OperationConfig$Builder;->conversationTitle:Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/config/OperationConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/aihelp/config/OperationConfig;-><init>(ILjava/lang/String;Lnet/aihelp/config/ConversationConfig;Lnet/aihelp/config/OperationConfig$1;)V

    return-object v0
.end method

.method public build(ILjava/lang/String;Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/OperationConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/config/OperationConfig$Builder;->setSelectIndex(I)Lnet/aihelp/config/OperationConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/config/OperationConfig$Builder;->setConversationTitle(Ljava/lang/String;)Lnet/aihelp/config/OperationConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/aihelp/config/OperationConfig$Builder;->setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/OperationConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/OperationConfig$Builder;->build()Lnet/aihelp/config/OperationConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/OperationConfig$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/config/OperationConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    return-object p0
.end method

.method public setConversationTitle(Ljava/lang/String;)Lnet/aihelp/config/OperationConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/OperationConfig$Builder;->conversationTitle:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setSelectIndex(I)Lnet/aihelp/config/OperationConfig$Builder;
    .locals 0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    iput p1, p0, Lnet/aihelp/config/OperationConfig$Builder;->selectIndex:I

    return-object p0
.end method
