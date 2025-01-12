.class public final Lcom/linecorp/linesdk/LineIdToken$Builder;
.super Ljava/lang/Object;
.source "LineIdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/LineIdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private address:Lcom/linecorp/linesdk/LineIdToken$Address;

.field private amr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private audience:Ljava/lang/String;

.field private authTime:Ljava/util/Date;

.field private birthdate:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expiresAt:Ljava/util/Date;

.field private familyName:Ljava/lang/String;

.field private familyNamePronunciation:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field private givenNamePronunciation:Ljava/lang/String;

.field private issuedAt:Ljava/util/Date;

.field private issuer:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private rawString:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->rawString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->picture:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->gender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->birthdate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/linecorp/linesdk/LineIdToken$Builder;)Lcom/linecorp/linesdk/LineIdToken$Address;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenNamePronunciation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->middleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyNamePronunciation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->subject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->audience:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->expiresAt:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuedAt:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->authTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->amr:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public address(Lcom/linecorp/linesdk/LineIdToken$Address;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    return-object p0
.end method

.method public amr(Ljava/util/List;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/LineIdToken$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->amr:Ljava/util/List;

    return-object p0
.end method

.method public audience(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->audience:Ljava/lang/String;

    return-object p0
.end method

.method public authTime(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->authTime:Ljava/util/Date;

    return-object p0
.end method

.method public birthdate(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->birthdate:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/LineIdToken;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/LineIdToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Lcom/linecorp/linesdk/LineIdToken$Builder;Lcom/linecorp/linesdk/LineIdToken$1;)V

    return-object v0
.end method

.method public email(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public expiresAt(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->expiresAt:Ljava/util/Date;

    return-object p0
.end method

.method public familyName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public familyNamePronunciation(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyNamePronunciation:Ljava/lang/String;

    return-object p0
.end method

.method public gender(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public givenName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenName:Ljava/lang/String;

    return-object p0
.end method

.method public givenNamePronunciation(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenNamePronunciation:Ljava/lang/String;

    return-object p0
.end method

.method public issuedAt(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuedAt:Ljava/util/Date;

    return-object p0
.end method

.method public issuer(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public middleName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->middleName:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public nonce(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public phoneNumber(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public picture(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->picture:Ljava/lang/String;

    return-object p0
.end method

.method public rawString(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->rawString:Ljava/lang/String;

    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Builder;->subject:Ljava/lang/String;

    return-object p0
.end method
