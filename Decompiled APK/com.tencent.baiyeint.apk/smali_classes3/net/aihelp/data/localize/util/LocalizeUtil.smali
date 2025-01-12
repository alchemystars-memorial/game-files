.class public Lnet/aihelp/data/localize/util/LocalizeUtil;
.super Ljava/lang/Object;
.source "LocalizeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileLocation(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileLocation(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/AIHelp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFolderName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_TEXT_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_PROCESS_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_FAQ_HOT_TOPIC_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_OPINION_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_BUSINESS_LOGIC_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_STYLE_SHEET_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget-object p0, Lnet/aihelp/common/API;->LOCALE_FILE_URL:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    sget-object p0, Lnet/aihelp/common/Const;->STORY_FILE:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lnet/aihelp/common/Const;->OP_FILE:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_a
    sget-object p0, Lnet/aihelp/common/Const;->FAQ_FILE:Ljava/lang/String;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFolderName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    const-string p0, "/text/"

    goto :goto_0

    :pswitch_2
    const-string p0, "/process/"

    goto :goto_0

    :pswitch_3
    const-string p0, "/hotTopic/"

    goto :goto_0

    :pswitch_4
    const-string p0, "/opinion/"

    goto :goto_0

    :pswitch_5
    const-string p0, "/toggle/"

    goto :goto_0

    :pswitch_6
    const-string p0, "/stylesheet/"

    goto :goto_0

    :pswitch_7
    const-string p0, "/locale/"

    goto :goto_0

    :pswitch_8
    const-string p0, "/AIML/"

    goto :goto_0

    :pswitch_9
    const-string p0, "/OPerMode/"

    goto :goto_0

    :pswitch_a
    const-string p0, "/FAQ/"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getLocalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    aput-object v1, p0, v0

    const-string v0, "%s-from-api.json"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrl(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/aihelp/common/API;->CDN_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFolderName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_TEXT_URL:Ljava/lang/String;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_PROCESS_URL:Ljava/lang/String;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_FAQ_HOT_TOPIC_URL:Ljava/lang/String;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_OPINION_URL:Ljava/lang/String;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_BUSINESS_LOGIC_URL:Ljava/lang/String;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/aihelp/common/API;->CONFIG_STYLE_SHEET_URL:Ljava/lang/String;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/aihelp/common/API;->LOCALE_FILE_URL:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAIMLLocalized()Z
    .locals 1

    const/16 v0, 0x3eb

    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isAlreadyLocalized(I)Z

    move-result v0

    return v0
.end method

.method public static isAlreadyLocalized(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "LocalizeHelper check localize status failed."

    invoke-static {p0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static isFallbackUrl(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    if-eq p0, v2, :cond_0

    const/16 v2, 0x3ea

    if-ne p0, v2, :cond_1

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    sget-object v2, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    aput-object v2, p0, v0

    const-string v2, "%s-from-api.json"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
