.class final Lcom/google/android/gms/internal/play_billing/zzde;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 5

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    move v2, v0

    :goto_0
    array-length v3, p2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_2
    if-eq v1, v4, :cond_3

    aget-object p1, p2, v1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
