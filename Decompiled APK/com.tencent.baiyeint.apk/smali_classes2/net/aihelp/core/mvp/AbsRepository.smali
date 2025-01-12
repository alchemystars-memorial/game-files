.class public abstract Lnet/aihelp/core/mvp/AbsRepository;
.super Ljava/lang/Object;
.source "AbsRepository.java"

# interfaces
.implements Lnet/aihelp/core/mvp/IRepository;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSp:Lnet/aihelp/utils/SpUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsRepository;->mContext:Landroid/content/Context;

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsRepository;->mSp:Lnet/aihelp/utils/SpUtil;

    return-void
.end method

.method private updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p3, "String"

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
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


# virtual methods
.method protected doSave(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/mvp/AbsRepository;->mSp:Lnet/aihelp/utils/SpUtil;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lnet/aihelp/common/API;

    invoke-direct {p0, v0, p1, p2}, Lnet/aihelp/core/mvp/AbsRepository;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateConst(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-class v0, Lnet/aihelp/common/Const;

    invoke-direct {p0, v0, p1, p2}, Lnet/aihelp/core/mvp/AbsRepository;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateUserProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lnet/aihelp/common/UserProfile;

    invoke-direct {p0, v0, p1, p2}, Lnet/aihelp/core/mvp/AbsRepository;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
