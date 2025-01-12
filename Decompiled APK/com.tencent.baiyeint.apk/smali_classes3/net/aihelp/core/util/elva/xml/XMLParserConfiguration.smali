.class public Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
.super Ljava/lang/Object;
.source "XMLParserConfiguration.java"


# static fields
.field public static final KEEP_STRINGS:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

.field public static final ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;


# instance fields
.field private cDataTagName:Ljava/lang/String;

.field private convertNilAttributeToNull:Z

.field private keepStrings:Z

.field private xsiTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    new-instance v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->withKeepStrings(Z)Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->KEEP_STRINGS:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    const-string v1, "content"

    iput-object v1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "content"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
    .locals 5

    new-instance v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    iget-boolean v1, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    iget-object v2, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iget-boolean v3, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    iget-object v4, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;-><init>(ZLjava/lang/String;ZLjava/util/Map;)V

    return-object v0
.end method

.method public getXsiTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getcDataTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method

.method public isConvertNilAttributeToNull()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return v0
.end method

.method public isKeepStrings()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    return v0
.end method

.method public withConvertNilAttributeToNull(Z)Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    iput-boolean p1, v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-object v0
.end method

.method public withKeepStrings(Z)Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    iput-boolean p1, v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->keepStrings:Z

    return-object v0
.end method

.method public withXsiTypeMap(Ljava/util/Map;)Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter<",
            "*>;>;)",
            "Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public withcDataTagName(Ljava/lang/String;)Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->clone()Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    move-result-object v0

    iput-object p1, v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method
