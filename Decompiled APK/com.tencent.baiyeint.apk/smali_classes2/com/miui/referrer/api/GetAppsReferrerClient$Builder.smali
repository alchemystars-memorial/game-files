.class public final Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;
.super Ljava/lang/Object;
.source "GetAppsReferrerClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/referrer/api/GetAppsReferrerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "build",
        "Lcom/miui/referrer/api/GetAppsReferrerClient;",
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


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final build()Lcom/miui/referrer/api/GetAppsReferrerClient;
    .locals 2

    new-instance v0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    iget-object v1, p0, Lcom/miui/referrer/api/GetAppsReferrerClient$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/miui/referrer/api/GetAppsReferrerClient;

    return-object v0
.end method
