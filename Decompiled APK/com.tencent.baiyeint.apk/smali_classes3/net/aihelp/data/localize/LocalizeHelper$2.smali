.class final Lnet/aihelp/data/localize/LocalizeHelper$2;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "LocalizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$mode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/localize/LocalizeHelper$2;->val$mode:I

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iget p1, p0, Lnet/aihelp/data/localize/LocalizeHelper$2;->val$mode:I

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_0

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-static {p1}, Lnet/aihelp/data/localize/LocalizeHelper;->access$000(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/localize/LocalizeHelper$2;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lnet/aihelp/data/localize/LocalizeHelper$2;->val$mode:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p1, Lnet/aihelp/data/localize/config/TextHelper;->INSTANCE:Lnet/aihelp/data/localize/config/TextHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/config/TextHelper;->prepareDataSource()V

    goto :goto_0

    :pswitch_2
    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareNotificationAndHotTopics()V

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->INSTANCE:Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->prepareDataSource()V

    goto :goto_0

    :pswitch_4
    sget-object p1, Lnet/aihelp/data/localize/config/StyleSheetHelper;->INSTANCE:Lnet/aihelp/data/localize/config/StyleSheetHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/config/StyleSheetHelper;->prepareDataSource()V

    goto :goto_0

    :pswitch_5
    sget-object p1, Lnet/aihelp/data/localize/data/LocaleStringHelper;->INSTANCE:Lnet/aihelp/data/localize/data/LocaleStringHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/data/LocaleStringHelper;->prepareDataSource()V

    goto :goto_0

    :pswitch_6
    sget-object p1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/data/OperateHelper;->prepareDataSource()V

    goto :goto_0

    :pswitch_7
    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
