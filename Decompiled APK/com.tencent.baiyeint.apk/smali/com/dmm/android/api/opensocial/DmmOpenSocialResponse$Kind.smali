.class public final enum Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;
.super Ljava/lang/Enum;
.source "DmmOpenSocialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

.field public static final enum Cancel:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

.field public static final enum Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

.field public static final enum Success:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Success:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    const-string v3, "Failure"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    new-instance v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    const-string v5, "Cancel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Cancel:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    return-object v0
.end method
