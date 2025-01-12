.class public final enum Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;
.super Ljava/lang/Enum;
.source "DmmOpenSocialRuntimeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

.field public static final enum Interrupted:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

.field public static final enum Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

.field public static final enum Unknown:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    new-instance v1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v3, "Interrupted"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Interrupted:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    new-instance v3, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v5, "Unknown"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Unknown:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->$VALUES:[Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->$VALUES:[Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-object v0
.end method
