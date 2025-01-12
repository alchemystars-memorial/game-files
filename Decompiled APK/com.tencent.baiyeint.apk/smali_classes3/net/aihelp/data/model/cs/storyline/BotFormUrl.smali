.class public Lnet/aihelp/data/model/cs/storyline/BotFormUrl;
.super Ljava/lang/Object;
.source "BotFormUrl.java"


# instance fields
.field private formAddress:Ljava/lang/String;

.field private formTitle:Ljava/lang/String;

.field private formType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formTitle:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formAddress:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFormTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formType:Ljava/lang/String;

    return-object v0
.end method

.method public setFormAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formAddress:Ljava/lang/String;

    return-void
.end method

.method public setFormTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formTitle:Ljava/lang/String;

    return-void
.end method

.method public setFormType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->formType:Ljava/lang/String;

    return-void
.end method
