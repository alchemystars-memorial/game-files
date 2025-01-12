.class public Lcom/google/android/gms/internal/measurement/zzhp;
.super Lcom/google/android/gms/internal/measurement/zzga;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzht<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzhp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzga<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzht;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzc:Lcom/google/android/gms/internal/measurement/zzht;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzht;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzht;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/measurement/zzht;Lcom/google/android/gms/internal/measurement/zzht;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzay()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    return-object v0
.end method

.method public final zzaA()Lcom/google/android/gms/internal/measurement/zzht;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaz()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzj(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjw;-><init>(Lcom/google/android/gms/internal/measurement/zziy;)V

    throw v1
.end method

.method public final zzaB(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzhp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Lcom/google/android/gms/internal/measurement/zzht;Lcom/google/android/gms/internal/measurement/zzht;)V

    return-object p0
.end method

.method public final zzaC([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzhp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzhf;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzid;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzjg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzge;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzge;-><init>(Lcom/google/android/gms/internal/measurement/zzhf;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzjj;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzge;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzid; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zza()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public bridge synthetic zzaD()Lcom/google/android/gms/internal/measurement/zziy;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaz()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaq()Lcom/google/android/gms/internal/measurement/zzga;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzay()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzar([BII)Lcom/google/android/gms/internal/measurement/zzga;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzid;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhf;->zza()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaC([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-object p0
.end method

.method public final bridge synthetic zzas([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzga;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzid;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaC([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-object p0
.end method

.method protected final bridge synthetic zzat(Lcom/google/android/gms/internal/measurement/zzgb;)Lcom/google/android/gms/internal/measurement/zzga;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzht;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaB(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-object p0
.end method

.method protected zzax()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzht;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Lcom/google/android/gms/internal/measurement/zzht;Lcom/google/android/gms/internal/measurement/zzht;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    return-void
.end method

.method public final zzay()Lcom/google/android/gms/internal/measurement/zzhp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzc:Lcom/google/android/gms/internal/measurement/zzht;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaz()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaB(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzhp;

    return-object v0
.end method

.method public zzaz()Lcom/google/android/gms/internal/measurement/zzht;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzi(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    return-object v0
.end method

.method public final bridge synthetic zzbK()Lcom/google/android/gms/internal/measurement/zziy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzc:Lcom/google/android/gms/internal/measurement/zzht;

    return-object v0
.end method
