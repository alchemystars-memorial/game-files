.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final isLineAppAuthentication:Z

.field private final redirectUri:Ljava/lang/String;

.field private final startActivityOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->startActivityOptions:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->redirectUri:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->isLineAppAuthentication:Z

    return-void
.end method


# virtual methods
.method getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method getStartActivityOptions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->startActivityOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method isLineAppAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->isLineAppAuthentication:Z

    return v0
.end method
