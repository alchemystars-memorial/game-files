.class public Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.super Ljava/lang/Object;
.source "LineAuthenticationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;,
        Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineAuthenticationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field private final nonce:Ljava/lang/String;

.field private final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final uiLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/Scope;->convertToScopeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->scopes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->nonce:Ljava/lang/String;

    const-class v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readEnum(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->uiLocale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->access$100(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->scopes:Ljava/util/List;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->access$200(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->nonce:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->access$300(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->access$400(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->uiLocale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;Lcom/linecorp/linesdk/auth/LineAuthenticationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->scopes:Ljava/util/List;

    return-object v0
.end method

.method public getUILocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->uiLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->scopes:Ljava/util/List;

    invoke-static {p2}, Lcom/linecorp/linesdk/Scope;->convertToCodeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->nonce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->botPrompt:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeEnum(Landroid/os/Parcel;Ljava/lang/Enum;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->uiLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
