.class final Lnet/aihelp/init/AIHelpSupport$12;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->setPushTokenAndPlatform(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

.field final synthetic val$pushToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$pushToken:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$pushToken:Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/init/AIHelpCore;->setPushTokenAndPlatform(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V

    return-void
.end method
