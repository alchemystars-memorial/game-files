.class final Lnet/aihelp/core/util/logger/AIHelpLogger$3;
.super Ljava/lang/Object;
.source "AIHelpLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$matcher:Ljava/util/regex/Matcher;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$tr:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$message:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$matcher:Ljava/util/regex/Matcher;

    iput-object p3, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$tr:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$message:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "inetAddress"

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$tr:Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v4}, Lnet/aihelp/core/util/logger/AIHelpLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$3;->val$tr:Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v0, v3}, Lnet/aihelp/core/util/logger/AIHelpLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
