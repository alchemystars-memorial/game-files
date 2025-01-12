.class public final enum Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;
.super Ljava/lang/Enum;
.source "HttpMediaType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "PLAIN",
        "HTML",
        "CSS",
        "JSON",
        "XML",
        "ZIP",
        "BIN",
        "PDF",
        "PHP",
        "FLASH",
        "FORM",
        "BMP",
        "PNG",
        "JPEG",
        "GIF",
        "MPEG",
        "MP4",
        "WAV",
        "MP3",
        "MIDI",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum BIN:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum BMP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum CSS:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum FLASH:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum FORM:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum GIF:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum HTML:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum JPEG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum MIDI:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum MP3:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum MP4:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum MPEG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum PDF:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum PHP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum PLAIN:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum PNG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum WAV:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum XML:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

.field public static final enum ZIP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "PLAIN"

    const/4 v3, 0x0

    const-string/jumbo v4, "text/plain"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->PLAIN:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "HTML"

    const/4 v3, 0x1

    const-string/jumbo v4, "text/html"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->HTML:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "CSS"

    const/4 v3, 0x2

    const-string/jumbo v4, "text/css"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->CSS:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "JSON"

    const/4 v3, 0x3

    const-string v4, "application/json"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "XML"

    const/4 v3, 0x4

    const-string v4, "application/xml"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->XML:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "ZIP"

    const/4 v3, 0x5

    const-string v4, "application/zip"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->ZIP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "BIN"

    const/4 v3, 0x6

    const-string v4, "application/octet-stream"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->BIN:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "PDF"

    const/4 v3, 0x7

    const-string v4, "application/pdf"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->PDF:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "PHP"

    const/16 v3, 0x8

    const-string v4, "application/x-httpd-php"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->PHP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "FLASH"

    const/16 v3, 0x9

    const-string v4, "application/x-shockwave-flash"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->FLASH:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "FORM"

    const/16 v3, 0xa

    const-string v4, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->FORM:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "BMP"

    const/16 v3, 0xb

    const-string v4, "image/bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->BMP:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "PNG"

    const/16 v3, 0xc

    const-string v4, "image/png"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->PNG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "JPEG"

    const/16 v3, 0xd

    const-string v4, "image/jpeg"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JPEG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "GIF"

    const/16 v3, 0xe

    const-string v4, "image/gif"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->GIF:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "MPEG"

    const/16 v3, 0xf

    const-string/jumbo v4, "video/mpeg"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->MPEG:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "MP4"

    const/16 v3, 0x10

    const-string/jumbo v4, "video/mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->MP4:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "WAV"

    const/16 v3, 0x11

    const-string v4, "audio/wav"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->WAV:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "MP3"

    const/16 v3, 0x12

    const-string v4, "audio/mpeg"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->MP3:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const-string v2, "MIDI"

    const/16 v3, 0x13

    const-string v4, "audio/midi"

    invoke-direct {v1, v2, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->MIDI:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->$VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

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

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->$VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->code:Ljava/lang/String;

    return-object v0
.end method
