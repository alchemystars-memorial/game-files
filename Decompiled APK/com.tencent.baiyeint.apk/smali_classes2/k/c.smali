.class public final Lk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c$b;
    }
.end annotation


# instance fields
.field public a:Lcom/centauri/oversea/business/pay/ChannelHelper;

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/centauri/oversea/business/pay/CTIOrder;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/centauri/oversea/data/RestoreItem;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/centauri/oversea/newapi/response/ICTICallback;

.field public g:Lk/a;

.field public h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    iput-object v0, p0, Lk/c;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lk/c;->c:Z

    iput-object v0, p0, Lk/c;->f:Lcom/centauri/oversea/newapi/response/ICTICallback;

    iput-object v0, p0, Lk/c;->g:Lk/a;

    return-void
.end method

.method public static a(Lk/c;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/c;->c:Z

    new-instance v0, Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    new-instance v1, Lk/b;

    invoke-direct {v1, p0}, Lk/b;-><init>(Lk/c;)V

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/IabBroadcastReceiver;-><init>(Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;)V

    iput-object v0, p0, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    const-string v0, "APPayManager"

    const-string v1, "Register Receiver."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const-string v2, "Register Receiver.33+"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lk/c;->h:Lcom/centauri/oversea/comm/IabBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(ILcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    const-string v0, "APPayManager"

    const-string v1, "callBackError()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lk/c;->d(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getAppExtends()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;->setAppExtends(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0, p2}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p0, p1}, Lk/c;->g(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lk/c;->e(ILjava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/centauri/oversea/business/pay/ChannelHelper;
    .locals 1

    iget-object v0, p0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/centauri/oversea/business/pay/ChannelHelper;

    invoke-direct {v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;-><init>()V

    iput-object v0, p0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    :cond_0
    iget-object v0, p0, Lk/c;->a:Lcom/centauri/oversea/business/pay/ChannelHelper;

    return-object v0
.end method

.method public final d(I)Lcom/centauri/oversea/business/pay/CTIOrder;
    .locals 1

    iget-object v0, p0, Lk/c;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/business/pay/CTIOrder;

    return-object p1

    :cond_0
    const-string p1, "APPayManager"

    const-string v0, "getOrder(): order is null !!!"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(ILjava/lang/String;)V
    .locals 16

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=exitPay&retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&retMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.oversea.exit"

    invoke-virtual {v0, v2, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lo/b$a;->a:Lo/b;

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v0, Lo/i;->a:Z

    const-string v3, ""

    if-nez v0, :cond_0

    goto/16 :goto_1b

    :cond_0
    sget-object v0, Lo/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Lo/i;->b:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_1
    const-string v0, "&androidSdkVersion="

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "&device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "&manufacturer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sdkVersion="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&showModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&phoneIp="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_4

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v5, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    :goto_0
    move-object v0, v3

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "&availableMemory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    sget-boolean v0, Lo/i;->a:Z

    const/16 v5, 0x2000

    const-string v6, "\\s+"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_6

    move-object v0, v3

    goto/16 :goto_d

    :cond_6
    :try_start_1
    new-instance v13, Ljava/io/FileReader;

    const-string v0, "/proc/meminfo"

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v9, v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v11, v8

    :goto_2
    if-ge v11, v9, :cond_7

    aget-object v12, v15, v11

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\t"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0x2000

    goto :goto_2

    :cond_7
    array-length v0, v15

    if-lt v0, v7, :cond_8

    aget-object v0, v15, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v11, v0

    goto :goto_3

    :cond_8
    const-wide/16 v11, 0x0

    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v14

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_4
    if-eqz v9, :cond_9

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_7
    throw v1

    :catch_3
    const/4 v13, 0x0

    :catch_4
    const/4 v14, 0x0

    :catch_5
    if-eqz v14, :cond_b

    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_b
    :goto_8
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    :goto_9
    const-wide/16 v11, 0x0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_c
    :goto_b
    const-wide/16 v11, 0x0

    :goto_c
    invoke-static {v2, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "&totalMemory="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_e

    goto/16 :goto_19

    :cond_e
    sget-object v0, Lo/i;->k:[Ljava/lang/String;

    aget-object v2, v0, v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    aget-object v2, v0, v10

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1a

    :cond_f
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v5, v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v9, v7

    :goto_e
    array-length v11, v0

    if-ge v9, v11, :cond_11

    sget-object v11, Lo/i;->k:[Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v11, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v0, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    :cond_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v6, v0

    const/4 v9, 0x3

    if-lt v6, v9, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lo/i;->k:[Ljava/lang/String;

    aget-object v9, v6, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    goto :goto_f

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lo/i;->k:[Ljava/lang/String;

    aget-object v9, v6, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    goto :goto_f

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lo/i;->k:[Ljava/lang/String;

    aget-object v9, v6, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_f
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v9, v5

    goto :goto_11

    :catch_7
    move-object v9, v5

    goto :goto_15

    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    :goto_10
    move-object v1, v0

    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_14

    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_13

    :cond_14
    :goto_12
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_14
    throw v1

    :catch_9
    const/4 v2, 0x0

    :catch_a
    const/4 v9, 0x0

    :goto_15
    if-eqz v9, :cond_16

    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    goto :goto_16

    :catch_b
    move-exception v0

    goto :goto_18

    :cond_16
    :goto_16
    if-eqz v2, :cond_17

    :goto_17
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_19

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_19
    sget-object v0, Lo/i;->k:[Ljava/lang/String;

    :cond_18
    :goto_1a
    array-length v2, v0

    if-ne v2, v7, :cond_19

    const-string v2, "&cup="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v8

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&cupFrequency="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lo/i;->b:Ljava/lang/String;

    :goto_1b
    const-string v0, "sdk.oversea.deviceinfo"

    invoke-virtual {v1, v0, v3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    new-instance v1, Lk/c$a;

    invoke-direct {v1}, Lk/c$a;-><init>()V

    invoke-virtual {v0, v1}, Lp/n;->b(Lg/s;)V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lk/c;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/RestoreItem;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start reProvide."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPayManager"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/centauri/oversea/data/RestoreItem;->restore:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    iget-object v3, p0, Lk/c;->g:Lk/a;

    invoke-virtual {v1, v2, v0, v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lk/c;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method
