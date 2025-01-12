.class Lnet/aihelp/data/logic/FaqPresenter$2;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "FaqPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter;->getFaqFromApiAfterLocalizeFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/FaqPresenter;

.field final synthetic val$sectionOrFaqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$2;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter$2;->val$sectionOrFaqId:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$2;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x3e9

    invoke-static {p1}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/aihelp/utils/FileUtil;->writeFileToDisk(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    new-instance v0, Lnet/aihelp/data/logic/FaqPresenter$2$1;

    invoke-direct {v0, p0}, Lnet/aihelp/data/logic/FaqPresenter$2$1;-><init>(Lnet/aihelp/data/logic/FaqPresenter$2;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$2;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/FaqPresenter;->access$200(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showEmpty([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
