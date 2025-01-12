.class public final Lcom/miui/referrer/api/GetAppsReferrerDetails;
.super Ljava/lang/Object;
.source "GetAppsReferrerDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/referrer/api/GetAppsReferrerDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0008R\u0011\u0010\u0013\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/miui/referrer/api/GetAppsReferrerDetails;",
        "",
        "mOriginalBundle",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "installBeginTimestampSeconds",
        "",
        "getInstallBeginTimestampSeconds",
        "()J",
        "installBeginTimestampServerSeconds",
        "getInstallBeginTimestampServerSeconds",
        "installReferrer",
        "",
        "getInstallReferrer",
        "()Ljava/lang/String;",
        "installVersion",
        "getInstallVersion",
        "referrerClickTimestampSeconds",
        "getReferrerClickTimestampSeconds",
        "referrerClickTimestampServerSeconds",
        "getReferrerClickTimestampServerSeconds",
        "Companion",
        "referrer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/miui/referrer/api/GetAppsReferrerDetails$Companion;

.field private static final KEY_INSTALL_BEGIN_TIMESTAMP:Ljava/lang/String; = "install_begin_timestamp_seconds"

.field private static final KEY_INSTALL_BEGIN_TIMESTAMP_SERVER:Ljava/lang/String; = "install_begin_timestamp_server_seconds"

.field private static final KEY_INSTALL_REFERRER:Ljava/lang/String; = "install_referrer"

.field private static final KEY_INSTALL_VERSION:Ljava/lang/String; = "install_version"

.field private static final KEY_REFERRER_CLICK_TIMESTAMP:Ljava/lang/String; = "referrer_click_timestamp_seconds"

.field private static final KEY_REFERRER_CLICK_TIMESTAMP_SERVER:Ljava/lang/String; = "referrer_click_timestamp_server_seconds"


# instance fields
.field private final mOriginalBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/referrer/api/GetAppsReferrerDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/referrer/api/GetAppsReferrerDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->Companion:Lcom/miui/referrer/api/GetAppsReferrerDetails$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "mOriginalBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getInstallBeginTimestampSeconds()J
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "install_begin_timestamp_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstallBeginTimestampServerSeconds()J
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "install_begin_timestamp_server_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstallReferrer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstallVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "install_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReferrerClickTimestampSeconds()J
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "referrer_click_timestamp_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReferrerClickTimestampServerSeconds()J
    .locals 2

    iget-object v0, p0, Lcom/miui/referrer/api/GetAppsReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "referrer_click_timestamp_server_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
