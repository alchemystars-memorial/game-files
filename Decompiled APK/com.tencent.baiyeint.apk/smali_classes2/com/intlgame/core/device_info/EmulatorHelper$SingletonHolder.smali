.class Lcom/intlgame/core/device_info/EmulatorHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "EmulatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/device_info/EmulatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/intlgame/core/device_info/EmulatorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/core/device_info/EmulatorHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/core/device_info/EmulatorHelper;-><init>(Lcom/intlgame/core/device_info/EmulatorHelper$1;)V

    sput-object v0, Lcom/intlgame/core/device_info/EmulatorHelper$SingletonHolder;->INSTANCE:Lcom/intlgame/core/device_info/EmulatorHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/intlgame/core/device_info/EmulatorHelper;
    .locals 1

    sget-object v0, Lcom/intlgame/core/device_info/EmulatorHelper$SingletonHolder;->INSTANCE:Lcom/intlgame/core/device_info/EmulatorHelper;

    return-object v0
.end method
