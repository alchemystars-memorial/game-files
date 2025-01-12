.class Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;
.super Ljava/lang/Object;
.source "DmmAccessTokenUpdater.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;->this$0:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;->this$0:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;

    const-wide/32 p3, 0x927c0

    invoke-static {p1, p2, p3, p4}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->access$300(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V
    .locals 2

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;->this$0:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;

    const-wide/32 v0, 0x927c0

    invoke-static {p1, p2, v0, v1}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->access$300(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 2

    invoke-static {}, Lcom/intlgame/api/INTLSDK$Auth;->autoLogin()V

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;->this$0:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;

    const-wide/32 v0, 0x927c0

    invoke-static {p1, p2, v0, v1}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->access$300(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;Ljava/lang/Runnable;J)V

    const-string p1, "Dmm access token update successfully."

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method
