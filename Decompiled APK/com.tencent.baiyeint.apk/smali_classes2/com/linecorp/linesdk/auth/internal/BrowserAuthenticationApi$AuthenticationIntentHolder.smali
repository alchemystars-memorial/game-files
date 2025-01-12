.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationIntentHolder"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final isLineAppAuthentication:Z

.field private final startActivityOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->startActivityOptions:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->isLineAppAuthentication:Z

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->isLineAppAuthentication:Z

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getStartActivityOptions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->startActivityOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public isLineAppAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->isLineAppAuthentication:Z

    return v0
.end method
