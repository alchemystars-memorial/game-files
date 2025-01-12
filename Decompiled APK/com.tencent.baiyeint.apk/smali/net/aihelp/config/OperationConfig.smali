.class public Lnet/aihelp/config/OperationConfig;
.super Ljava/lang/Object;
.source "OperationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/config/OperationConfig$Builder;
    }
.end annotation


# instance fields
.field private conversationConfig:Lnet/aihelp/config/ConversationConfig;

.field private conversationTitle:Ljava/lang/String;

.field private selectIndex:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Lnet/aihelp/config/ConversationConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/config/OperationConfig;->selectIndex:I

    iput-object p2, p0, Lnet/aihelp/config/OperationConfig;->conversationTitle:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/config/OperationConfig;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lnet/aihelp/config/ConversationConfig;Lnet/aihelp/config/OperationConfig$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/config/OperationConfig;-><init>(ILjava/lang/String;Lnet/aihelp/config/ConversationConfig;)V

    return-void
.end method


# virtual methods
.method public getConversationConfig()Lnet/aihelp/config/ConversationConfig;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/config/OperationConfig;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/config/OperationConfig;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    iget v0, p0, Lnet/aihelp/config/OperationConfig;->selectIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationConfig{selectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/config/OperationConfig;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportBotTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/config/OperationConfig;->conversationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", supportConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/config/OperationConfig;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
