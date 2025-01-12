.class public final enum Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;
.super Ljava/lang/Enum;
.source "INTLCompliancekCertificateStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

.field public static final enum kParentCertificateStatusAgree:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

.field public static final enum kParentCertificateStatusDeny:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

.field public static final enum kParentCertificateStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    const-string v1, "kParentCertificateStatusDeny"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->kParentCertificateStatusDeny:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    new-instance v1, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    const-string v3, "kParentCertificateStatusUnknown"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->kParentCertificateStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    new-instance v3, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    const-string v5, "kParentCertificateStatusAgree"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->kParentCertificateStatusAgree:Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

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

    iput p3, p0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;
    .locals 1

    const-class v0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;
    .locals 1

    sget-object v0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    invoke-virtual {v0}, [Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/intlgame/api/compliance/INTLCompliancekCertificateStatus;->value:I

    return v0
.end method
