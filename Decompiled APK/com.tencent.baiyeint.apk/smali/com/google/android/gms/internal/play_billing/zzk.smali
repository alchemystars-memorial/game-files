.class public final Lcom/google/android/gms/internal/play_billing/zzk;
.super Lcom/google/android/gms/internal/play_billing/zzp;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.android.vending.billing.IInAppBillingService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzp;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p2, 0x386

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/4 p5, 0x3

    invoke-virtual {p1, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p5, p6}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p5}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzk(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p5}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x385

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzm(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p2, 0x5dd

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p2, 0x641

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzo(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p2, 0x515

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzt(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p2, 0x579

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzr;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p2, 0x4b1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzt(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzv(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzr()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzs(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method
