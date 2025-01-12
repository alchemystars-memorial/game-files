.class public final enum Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;
.super Ljava/lang/Enum;
.source "DmmOpenSocialApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Selector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

.field public static final enum All:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

.field public static final enum Friends:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

.field public static final enum Self:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;


# instance fields
.field private selector:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    const-string v1, "Self"

    const/4 v2, 0x0

    const-string v3, "@self"

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->Self:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    const-string v3, "Friends"

    const/4 v4, 0x1

    const-string v5, "@friends"

    invoke-direct {v1, v3, v4, v5}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->Friends:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    new-instance v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    const-string v5, "All"

    const/4 v6, 0x2

    const-string v7, "@all"

    invoke-direct {v3, v5, v6, v7}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->All:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

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

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->selector:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->selector:Ljava/lang/String;

    return-object v0
.end method
