.class public Lcom/intlgame/core/processor/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/processor/Processor$MTKProcessor;,
        Lcom/intlgame/core/processor/Processor$QualcommProcessor;
    }
.end annotation


# static fields
.field public static final MY_PROCESSOR:Lcom/intlgame/core/processor/Processor;

.field private static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/intlgame/core/processor/Processor;->findMyProcessor()Lcom/intlgame/core/processor/Processor;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/processor/Processor;->MY_PROCESSOR:Lcom/intlgame/core/processor/Processor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/core/processor/Processor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/core/processor/Processor;-><init>()V

    return-void
.end method

.method private static findMyProcessor()Lcom/intlgame/core/processor/Processor;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/intlgame/core/processor/Processor$QualcommProcessor;->buildIfSupported()Lcom/intlgame/core/processor/Processor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/intlgame/core/processor/Processor$MTKProcessor;->buildIfSupported()Lcom/intlgame/core/processor/Processor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findMyProcessor Exception e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/intlgame/core/processor/Processor;

    invoke-direct {v0}, Lcom/intlgame/core/processor/Processor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getGpuUsageRate()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
