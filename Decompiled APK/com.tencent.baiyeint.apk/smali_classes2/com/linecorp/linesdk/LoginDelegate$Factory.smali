.class public Lcom/linecorp/linesdk/LoginDelegate$Factory;
.super Ljava/lang/Object;
.source "LoginDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/LoginDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/linecorp/linesdk/LoginDelegate;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;-><init>()V

    return-object v0
.end method
