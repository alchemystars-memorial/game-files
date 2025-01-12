.class public final Lcom/linecorp/linesdk/utils/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final TIME_NONE:J = -0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readDate(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static readEnum(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static writeDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static writeEnum(Landroid/os/Parcel;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
