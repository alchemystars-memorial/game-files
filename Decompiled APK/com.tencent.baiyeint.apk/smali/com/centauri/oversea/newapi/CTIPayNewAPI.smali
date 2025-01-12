.class public Lcom/centauri/oversea/newapi/CTIPayNewAPI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/CTIPayNewAPI$InstanceHolder;
    }
.end annotation


# static fields
.field public static final BGL_ID:Ljava/lang/String; = "900055685"

.field public static final BGL_SP_NAME:Ljava/lang/String;

.field public static final CRASHS_ID:Ljava/lang/String; = "cae502e5c3"

.field public static final NET_DETECT_ACTION:Ljava/lang/String; = "com.centauri.oversea.newnetwork.service.APNetDetectService"

.field public static final RE_PROVIDE_ACTION:Ljava/lang/String; = "com.centauri.oversea.REPROVIDE_UPDATED"

.field public static final R_CRASH_SP_NAME:Ljava/lang/String; = "RCrashSDKInfo"

.field public static final TAG:Ljava/lang/String; = "CTIPayNewAPI"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private hasInit:Z

.field private isReprovideTimerOn:Z

.field private lastClickTime:J

.field public logEnable:Z

.field private logInfo:La/a;

.field private networkChangeReceiver:Lcom/centauri/oversea/comm/NetWorkChangeReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/g;->a:Ljava/util/regex/Pattern;

    const-string v1, "ravo"

    const-string v2, "niform"

    const-string v3, "olf"

    const-string v4, "ima"

    const-string v5, "ankee"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/g;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SdkInfos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->BGL_SP_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->lastClickTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->hasInit:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isReprovideTimerOn:Z

    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logEnable:Z

    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logInfo:La/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isReprovideTimerOn:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->startTimerReProvide()V

    return-void
.end method

