.class public final enum Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;
.super Ljava/lang/Enum;
.source "DmmOlgIdAuthFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

.field public static final enum Login:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

.field public static final enum Register:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    const-string v1, "Login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->Login:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    new-instance v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    const-string v3, "Register"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->Register:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->$VALUES:[Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->$VALUES:[Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    return-object v0
.end method
