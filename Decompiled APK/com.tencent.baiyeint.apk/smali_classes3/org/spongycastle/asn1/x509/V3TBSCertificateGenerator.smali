.class public Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private altNamePresentAndCritical:Z

.field endDate:Lorg/spongycastle/asn1/x509/Time;

.field extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

.field serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/spongycastle/asn1/x509/Time;

.field subject:Lorg/spongycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subjectUniqueID:Lorg/spongycastle/asn1/DERBitString;

.field version:Lorg/spongycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lorg/spongycastle/asn1/DERTaggedObject;

    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v1, v3, v2, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v1, v3, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setEndDate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    :cond_0
    return-void
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuerUniqueID(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method

.method public setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setStartDate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setStartDate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setSubject(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubject(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public setSubjectUniqueID(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method
