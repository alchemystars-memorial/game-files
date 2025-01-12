.class public final synthetic Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field public final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field public final synthetic f$1:Lcom/linecorp/linesdk/openchat/OpenChatParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;->f$1:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;->f$1:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$createOpenChatRoom$7$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
