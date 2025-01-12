.class Lnet/aihelp/core/util/logger/AIHelpLogger$2;
.super Ljava/lang/Object;
.source "AIHelpLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/logger/AIHelpLogger;->logMessageToDatabase(ILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/logger/AIHelpLogger;

.field final synthetic val$level:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$stacktrace:Ljava/lang/String;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/logger/AIHelpLogger;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->this$0:Lnet/aihelp/core/util/logger/AIHelpLogger;

    iput p2, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$level:I

    iput-object p3, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$stacktrace:Ljava/lang/String;

    iput-wide p5, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$timeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->this$0:Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-static {v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->access$000(Lnet/aihelp/core/util/logger/AIHelpLogger;)Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    move-result-object v1

    iget v2, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$level:I

    iget-object v3, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$stacktrace:Ljava/lang/String;

    iget-wide v5, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$2;->val$timeStamp:J

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;->insert(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
