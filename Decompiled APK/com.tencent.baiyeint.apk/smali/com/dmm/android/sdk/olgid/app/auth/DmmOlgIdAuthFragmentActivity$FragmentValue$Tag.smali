.class public Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Tag;
.super Ljava/lang/Object;
.source "DmmOlgIdAuthFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# static fields
.field public static final LOGIN:Ljava/lang/String;

.field public static final REGISTER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->Login:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Tag;->LOGIN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->Register:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$FragmentValue$Tag;->REGISTER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
