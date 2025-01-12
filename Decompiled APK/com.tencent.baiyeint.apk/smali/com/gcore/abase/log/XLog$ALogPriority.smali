.class Lcom/gcore/abase/log/XLog$ALogPriority;
.super Ljava/lang/Object;
.source "XLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/log/XLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ALogPriority"
.end annotation


# static fields
.field public static final DEBUG:I = 0x0

.field public static final ERROR:I = 0x4

.field public static final EVENT:I = 0x3

.field public static final INFO:I = 0x1

.field public static final NONE:I = 0x5

.field public static final WARNING:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
