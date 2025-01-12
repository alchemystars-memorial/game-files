.class Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;
.super Ljava/lang/Object;
.source "EncryptorHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/EncryptorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptorInitializationTask"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->access$000()Lcom/linecorp/android/security/encryption/StringCipher;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/linecorp/android/security/encryption/StringCipher;->initialize(Landroid/content/Context;)V

    return-void
.end method
