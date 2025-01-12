.class final enum Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;
.super Ljava/lang/Enum;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogCatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

.field public static final enum base:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

.field public static final enum events:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

.field public static final enum main:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

.field public static final enum radio:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

.field public static final enum system:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const-string v1, "base"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->base:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    new-instance v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const-string v3, "radio"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->radio:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    new-instance v3, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const-string/jumbo v5, "system"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->system:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    new-instance v5, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const-string v7, "events"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->events:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    new-instance v7, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const-string v9, "main"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->main:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->$VALUES:[Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;
    .locals 1

    const-class v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    return-object p0
.end method

.method public static values()[Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->$VALUES:[Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v0}, [Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-void
.end method
