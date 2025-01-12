.class public final Lcom/appsflyer/internal/AFb1fSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFKeystoreWrapper:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1fSDK;->AFKeystoreWrapper:Landroid/app/Application;

    return-void
.end method
