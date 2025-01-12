.class public final Ld/b;
.super Ljava/lang/Object;


# static fields
.field public static b:Landroid/content/SharedPreferences;

.field public static c:[B


# instance fields
.field public a:Ljavax/crypto/Cipher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    sput-object v0, Ld/b;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b;->a:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 8

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    :try_start_0
    new-array v1, v1, [B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_0
    iget-object v1, p0, Ld/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    int-to-byte v0, v0

    sget-object v5, Ld/b;->c:[B

    const/4 v6, 0x4

    new-array v7, v6, [B

    aput-byte v1, v7, v2

    const/4 v1, 0x1

    aput-byte v3, v7, v1

    const/4 v3, 0x2

    aput-byte v4, v7, v3

    const/4 v3, 0x3

    aput-byte v0, v7, v3

    invoke-static {v7, v2, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    const/4 v3, 0x7

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    new-array v4, v0, [B

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p1

    invoke-static {p1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    aput-byte v2, v4, v0

    return-object v4
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    sget-object v0, Ld/b;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-string v1, "EK"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
