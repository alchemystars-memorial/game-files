.class public final enum Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;
.super Ljava/lang/Enum;
.source "DmmOpenSocialApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

.field public static final enum Delete:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

.field public static final enum Get:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

.field public static final enum Post:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

.field public static final enum Put:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;


# instance fields
.field private method:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    const-string v1, "Get"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Get:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    const-string v3, "Put"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Put:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    new-instance v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    const-string v6, "Post"

    invoke-direct {v3, v6, v5, v4}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Post:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    new-instance v6, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    const-string v7, "Delete"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v8}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Delete:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v8

    sput-object v7, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

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

    iput p3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->method:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->$VALUES:[Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    invoke-virtual {v0}, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    return-object v0
.end method


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->method:I

    return v0
.end method
