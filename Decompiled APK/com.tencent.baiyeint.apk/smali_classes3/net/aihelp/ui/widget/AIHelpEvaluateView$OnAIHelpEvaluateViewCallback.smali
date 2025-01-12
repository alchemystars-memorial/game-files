.class public abstract Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;
.super Ljava/lang/Object;
.source "AIHelpEvaluateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/AIHelpEvaluateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnAIHelpEvaluateViewCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluated(Z)V
    .locals 0

    return-void
.end method

.method public onFeedbackConfirmed()V
    .locals 0

    return-void
.end method

.method public requestDataForFeedback()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
