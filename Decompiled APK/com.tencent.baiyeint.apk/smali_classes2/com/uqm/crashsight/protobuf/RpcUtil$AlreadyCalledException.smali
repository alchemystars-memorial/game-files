.class public final Lcom/uqm/crashsight/protobuf/RpcUtil$AlreadyCalledException;
.super Ljava/lang/RuntimeException;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/RpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlreadyCalledException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "This RpcCallback was already called and cannot be called multiple times."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
