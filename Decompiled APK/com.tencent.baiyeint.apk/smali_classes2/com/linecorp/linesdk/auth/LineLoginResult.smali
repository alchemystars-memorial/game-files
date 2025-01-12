.class public Lcom/linecorp/linesdk/auth/LineLoginResult;
.super Ljava/lang/Object;
.source "LineLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errorData:Lcom/linecorp/linesdk/LineApiError;

.field private final friendshipStatusChanged:Ljava/lang/Boolean;

.field private final lineCredential:Lcom/linecorp/linesdk/LineCredential;

.field private final lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

.field private final lineProfile:Lcom/linecorp/linesdk/LineProfile;

.field private final nonce:Ljava/lang/String;

.field private final responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readEnum(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    const-class v0, Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineProfile;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    const-class v0, Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    const-class v0, Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineCredential;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    const-class v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/LineApiError;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$100(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$200(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$300(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$400(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$500(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$600(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$700(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V

    return-void
.end method

.method public static authenticationAgentError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static canceledError()Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 2

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;)",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode(Lcom/linecorp/linesdk/LineApiResponseCode;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->build()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/Exception;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linecorp/linesdk/LineApiError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getErrorData()Lcom/linecorp/linesdk/LineApiError;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-object v0
.end method

.method public getFriendshipStatusChanged()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineCredential()Lcom/linecorp/linesdk/LineCredential;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    return-object v0
.end method

.method public getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object v0
.end method

.method public getLineProfile()Lcom/linecorp/linesdk/LineProfile;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineLoginResult{responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lineProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineIdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendshipStatusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineCredential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeEnum(Landroid/os/Parcel;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
