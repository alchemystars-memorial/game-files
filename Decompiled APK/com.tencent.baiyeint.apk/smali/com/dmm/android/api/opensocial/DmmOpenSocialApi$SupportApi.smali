.class public final enum Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;
.super Ljava/lang/Enum;
.source "DmmOpenSocialApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

.field public static final enum MakeRequest:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

.field public static final enum Payment:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    const-class v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;

    const-string v2, "Payment"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->Payment:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    const-class v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    const-string v4, "MakeRequest"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->MakeRequest:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->getClazz()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    return-object v0
.end method
