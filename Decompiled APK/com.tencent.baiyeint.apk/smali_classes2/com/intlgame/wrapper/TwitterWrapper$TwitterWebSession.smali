.class Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;
.super Ljava/lang/Object;
.source "TwitterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/wrapper/TwitterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwitterWebSession"
.end annotation


# static fields
.field private static webOAuthToken:Ljava/lang/String; = ""

.field private static webOAuthTokenSecret:Ljava/lang/String; = ""

.field private static webUserId:Ljava/lang/String; = ""

.field private static webUserName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearSession()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserId:Ljava/lang/String;

    sput-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserName:Ljava/lang/String;

    sput-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthTokenSecret:Ljava/lang/String;

    sput-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthToken:Ljava/lang/String;

    return-void
.end method

.method static getSession()Lcom/intlgame/wrapper/TwitterWrapperSession;
    .locals 5

    new-instance v0, Lcom/intlgame/wrapper/TwitterWrapperSession;

    sget-object v1, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthToken:Ljava/lang/String;

    sget-object v2, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthTokenSecret:Ljava/lang/String;

    sget-object v3, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserId:Ljava/lang/String;

    sget-object v4, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intlgame/wrapper/TwitterWrapperSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static isValid()Z
    .locals 1

    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthTokenSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthToken:Ljava/lang/String;

    sput-object p1, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webOAuthTokenSecret:Ljava/lang/String;

    sput-object p3, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserName:Ljava/lang/String;

    sput-object p2, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->webUserId:Ljava/lang/String;

    return-void
.end method
