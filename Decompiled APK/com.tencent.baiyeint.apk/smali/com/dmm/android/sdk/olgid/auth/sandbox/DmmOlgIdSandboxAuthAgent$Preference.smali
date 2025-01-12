.class interface abstract Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent$Preference;
.super Ljava/lang/Object;
.source "DmmOlgIdSandboxAuthAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Preference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent$Preference$Key;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent$Preference;->NAME:Ljava/lang/String;

    return-void
.end method
