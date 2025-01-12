.class public final enum Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;
.super Ljava/lang/Enum;
.source "INTLCompliancekAgreeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

.field public static final enum kAgreeStatusAgree:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

.field public static final enum kAgreeStatusDeny:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

.field public static final enum kAgreeStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    const-string v1, "kAgreeStatusDeny"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->kAgreeStatusDeny:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    new-instance v1, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    const-string v3, "kAgreeStatusUnknown"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->kAgreeStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    new-instance v3, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    const-string v5, "kAgreeStatusAgree"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->kAgreeStatusAgree:Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;
    .locals 1

    const-class v0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;
    .locals 1

    sget-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    invoke-virtual {v0}, [Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/intlgame/api/compliance/INTLCompliancekAgreeStatus;->value:I

    return v0
.end method
