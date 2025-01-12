.class public abstract Lcom/miui/referrer/api/GetAppsReferrerClient;
.super Ljava/lang/Object;
.source "GetAppsReferrerClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;,
        Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00102\u00020\u0001:\u0002\u000f\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH&R\u0014\u0010\u0003\u001a\u00020\u00048fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/referrer/api/GetAppsReferrerClient;",
        "",
        "()V",
        "installReferrer",
        "Lcom/miui/referrer/api/GetAppsReferrerDetails;",
        "getInstallReferrer",
        "()Lcom/miui/referrer/api/GetAppsReferrerDetails;",
        "isReady",
        "",
        "()Z",
        "endConnection",
        "",
        "startConnection",
        "stateListener",
        "Lcom/miui/referrer/api/GetAppsReferrerStateListener;",
        "Builder",
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
.field public static final Companion:Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/referrer/api/GetAppsReferrerClient;->Companion:Lcom/miui/referrer/api/GetAppsReferrerClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract endConnection()V
.end method

.method public abstract getInstallReferrer()Lcom/miui/referrer/api/GetAppsReferrerDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract startConnection(Lcom/miui/referrer/api/GetAppsReferrerStateListener;)V
.end method
