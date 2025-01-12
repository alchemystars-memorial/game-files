.class public Lnet/aihelp/config/ConversationConfig$Builder;
.super Ljava/lang/Object;
.source "ConversationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/config/ConversationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alwaysShowHumanSupportButtonInBotPage:Z

.field private conversationIntent:I

.field private storyNode:Ljava/lang/String;

.field private welcomeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/config/enums/ConversationIntent;->BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    invoke-virtual {v0}, Lnet/aihelp/config/enums/ConversationIntent;->getValue()I

    move-result v0

    iput v0, p0, Lnet/aihelp/config/ConversationConfig$Builder;->conversationIntent:I

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/config/ConversationConfig;
    .locals 7

    new-instance v6, Lnet/aihelp/config/ConversationConfig;

    iget v1, p0, Lnet/aihelp/config/ConversationConfig$Builder;->conversationIntent:I

    iget-boolean v2, p0, Lnet/aihelp/config/ConversationConfig$Builder;->alwaysShowHumanSupportButtonInBotPage:Z

    iget-object v3, p0, Lnet/aihelp/config/ConversationConfig$Builder;->welcomeMessage:Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/config/ConversationConfig$Builder;->storyNode:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/config/ConversationConfig;-><init>(IZLjava/lang/String;Ljava/lang/String;Lnet/aihelp/config/ConversationConfig$1;)V

    return-object v6
.end method

.method public build(IZLjava/lang/String;Ljava/lang/String;)Lnet/aihelp/config/ConversationConfig;
    .locals 7

    new-instance v6, Lnet/aihelp/config/ConversationConfig;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/config/ConversationConfig;-><init>(IZLjava/lang/String;Ljava/lang/String;Lnet/aihelp/config/ConversationConfig$1;)V

    return-object v6
.end method

.method public setAlwaysShowHumanSupportButtonInBotPage(Z)Lnet/aihelp/config/ConversationConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/config/ConversationConfig$Builder;->alwaysShowHumanSupportButtonInBotPage:Z

    return-object p0
.end method

.method public setConversationIntent(Lnet/aihelp/config/enums/ConversationIntent;)Lnet/aihelp/config/ConversationConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/config/enums/ConversationIntent;->getValue()I

    move-result p1

    iput p1, p0, Lnet/aihelp/config/ConversationConfig$Builder;->conversationIntent:I

    return-object p0
.end method

.method public setStoryNode(Ljava/lang/String;)Lnet/aihelp/config/ConversationConfig$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/config/ConversationConfig$Builder;->storyNode:Ljava/lang/String;

    return-object p0
.end method

.method public setWelcomeMessage(Ljava/lang/String;)Lnet/aihelp/config/ConversationConfig$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/config/ConversationConfig$Builder;->welcomeMessage:Ljava/lang/String;

    return-object p0
.end method
