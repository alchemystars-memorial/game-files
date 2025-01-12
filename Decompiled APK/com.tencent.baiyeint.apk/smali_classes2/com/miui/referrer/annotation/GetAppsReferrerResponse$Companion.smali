.class public final Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;
.super Ljava/lang/Object;
.source "GetAppsReferrerResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/referrer/annotation/GetAppsReferrerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;",
        "",
        "()V",
        "DEVELOPER_ERROR",
        "",
        "FEATURE_NOT_SUPPORTED",
        "OK",
        "PERMISSION_ERROR",
        "SERVICE_DISCONNECTED",
        "SERVICE_UNAVAILABLE",
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
.field static final synthetic $$INSTANCE:Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;

.field public static final DEVELOPER_ERROR:I = 0x3

.field public static final FEATURE_NOT_SUPPORTED:I = 0x2

.field public static final OK:I = 0x0

.field public static final PERMISSION_ERROR:I = 0x4

.field public static final SERVICE_DISCONNECTED:I = -0x1

.field public static final SERVICE_UNAVAILABLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;

    invoke-direct {v0}, Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;-><init>()V

    sput-object v0, Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;->$$INSTANCE:Lcom/miui/referrer/annotation/GetAppsReferrerResponse$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
