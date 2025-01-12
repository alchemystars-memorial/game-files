.class public Lnet/aihelp/utils/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argb(DFFF)I
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p2, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p0, p2

    mul-float/2addr p3, p1

    add-float/2addr p3, v0

    float-to-int p2, p3

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, p2

    mul-float/2addr p4, p1

    add-float/2addr p4, v0

    float-to-int p1, p4

    or-int/2addr p0, p1

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p0

    return p0
.end method

.method public static getColorFromAttr(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorRGB(Ljava/lang/String;)[I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p0, p0, 0xff

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p0, v2, v0

    return-object v2
.end method

.method public static getColorWithAlpha(Ljava/lang/String;D)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p1, p2, v0, v2, p0}, Lnet/aihelp/utils/Styles;->argb(DFFF)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static getDrawableWithCorner(IIIII)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    int-to-float p1, p2

    const/4 p2, 0x2

    aput p1, v1, p2

    const/4 p2, 0x3

    aput p1, v1, p2

    int-to-float p1, p3

    const/4 p2, 0x4

    aput p1, v1, p2

    const/4 p2, 0x5

    aput p1, v1, p2

    int-to-float p1, p4

    const/4 p2, 0x6

    aput p1, v1, p2

    const/4 p2, 0x7

    aput p1, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static getFAQWithHighlightedSearchTerms(Landroid/content/Context;Lnet/aihelp/data/model/faq/FaqContentEntity;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;
    .locals 17

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">[^<]+<"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move-object v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    const-string v8, "\">$1</span>"

    const-string v9, "<span style=\"color: "

    const-string v10, ")"

    const-string v11, "(?i)("

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {v1, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move-object v2, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v7, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getSecId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqKeywords()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqDisplayId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getSearchTerm()Ljava/lang/String;

    move-result-object v16

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lnet/aihelp/data/model/faq/FaqContentEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public static getHexColor(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "#%06X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexColor(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lnet/aihelp/utils/Styles;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Lnet/aihelp/utils/Styles;->getHexColor(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNoTemplateFaqContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ">[^<]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "body {"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomColor()I
    .locals 7

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v6

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v6

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, p0

    :cond_0
    return v1
.end method

.method public static isLandscape()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isLandscape:Z

    return v0
.end method

.method public static isLightColor(I)Z
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static loadIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "aihelp_svg_ic_placeholder"

    invoke-static {p0, p1, p2, v0}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->placeholder(I)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static makeSelector(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aihelp_svg_ic_bill_checked"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v4}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "aihelp_svg_ic_bill_unchecked"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v3}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public static reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;F)V
    .locals 3

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    float-to-double v1, p2

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    invoke-static {p0, p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method public static reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p0, p1, p2, v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    return-void
.end method

.method public static reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p3, p4

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    instance-of p3, p0, Landroid/widget/EditText;

    if-eqz p3, :cond_1

    check-cast p0, Landroid/widget/EditText;

    const-string p3, ""

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lnet/aihelp/utils/Styles;->getHexColor(I)Ljava/lang/String;

    move-result-object p1

    const-wide p2, 0x3fd6666660000000L    # 0.3499999940395355

    invoke-static {p1, p2, p3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_1
    return-void
.end method

.method public static reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    invoke-static {p0, p1, v0, p2, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    return-void
.end method

.method public static setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lnet/aihelp/utils/Styles;->getColor(Landroid/content/Context;I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public static setColorFilter(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public static setDrawable(Landroid/content/Context;Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2, p3}, Lnet/aihelp/utils/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setGradientBackground(Landroid/view/View;IILandroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
