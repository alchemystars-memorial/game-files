.class public final Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;
.super Lcom/dmm/android/lib/auth/api/NetworkException;
.source "NetworkException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/NetworkException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalParameterException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException;",
        "key",
        "",
        "value",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/Object;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "001"

    const-string/jumbo v1, "\u30d1\u30e9\u30e1\u30fc\u30bf\u304c\u4e0d\u6b63\u3067\u3059"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/dmm/android/lib/auth/api/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Ljava/lang/Throwable;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;->value:Ljava/lang/Object;

    return-object v0
.end method
