.class public final Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;
.super Ljava/lang/Object;
.source "LineAuthenticationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field private nonce:Ljava/lang/String;

.field private scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private uiLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->uiLocale:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public botPrompt(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;)V

    return-object v0
.end method

.method public nonce(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;)",
            "Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes:Ljava/util/List;

    return-object p0
.end method

.method public uiLocale(Ljava/util/Locale;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->uiLocale:Ljava/util/Locale;

    return-object p0
.end method
