.class public Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;
.super Lcom/dmm/android/api/error/DmmApiRuntimeException;
.source "DmmOpenSocialRuntimeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;
    }
.end annotation


# instance fields
.field private mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;


# direct methods
.method public constructor <init>(Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;->mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;->mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;->mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;->mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-void
.end method


# virtual methods
.method public getKind()Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;->mKind:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    return-object v0
.end method
