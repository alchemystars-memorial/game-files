.class public final synthetic Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field public final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field public final synthetic f$1:Lcom/linecorp/linesdk/FriendSortField;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$1:Lcom/linecorp/linesdk/FriendSortField;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$1:Lcom/linecorp/linesdk/FriendSortField;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$getFriends$0$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
