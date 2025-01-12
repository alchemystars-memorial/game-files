.class final Lnet/aihelp/core/util/logger/controller/LoggerDBController$LazyHolder;
.super Ljava/lang/Object;
.source "LoggerDBController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/logger/controller/LoggerDBController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/core/util/logger/controller/LoggerDBController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;-><init>(Lnet/aihelp/core/util/logger/controller/LoggerDBController$1;)V

    sput-object v0, Lnet/aihelp/core/util/logger/controller/LoggerDBController$LazyHolder;->INSTANCE:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