.method public static synthetic access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reportData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->startIPDetectService(Lcom/centauri/oversea/newapi/params/InitParams;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initCfg(Landroid/app/Activity;)V

    return-void
.end method

.method private checkFlagStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->hasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call init() api first !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGetIPAndGetKey(Lcom/centauri/oversea/newapi/params/InitParams;)Z
    .locals 7

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lp/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lp/c;->a:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xdbba00

    cmp-long v0, v1, v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lp/n$a;->a:Lp/n;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lp/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needGetIP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; needChangeKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTIPayNewAPI"

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->startIPDetectService(Lcom/centauri/oversea/newapi/params/InitParams;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v4, Lp/n$a;->a:Lp/n;

    new-instance v5, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;

    invoke-direct {v5, p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/params/InitParams;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lq/l;

    invoke-direct {v6}, Lq/l;-><init>()V

    invoke-static {p1}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object p1

    iput-object p1, v6, Lp/a;->x:Lp/o;

    invoke-virtual {v6}, Lq/l;->y()Lq/l;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    new-instance p1, Lp/h;

    invoke-direct {p1, v4, v5}, Lp/h;-><init>(Lp/n;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V

    iget-object v4, v4, Lp/n;->a:Lg/o;

    new-instance v5, Lq/k;

    invoke-direct {v5, p1}, Lq/k;-><init>(Lg/s;)V

    invoke-virtual {v4, v6, v5}, Lg/o;->a(Lg/i;Lg/h;)V

    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private initCfg(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->BGL_SP_NAME:Ljava/lang/String;

    const-string v2, "900055685"

    invoke-static {v0, v1, v2}, Lo/e;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    const-string v1, "RCrashSDKInfo"

    invoke-static {v0, v1, v2}, Lo/e;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cras"

    const-string v1, "encodeKey"

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->EncodeByXor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hSigh"

    invoke-static {v2, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->EncodeByXor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tSdkInfos"

    invoke-static {v3, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->EncodeByXor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->DecodeByXor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cae502e5c3"

    invoke-static {v4, v0, v1}, Lo/e;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initReport(Landroid/content/Context;)V

    return-void
.end method

.method private initCfgAsync(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$11;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initLogModule(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logInfo:La/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, La/a;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logInfo:La/a;

    const-string v0, "CentauriPay"

    iput-object v0, p1, La/a;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logEnable:Z

    iput-boolean v0, p1, La/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, La/a;->h:Z

    invoke-static {p1}, Lcom/centauri/comm/CTILog;->init(La/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initReport(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$12;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$12;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-string/jumbo v1, "sys_id"

    const-string v2, "3_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cmd"

    const-string v2, "ReportData"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "req_src"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uin_type"

    const-string v2, "game"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scene"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_os"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v2, "offer_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string/jumbo v2, "uin"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v2, "4.06.081"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lo/i;->a:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_guid"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lo/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi_ssid"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lo/g;->e(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->g()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sys_version"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "showModel"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "user_ip"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tran_time"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/g;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const-string v2, ""

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/g;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sign="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lp/b;

    invoke-direct {p1}, Lp/b;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private isFastClick()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->lastClickTime:J

    return v2
.end method

.method private loadOutConfig()V
    .locals 8

    const-string v0, "CTIPayNewAPI"

    iget-object v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lo/g;->a:Ljava/util/regex/Pattern;

    const-string v3, "Ike"

    const-string v4, "ce"

    const-string v5, "elta"

    const-string v6, "lpha"

    const-string v7, "ierra"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/g;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GdprOn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    sput-boolean v2, Lo/i;->a:Z

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "isReprovideTimerOn"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isReprovideTimerOn:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCentuariGdprOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lo/i;->a:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isReprovideTimerOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isReprovideTimerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "loadOutConfig() exception: "

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 0

    invoke-static {}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->a()V

    return-void
.end method

.method private reportData(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lp/n$a;->a:Lp/n;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lp/n;->b(Lg/s;)V

    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;
    .locals 1

    sget-object v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$InstanceHolder;->instance:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    return-object v0
.end method

.method private startIPDetectService(Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CTIPayNewAPI"

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    const-string v4, "com.centauri.oversea.newnetwork.service.APNetDetectService"

    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "service registered"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lr/b;->a(Landroid/content/Context;Lcom/centauri/oversea/newapi/params/InitParams;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "no need to detect"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private startTimerReProvide()V
    .locals 8

    const-string v0, "CTIPayNewAPI"

    const-string/jumbo v1, "startTimerReProvide."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lo/n;

    invoke-direct {v0}, Lo/n;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lo/n;->a:I

    const-wide/16 v1, 0x7530

    iput-wide v1, v0, Lo/n;->b:J

    new-instance v1, Lo/n$b;

    new-instance v2, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V

    invoke-direct {v1, v2}, Lo/n$b;-><init>(Lo/n$a;)V

    iput-object v1, v0, Lo/n;->d:Lo/n$b;

    sget-boolean v1, Lo/n;->e:Z

    if-nez v1, :cond_1

    iget-wide v1, v0, Lo/n;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, v0, Lo/n;->c:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lo/n;->c:Ljava/util/Timer;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lo/n;->e:Z

    iget-object v2, v0, Lo/n;->c:Ljava/util/Timer;

    new-instance v3, Lo/m;

    invoke-direct {v3, v0}, Lo/m;-><init>(Lo/n;)V

    iget-wide v6, v0, Lo/n;->b:J

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->hasInit:Z

    sget-object v1, Lk/c$b;->a:Lk/c;

    iget-object v2, v1, Lk/c;->d:Ljava/util/LinkedList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iput-object v3, v1, Lk/c;->d:Ljava/util/LinkedList;

    :cond_0
    iget-object v2, v1, Lk/c;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v3, v1, Lk/c;->e:Ljava/util/ArrayList;

    :cond_1
    iput-object v3, v1, Lk/c;->f:Lcom/centauri/oversea/newapi/response/ICTICallback;

    iput-object v3, v1, Lk/c;->g:Lk/a;

    iput-object v3, v1, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    iget-object v2, v1, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, v1, Lk/c;->c:Z

    iput-object v3, v1, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    const-string v0, "APPayManager"

    const-string v1, "UnRegister GooglePlay BroadcastReceiver."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->networkChangeReceiver:Lcom/centauri/oversea/comm/NetWorkChangeReceiver;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->networkChangeReceiver:Lcom/centauri/oversea/comm/NetWorkChangeReceiver;

    :cond_3
    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "sdk.centauri.api.call"

    const-string v2, "name=dispose"

    invoke-virtual {v0, v1, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEnv()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    invoke-virtual {v0}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createIntroInfoChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/CTIBaseIntroInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    new-instance v2, Lcom/centauri/oversea/newapi/CTIPayNewAPI$8;

    invoke-direct {v2, p0, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$8;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->getIntroInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string p3, "name=getintropriceinfo"

    invoke-virtual {p1, p2, p3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    invoke-virtual {v0}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createProductInfo(Ljava/lang/String;)Lk/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/centauri/oversea/api/request/CTIBaseRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "garena"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lk/d;->getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string p3, "getproductinfo"

    invoke-virtual {p1, p2, p3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getProductInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    invoke-virtual {v0}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createProductInfo(Ljava/lang/String;)Lk/d;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;

    invoke-direct {v0, p0, p4}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    invoke-interface {p2, p1, p3, v0}, Lk/d;->getProductInfo(Landroid/app/Activity;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string p3, "name=getproductinfo"

    invoke-virtual {p1, p2, p3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    invoke-virtual {v0}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createProductInfo(Ljava/lang/String;)Lk/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$6;

    invoke-direct {v1, p0, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$6;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    invoke-interface {p1, v0, p2, v1}, Lk/d;->getProductInfo(Landroid/content/Context;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string p3, "name=getproductinfo&getProductType=payment"

    invoke-virtual {p1, p2, p3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getReleaseIDC()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->hasInit:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initLogModule(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->loadOutConfig()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    iget-object v1, v0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-direct {v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;-><init>()V

    iput-object v1, v0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    :cond_0
    iget-object v1, v0, Lk/c;->b:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lk/c;->b:Landroid/util/SparseArray;

    :cond_1
    iget-object v1, v0, Lk/c;->g:Lk/a;

    if-nez v1, :cond_2

    new-instance v1, Lk/a;

    invoke-direct {v1}, Lk/a;-><init>()V

    iput-object v1, v0, Lk/c;->g:Lk/a;

    :cond_2
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/centauri/oversea/comm/GlobalData;->init(Lcom/centauri/oversea/newapi/params/InitParams;)V

    invoke-direct {p0, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkGetIPAndGetKey(Lcom/centauri/oversea/newapi/params/InitParams;)Z

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initCfgAsync(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->registerReceiver()V

    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string v0, "name=init"

    invoke-virtual {p1, p2, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "init"

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reportData(Ljava/lang/String;)V

    return-void
.end method

.method public isLogEnable()Z
    .locals 1

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v0

    iget-boolean v0, v0, La/a;->c:Z

    return v0
.end method

.method public mall(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/MallParams;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 9

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.centauri.oversea.mall.CTIMall"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "singleton"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "mall"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v2

    const-class v6, Lcom/centauri/oversea/newapi/params/MallParams;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Lcom/centauri/oversea/api/ICTICallBack;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v3, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;

    invoke-direct {v3, p0, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTICallBack;)V

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v7

    aput-object v3, p3, v8

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "mall exception: "

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CTIPayNewAPI"

    invoke-static {p3, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string p3, "name=mall"

    invoke-virtual {p1, p2, p3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public net(Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 5

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/NetParams;->getMpReqType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_short_openid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lp/n$a;->a:Lp/n;

    new-instance v2, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;

    invoke-direct {v2, p0, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lq/l;

    invoke-direct {p2}, Lq/l;-><init>()V

    const-string v3, "info"

    iput-object v3, p2, Lp/a;->v:Ljava/lang/String;

    invoke-static {p1}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object p1

    iput-object p1, p2, Lp/a;->x:Lp/o;

    iput-object v0, p2, Lq/l;->A:Ljava/lang/String;

    invoke-virtual {p2}, Lq/l;->y()Lq/l;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lp/n;->a:Lg/o;

    new-instance v3, Lq/k;

    new-instance v4, Lp/i;

    invoke-direct {v4, v1, v2, v0}, Lp/i;-><init>(Lp/n;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lq/k;-><init>(Lg/s;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lp/n$a;->a:Lp/n;

    new-instance v2, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;

    invoke-direct {v2, p0, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lq/j;

    invoke-direct {p2}, Lq/j;-><init>()V

    invoke-static {p1}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object p1

    iput-object p1, p2, Lp/a;->x:Lp/o;

    iput-object v0, p2, Lp/a;->w:Ljava/lang/String;

    invoke-virtual {p2}, Lq/j;->z()Lq/j;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lp/n;->a:Lg/o;

    new-instance v3, Lq/i;

    new-instance v4, Lp/j;

    invoke-direct {v4, v1, v2, v0}, Lp/j;-><init>(Lp/n;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lq/i;-><init>(Lg/s;)V

    :goto_0
    invoke-virtual {p1, p2, v3}, Lg/o;->a(Lg/i;Lg/h;)V

    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.centauri.api.call"

    const-string v0, "name=net"

    invoke-virtual {p1, p2, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 11

    const-string v0, "encrypt_redirect_url"

    const-string v1, "data"

    const-string v2, "APPayManager"

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isFastClick()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "CTIPayNewAPI"

    const-string p2, "fast click"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "isNetworkAvailable(): "

    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "APTools"

    invoke-static {v5, v6, v7}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    move v5, v4

    :goto_0
    const-string v6, ""

    if-nez v5, :cond_2

    new-instance p2, Lo/l$a;

    invoke-direct {p2, p1}, Lo/l$a;-><init>(Landroid/content/Context;)V

    const-string v0, "error"

    iput-object v0, p2, Lo/l$a;->b:Ljava/lang/String;

    const-string/jumbo v0, "unipay_error_network_not_connected"

    invoke-static {p1, v0}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lo/l$a;->c:Ljava/lang/String;

    const-string/jumbo v0, "unipay_tip_setting"

    invoke-static {p1, v0}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/f;

    invoke-direct {v1, p1}, Lo/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lo/l$a;->d:Ljava/lang/String;

    iput-object v1, p2, Lo/l$a;->g:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean v4, p2, Lo/l$a;->f:Z

    invoke-virtual {p2}, Lo/l$a;->a()Lo/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 p2, -0x4

    const-string v0, "Network not connected."

    invoke-direct {p1, p2, v6, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void

    :cond_2
    new-instance v5, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;

    invoke-direct {v5, p0, p3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTICallBack;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    const-string p3, "gw_first_screen_showdialog"

    invoke-static {p3}, Lo/q;->b(Ljava/lang/String;)V

    sget-object p3, Lk/c$b;->a:Lk/c;

    iget-object v7, p3, Lk/c;->b:Landroid/util/SparseArray;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v4, v3

    :cond_3
    iget-object v3, p3, Lk/c;->b:Landroid/util/SparseArray;

    new-instance v7, Lcom/centauri/oversea/business/pay/CTIOrder;

    invoke-direct {v7, p2, v5}, Lcom/centauri/oversea/business/pay/CTIOrder;-><init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p3, p3, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/centauri/oversea/business/pay/ChannelHelper;->isH5Channel(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/content/Intent;

    const-class v3, Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p3, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->isLogEnable()Z

    move-result v7

    const-string v8, "LogEnable"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PayChannel"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "OrderKey"

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v4

    const-string v7, "h5_mall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "debugUrl"

    if-eqz v4, :cond_4

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->toMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v2, "offerId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v2, "openId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string/jumbo v2, "zoneId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v2, "env"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/g;->r(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v6, "pay_info"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "package_name_validation"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " packageNameValidation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v1, -0x1

    const-string v2, "9003"

    const-string v4, "Package name verification failed."

    invoke-direct {v0, v1, v2, v4}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "redirect_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "redirect_url = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lo/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayStr = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->toMap()Ljava/util/HashMap;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    const-string v2, "idc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lo/g;->o(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayParams"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string/jumbo p3, "start_proxy_activity"

    invoke-static {p3}, Lo/q;->b(Ljava/lang/String;)V

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "order_key"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_4
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p3, "name=pay&productid="

    invoke-static {p3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sdk.centauri.api.call"

    invoke-virtual {p1, p3, p2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 7

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkFlagStart()V

    sget-object v0, Lk/c$b;->a:Lk/c;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    invoke-virtual {v0}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->restoreChannelList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v0, Lk/c;->d:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lk/c;->d:Ljava/util/LinkedList;

    :cond_1
    iget-object v3, v0, Lk/c;->e:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lk/c;->e:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createRestoreChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/CTIBaseRestore;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lk/c;->d:Ljava/util/LinkedList;

    new-instance v6, Lcom/centauri/oversea/data/RestoreItem;

    invoke-direct {v6, v3, v4}, Lcom/centauri/oversea/data/RestoreItem;-><init>(Ljava/lang/String;Lcom/centauri/oversea/business/CTIBaseRestore;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need restore channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPayManager"

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/centauri/oversea/business/pay/ChannelHelper;->isPromoCodeChannel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lk/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lk/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver restore channel: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lk/c;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iput-object v1, v0, Lk/c;->f:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-virtual {v0}, Lk/c;->f()V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    const-string v0, "don\'t need reProvide."

    invoke-interface {v1, p1, v0}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :goto_2
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string v0, "sdk.centauri.api.call"

    const-string v1, "name=reprovide"

    invoke-virtual {p1, v0, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public setLogEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v0

    iput-boolean p1, v0, La/a;->c:Z

    invoke-static {v0}, Lcom/centauri/comm/CTILog;->init(La/a;)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->logEnable:Z

    :goto_0
    return-void
.end method

.method public showCentauriUI(I)V
    .locals 1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/comm/GlobalData;->setMUILevel(I)V

    return-void
.end method
