.class public interface abstract Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMCObjectIdentifiers.java"


# static fields
.field public static final id_cct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIResponse:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_addExtensions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_authData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchRequests:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchResponses:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_confirmCertAcceptance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_controlProcessed:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_dataReturn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_decryptedPOP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_encryptedPOP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCRL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identification:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProof:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProofV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_lraPOPWitness:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_modCertTemplate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkRandom:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitness:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitnessV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_publishCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_queryPending:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_recipientNonce:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_regInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_responseInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_revokeRequest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_senderNonce:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfoV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_transactionId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_trustedAnchors:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "12"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProof:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "4"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_dataReturn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "18"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_regInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "19"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_responseInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "21"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_queryPending:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "22"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkRandom:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "23"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitness:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identification:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "5"

    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_transactionId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "6"

    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_senderNonce:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_recipientNonce:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIResponse:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "1"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "8"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_addExtensions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "9"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_encryptedPOP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "10"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_decryptedPOP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "11"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_lraPOPWitness:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "15"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "16"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCRL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "17"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_revokeRequest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "24"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_confirmCertAcceptance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "25"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfoV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "26"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_trustedAnchors:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "27"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_authData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "28"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchRequests:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "29"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchResponses:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "30"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_publishCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "31"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_modCertTemplate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "32"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_controlProcessed:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "34"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProofV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "33"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitnessV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
