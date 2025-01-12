.class public Lnet/aihelp/config/FaqConfig$Builder;
.super Ljava/lang/Object;
.source "FaqConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/config/FaqConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private conversationConfig:Lnet/aihelp/config/ConversationConfig;

.field private showConversationMoment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/config/enums/ShowConversationMoment;->NEVER:Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-virtual {v0}, Lnet/aihelp/config/enums/ShowConversationMoment;->getValue()I

    move-result v0

    iput v0, p0, Lnet/aihelp/config/FaqConfig$Builder;->showConversationMoment:I

    new-instance v0, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/config/FaqConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/config/FaqConfig;
    .locals 4

    new-instance v0, Lnet/aihelp/config/FaqConfig;

    iget v1, p0, Lnet/aihelp/config/FaqConfig$Builder;->showConversationMoment:I

    iget-object v2, p0, Lnet/aihelp/config/FaqConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/config/FaqConfig;-><init>(ILnet/aihelp/config/ConversationConfig;Lnet/aihelp/config/FaqConfig$1;)V

    return-object v0
.end method

.method public build(ILnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/FaqConfig;
    .locals 2

    new-instance v0, Lnet/aihelp/config/FaqConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/aihelp/config/FaqConfig;-><init>(ILnet/aihelp/config/ConversationConfig;Lnet/aihelp/config/FaqConfig$1;)V

    return-object v0
.end method

.method public setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/FaqConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/FaqConfig$Builder;->conversationConfig:Lnet/aihelp/config/ConversationConfig;

    :cond_0
    return-object p0
.end method

.method public setShowConversationMoment(Lnet/aihelp/config/enums/ShowConversationMoment;)Lnet/aihelp/config/FaqConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/config/enums/ShowConversationMoment;->getValue()I

    move-result p1

    iput p1, p0, Lnet/aihelp/config/FaqConfig$Builder;->showConversationMoment:I

    return-object p0
.end method
