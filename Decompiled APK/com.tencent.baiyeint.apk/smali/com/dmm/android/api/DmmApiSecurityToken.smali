.class public Lcom/dmm/android/api/DmmApiSecurityToken;
.super Ljava/lang/Object;
.source "DmmApiSecurityToken.java"


# static fields
.field private static final UPDATE_THRESHOLD:J = 0x1b7740L

.field private static ourInstance:Lcom/dmm/android/api/DmmApiSecurityToken;


# instance fields
.field private mSecurityToken:Ljava/lang/String;

.field private mUpdatedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/api/DmmApiSecurityToken;

    invoke-direct {v0}, Lcom/dmm/android/api/DmmApiSecurityToken;-><init>()V

    sput-object v0, Lcom/dmm/android/api/DmmApiSecurityToken;->ourInstance:Lcom/dmm/android/api/DmmApiSecurityToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dmm/android/api/DmmApiSecurityToken;->mUpdatedTime:J

    return-void
.end method

.method public static getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/DmmApiSecurityToken;->ourInstance:Lcom/dmm/android/api/DmmApiSecurityToken;

    return-object v0
.end method


# virtual methods
.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/DmmApiSecurityToken;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedSecurityTokenUpdate()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dmm/android/api/DmmApiSecurityToken;->mUpdatedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateSecurityToken(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/dmm/android/api/DmmApiSecurityToken;->mUpdatedTime:J

    iput-object p1, p0, Lcom/dmm/android/api/DmmApiSecurityToken;->mSecurityToken:Ljava/lang/String;

    return-void
.end method
