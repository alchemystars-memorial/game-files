.class public Lcom/intlgame/core/device_info/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# static fields
.field public static final RESULT_EMULATOR:I = 0x1

.field public static final RESULT_MAYBE_EMULATOR:I = 0x0

.field public static final RESULT_UNKNOWN:I = 0x2


# instance fields
.field public result:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intlgame/core/device_info/CheckResult;->result:I

    iput-object p2, p0, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    return-void
.end method
