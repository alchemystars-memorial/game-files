.class public final Lcom/intlgame/foundation/swig/FileExcessAction;
.super Ljava/lang/Object;
.source "FileExcessAction.java"


# static fields
.field public static final kFileExcessActionReWrite:Lcom/intlgame/foundation/swig/FileExcessAction;

.field public static final kFileExcessActionStopAppend:Lcom/intlgame/foundation/swig/FileExcessAction;

.field private static swigNext:I

.field private static swigValues:[Lcom/intlgame/foundation/swig/FileExcessAction;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/intlgame/foundation/swig/FileExcessAction;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->kFileExcessActionReWrite_get()I

    move-result v1

    const-string v2, "kFileExcessActionReWrite"

    invoke-direct {v0, v2, v1}, Lcom/intlgame/foundation/swig/FileExcessAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/foundation/swig/FileExcessAction;->kFileExcessActionReWrite:Lcom/intlgame/foundation/swig/FileExcessAction;

    new-instance v1, Lcom/intlgame/foundation/swig/FileExcessAction;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->kFileExcessActionStopAppend_get()I

    move-result v2

    const-string v3, "kFileExcessActionStopAppend"

    invoke-direct {v1, v3, v2}, Lcom/intlgame/foundation/swig/FileExcessAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intlgame/foundation/swig/FileExcessAction;->kFileExcessActionStopAppend:Lcom/intlgame/foundation/swig/FileExcessAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/intlgame/foundation/swig/FileExcessAction;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValues:[Lcom/intlgame/foundation/swig/FileExcessAction;

    sput v3, Lcom/intlgame/foundation/swig/FileExcessAction;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigName:Ljava/lang/String;

    sget p1, Lcom/intlgame/foundation/swig/FileExcessAction;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigNext:I

    iput p1, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigName:Ljava/lang/String;

    iput p2, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/intlgame/foundation/swig/FileExcessAction;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/intlgame/foundation/swig/FileExcessAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigName:Ljava/lang/String;

    iget p1, p2, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    iput p1, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/intlgame/foundation/swig/FileExcessAction;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lcom/intlgame/foundation/swig/FileExcessAction;
    .locals 3

    sget-object v0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValues:[Lcom/intlgame/foundation/swig/FileExcessAction;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValues:[Lcom/intlgame/foundation/swig/FileExcessAction;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/intlgame/foundation/swig/FileExcessAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/foundation/swig/FileExcessAction;->swigName:Ljava/lang/String;

    return-object v0
.end method
