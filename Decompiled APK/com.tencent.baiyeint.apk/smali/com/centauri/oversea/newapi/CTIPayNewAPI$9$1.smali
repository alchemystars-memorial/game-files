.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$1:Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;->this$1:Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "sendBroadcast"

    const-string v4, "resultMsg"

    const-string v5, "resultCode"

    const-string v6, "com.centauri.oversea.REPROVIDE_UPDATED"

    const-string v7, "getInstance"

    const-string v8, "androidx.localbroadcastmanager.content.LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startTimerReProvide callback,retCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CTIPayNewAPI"

    invoke-static {v10, v9}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;->this$1:Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;

    iget-object v9, v9, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-static {v9}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$400(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;->this$1:Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;

    iget-object v9, v9, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-static {v9}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$400(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v10

    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v9, v14, v10

    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v15, v11, [Ljava/lang/Class;

    const-class v16, Landroid/content/Intent;

    aput-object v16, v15, v10

    invoke-virtual {v12, v3, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v14, v15, v10

    invoke-virtual {v12, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v10

    invoke-virtual {v8, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v9, v12, v10

    invoke-virtual {v7, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v9, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v11, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v10

    invoke-virtual {v8, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v9, v2, v10

    invoke-virtual {v0, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "createReflectObject(): reflect exception."

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "APCommMethod"

    invoke-static {v0, v2, v3}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
