.class final Lnet/aihelp/db/bot/controller/ElvaDBController$LazyHolder;
.super Ljava/lang/Object;
.source "ElvaDBController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/db/bot/controller/ElvaDBController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/db/bot/controller/ElvaDBController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/db/bot/controller/ElvaDBController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/db/bot/controller/ElvaDBController;-><init>(Lnet/aihelp/db/bot/controller/ElvaDBController$1;)V

    sput-object v0, Lnet/aihelp/db/bot/controller/ElvaDBController$LazyHolder;->INSTANCE:Lnet/aihelp/db/bot/controller/ElvaDBController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
