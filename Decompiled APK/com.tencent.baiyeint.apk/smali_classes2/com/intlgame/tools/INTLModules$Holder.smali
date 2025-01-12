.class final Lcom/intlgame/tools/INTLModules$Holder;
.super Ljava/lang/Object;
.source "INTLModules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/tools/INTLModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final instance:Lcom/intlgame/tools/INTLModules;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/tools/INTLModules;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/tools/INTLModules;-><init>(Lcom/intlgame/tools/INTLModules$1;)V

    sput-object v0, Lcom/intlgame/tools/INTLModules$Holder;->instance:Lcom/intlgame/tools/INTLModules;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
