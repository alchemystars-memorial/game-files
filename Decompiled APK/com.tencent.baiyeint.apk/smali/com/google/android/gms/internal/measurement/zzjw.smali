.class public final Lcom/google/android/gms/internal/measurement/zzjw;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zziy;)V
    .locals 0

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
