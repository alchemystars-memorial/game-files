.class public Lnet/aihelp/config/ConversationConfig;
.super Ljava/lang/Object;
.source "ConversationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/config/ConversationConfig$Builder;
    }
.end annotation


# instance fields
.field private alwaysShowHumanSupportButtonInBotPage:Z

.field private conversationIntent:I

.field private storyNode:Ljava/lang/String;

.field private welcomeMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/config/ConversationConfig;->conversationIntent:I

    iput-boolean p2, p0, Lnet/aihelp/config/ConversationConfig;->alwaysShowHumanSupportButtonInBotPage:Z

    iput-object p3, p0, Lnet/aihelp/config/ConversationConfig;->welcomeMessage:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/config/ConversationConfig;->storyNode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/String;Ljava/lang/String;Lnet/aihelp/config/ConversationConfig$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/config/ConversationConfig;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConversationIntent()I
    .locals 1

    iget v0, p0, Lnet/aihelp/config/ConversationConfig;->conversationIntent:I

    return v0
.end method

.method public getStoryNode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/config/ConversationConfig;->storyNode:Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/config/ConversationConfig;->welcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isAlwaysShowHumanSupportButtonInBotPage()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/config/ConversationConfig;->alwaysShowHumanSupportButtonInBotPage:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportConfig{supportIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/config/ConversationConfig;->conversationIntent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysShowHumanSupportButtonInBotPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/aihelp/config/ConversationConfig;->alwaysShowHumanSupportButtonInBotPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", welcomeMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/config/ConversationConfig;->welcomeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
