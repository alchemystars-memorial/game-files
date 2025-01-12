.class final Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;
.super Ljava/lang/Object;
.source "GetAppsReferrerClientImpl.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/referrer/api/GetAppsReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetAppsReferrerServiceConnection"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "stateListener",
        "Lcom/miui/referrer/api/GetAppsReferrerStateListener;",
        "(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;Lcom/miui/referrer/api/GetAppsReferrerStateListener;)V",
        "mListener",
        "onServiceConnected",
        "",
        "componentName",
        "Landroid/content/ComponentName;",
        "iBinder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "referrer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mListener:Lcom/miui/referrer/api/GetAppsReferrerStateListener;

.field final synthetic this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;


# direct methods
.method public constructor <init>(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;Lcom/miui/referrer/api/GetAppsReferrerStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/referrer/api/GetAppsReferrerStateListener;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->mListener:Lcom/miui/referrer/api/GetAppsReferrerStateListener;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iBinder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "InstallReferrerClient"

    const-string v0, "GetApps Referrer service connected."

    invoke-static {p1, v0}, Lcom/miui/referrer/commons/LogUtils;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    invoke-static {p2}, Lcom/miui/referrer/IGetAppsReferrerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/referrer/IGetAppsReferrerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;->access$setService$p(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;Lcom/miui/referrer/IGetAppsReferrerService;)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;->access$setClientState$p(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;I)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->mListener:Lcom/miui/referrer/api/GetAppsReferrerStateListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/referrer/api/GetAppsReferrerStateListener;->onGetAppsReferrerSetupFinished(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "InstallReferrerClient"

    const-string v0, "GetApps Referrer service disconnected."

    invoke-static {p1, v0}, Lcom/miui/referrer/commons/LogUtils;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;->access$setService$p(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;Lcom/miui/referrer/IGetAppsReferrerService;)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->this$0:Lcom/miui/referrer/api/GetAppsReferrerClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/referrer/api/GetAppsReferrerClientImpl;->access$setClientState$p(Lcom/miui/referrer/api/GetAppsReferrerClientImpl;I)V

    iget-object p1, p0, Lcom/miui/referrer/api/GetAppsReferrerClientImpl$GetAppsReferrerServiceConnection;->mListener:Lcom/miui/referrer/api/GetAppsReferrerStateListener;

    invoke-interface {p1}, Lcom/miui/referrer/api/GetAppsReferrerStateListener;->onGetAppsServiceDisconnected()V

    return-void
.end method
