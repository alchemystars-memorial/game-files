.class public Lnet/aihelp/utils/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateApiKey(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static validateDomainName(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "^.+\\.(aihelp|aihelpcn).(net|online)$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static validateInitializeCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-static {p1}, Lnet/aihelp/utils/SchemaUtil;->validateApiKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Lnet/aihelp/utils/SchemaUtil;->validateDomainName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Lnet/aihelp/utils/SchemaUtil;->validatePlatformId(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/aihelp/exception/AIHelpInitException;

    const-string p1, "The appId used in AIHelpSupport#init should not be empty!"

    invoke-direct {p0, p1}, Lnet/aihelp/exception/AIHelpInitException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/aihelp/exception/AIHelpInitException;

    const-string p1, "The domain used in AIHelpSupport#init should be exactly same as AIHelp Dashboard configuration."

    invoke-direct {p0, p1}, Lnet/aihelp/exception/AIHelpInitException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/aihelp/exception/AIHelpInitException;

    const-string p1, "The appKey used in AIHelpSupport#init should not be empty!"

    invoke-direct {p0, p1}, Lnet/aihelp/exception/AIHelpInitException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/aihelp/exception/AIHelpInitException;

    const-string p1, "The application used in AIHelpSupport#init can\'t be null!"

    invoke-direct {p0, p1}, Lnet/aihelp/exception/AIHelpInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePlatformId(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
