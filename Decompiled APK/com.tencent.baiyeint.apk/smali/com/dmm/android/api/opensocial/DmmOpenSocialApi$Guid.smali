.class public final enum Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;
.super Ljava/lang/Enum;
.source "DmmOpenSocialApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Guid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

.field public static final enum Me:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;


# instance fields
.field private guid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    const-string v1, "Me"

    const/4 v2, 0x0

    const-string v3, "@me"

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->Me:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    aput-object v0, v1, v2

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->guid:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->guid:Ljava/lang/String;

    return-object v0
.end method
