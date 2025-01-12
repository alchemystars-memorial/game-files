.class public final enum Lnet/aihelp/config/enums/PublishCountryOrRegion;
.super Ljava/lang/Enum;
.source "PublishCountryOrRegion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/config/enums/PublishCountryOrRegion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/config/enums/PublishCountryOrRegion;

.field public static final enum CN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

.field public static final enum IN:Lnet/aihelp/config/enums/PublishCountryOrRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/aihelp/config/enums/PublishCountryOrRegion;

    const-string v1, "CN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/config/enums/PublishCountryOrRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/config/enums/PublishCountryOrRegion;->CN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    new-instance v1, Lnet/aihelp/config/enums/PublishCountryOrRegion;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/config/enums/PublishCountryOrRegion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/config/enums/PublishCountryOrRegion;->IN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/aihelp/config/enums/PublishCountryOrRegion;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/aihelp/config/enums/PublishCountryOrRegion;->$VALUES:[Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lnet/aihelp/config/enums/PublishCountryOrRegion;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lnet/aihelp/config/enums/PublishCountryOrRegion;->IN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-object p0

    :cond_1
    sget-object p0, Lnet/aihelp/config/enums/PublishCountryOrRegion;->CN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/config/enums/PublishCountryOrRegion;
    .locals 1

    const-class v0, Lnet/aihelp/config/enums/PublishCountryOrRegion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/config/enums/PublishCountryOrRegion;
    .locals 1

    sget-object v0, Lnet/aihelp/config/enums/PublishCountryOrRegion;->$VALUES:[Lnet/aihelp/config/enums/PublishCountryOrRegion;

    invoke-virtual {v0}, [Lnet/aihelp/config/enums/PublishCountryOrRegion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-object v0
.end method
