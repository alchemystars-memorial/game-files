.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
.super Ljava/lang/Object;
.source "LineAuthenticationStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private oAuthState:Ljava/lang/String;

.field private openIdNonce:Ljava/lang/String;

.field private pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

.field private sentRedirectUri:Ljava/lang/String;

.field private status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-class v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    invoke-static {}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->values()[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method authenticationIntentHandled()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-void
.end method

.method authenticationIntentReceived()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-void
.end method

.method public authenticationStarted()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOAuthState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenIdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-object v0
.end method

.method getPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    return-object v0
.end method

.method getSentRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-object v0
.end method

.method public setOAuthState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    return-void
.end method

.method public setOpenIdNonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-void
.end method

.method setPKCECode(Lcom/linecorp/linesdk/internal/pkce/PKCECode;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    return-void
.end method

.method setSentRedirectUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
