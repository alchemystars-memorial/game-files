.class Lcom/intlgame/foundation/INTLLog$LogInfo;
.super Ljava/lang/Object;
.source "INTLLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/foundation/INTLLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogInfo"
.end annotation


# instance fields
.field logClassName:Ljava/lang/String;

.field logLineNumber:I

.field logMethodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logMethodName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logLineNumber:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/foundation/INTLLog$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/foundation/INTLLog$LogInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logLineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/foundation/INTLLog$LogInfo;->logMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
