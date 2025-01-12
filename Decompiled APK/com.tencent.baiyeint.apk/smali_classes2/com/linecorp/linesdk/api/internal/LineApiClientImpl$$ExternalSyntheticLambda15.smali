.class public final synthetic Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field public final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda15;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda15;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$getOpenChatAgreementStatus$6$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
