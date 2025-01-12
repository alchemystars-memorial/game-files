.class public final enum Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;
.super Ljava/lang/Enum;
.source "DmmPaymentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

.field public static final enum Cancel:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

.field public static final enum Complete:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

.field public static final enum Created:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

.field public static final enum Error:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;


# instance fields
.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    const-string v1, "Created"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->Created:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    new-instance v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    const-string v4, "Complete"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->Complete:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    new-instance v4, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    const-string v6, "Cancel"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->Cancel:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    new-instance v6, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    const-string v8, "Error"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->Error:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    new-array v8, v9, [Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->$VALUES:[Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->mStatus:I

    return-void
.end method

.method static valueOf(I)Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;
    .locals 6

    sget-object v0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->Error:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    invoke-static {}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->values()[Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->mStatus:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->$VALUES:[Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    return-object v0
.end method
