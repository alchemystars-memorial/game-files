.class public Lorg/spongycastle/jcajce/provider/util/DigestFactory;
.super Ljava/lang/Object;
.source "DigestFactory.java"


# static fields
.field private static md5:Ljava/util/Set;

.field private static oids:Ljava/util/Map;

.field private static sha1:Ljava/util/Set;

.field private static sha224:Ljava/util/Set;

.field private static sha256:Ljava/util/Set;

.field private static sha384:Ljava/util/Set;

.field private static sha3_224:Ljava/util/Set;

.field private static sha3_256:Ljava/util/Set;

.field private static sha3_384:Ljava/util/Set;

.field private static sha3_512:Ljava/util/Set;

.field private static sha512:Ljava/util/Set;

.field private static sha512_224:Ljava/util/Set;

.field private static sha512_256:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v2, "SHA1"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v3, "SHA-1"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    sget-object v4, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v4, "SHA224"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v5, "SHA-224"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    sget-object v6, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v6, "SHA256"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v7, "SHA-256"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    sget-object v8, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v8, "SHA384"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v9, "SHA-384"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    sget-object v10, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    const-string v10, "SHA512"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    const-string v11, "SHA-512"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    sget-object v12, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    const-string v12, "SHA512(224)"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    const-string v13, "SHA-512(224)"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    sget-object v14, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    const-string v14, "SHA512(256)"

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    const-string v15, "SHA-512(256)"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    sget-object v16, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    const-string v15, "SHA3-224"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    sget-object v16, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    const-string v15, "SHA3-256"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    sget-object v16, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v15

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    const-string v15, "SHA3-384"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    sget-object v16, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    const-string v15, "SHA3-512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    sget-object v16, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v15, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v15, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;
    .locals 1

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA224()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA256()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA384()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512_224()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512_256()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_224()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_256()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_384()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_512()Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public static isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_1
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_2
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_3
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_5
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_6
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_7
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    sget-object v0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    const/4 p0, 0x1

    goto :goto_0

    :cond_c
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
