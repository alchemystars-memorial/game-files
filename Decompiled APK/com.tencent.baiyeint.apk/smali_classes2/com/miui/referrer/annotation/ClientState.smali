.class public interface abstract annotation Lcom/miui/referrer/annotation/ClientState;
.super Ljava/lang/Object;
.source "ClientState.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/referrer/annotation/ClientState$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/miui/referrer/annotation/ClientState;",
        "",
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

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CLOSED:I = 0x3

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final Companion:Lcom/miui/referrer/annotation/ClientState$Companion;

.field public static final DISCONNECTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/miui/referrer/annotation/ClientState$Companion;->$$INSTANCE:Lcom/miui/referrer/annotation/ClientState$Companion;

    sput-object v0, Lcom/miui/referrer/annotation/ClientState;->Companion:Lcom/miui/referrer/annotation/ClientState$Companion;

    return-void
.end method
