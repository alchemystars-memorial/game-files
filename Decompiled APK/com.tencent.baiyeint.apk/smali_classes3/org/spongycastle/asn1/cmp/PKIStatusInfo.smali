.class public Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIStatusInfo.java"


# instance fields
.field failInfo:Lorg/spongycastle/asn1/DERBitString;

.field status:Lorg/spongycastle/asn1/ASN1Integer;

.field statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;Lorg/spongycastle/asn1/cmp/PKIFreeText;Lorg/spongycastle/asn1/cmp/PKIFailureInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFailInfo()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getStatus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString()Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
