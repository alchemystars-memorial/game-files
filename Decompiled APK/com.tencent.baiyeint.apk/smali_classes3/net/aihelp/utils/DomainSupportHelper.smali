.class public Lnet/aihelp/utils/DomainSupportHelper;
.super Ljava/lang/Object;
.source "DomainSupportHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lnet/aihelp/common/Const;->countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/aihelp/common/API;->HOST_URL:Ljava/lang/String;

    sget-object v1, Lnet/aihelp/common/API;->HOST_URL:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "aihelp.net"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getCorrectDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aihelp.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/aihelp/common/Const;->countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    sget-object v1, Lnet/aihelp/config/enums/PublishCountryOrRegion;->CN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cn"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/aihelp/common/Const;->countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    sget-object v1, Lnet/aihelp/config/enums/PublishCountryOrRegion;->IN:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".in"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
