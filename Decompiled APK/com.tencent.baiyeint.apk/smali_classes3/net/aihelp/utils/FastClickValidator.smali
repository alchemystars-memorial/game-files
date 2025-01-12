.class public Lnet/aihelp/utils/FastClickValidator;
.super Ljava/lang/Object;
.source "FastClickValidator.java"


# static fields
.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate()Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lnet/aihelp/utils/FastClickValidator;->validate(F)Z

    move-result v0

    return v0
.end method

.method public static validate(F)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnet/aihelp/utils/FastClickValidator;->lastClickTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v3

    cmpl-float p0, v2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-wide v0, Lnet/aihelp/utils/FastClickValidator;->lastClickTime:J

    return p0
.end method
