.class public interface abstract Lcom/dmm/android/lib/auth/service/JWTService;
.super Ljava/lang/Object;
.source "JWTService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/JWTService;",
        "",
        "certificate",
        "Lcom/dmm/android/lib/auth/service/CertificateResult;",
        "jwt",
        "",
        "key",
        "parseIdToken",
        "Lcom/dmm/android/lib/auth/model/IDToken;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract certificate(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/CertificateResult;
.end method

.method public abstract parseIdToken(Ljava/lang/String;)Lcom/dmm/android/lib/auth/model/IDToken;
.end method
