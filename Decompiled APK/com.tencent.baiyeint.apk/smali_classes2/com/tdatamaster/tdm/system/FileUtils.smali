.class public Lcom/tdatamaster/tdm/system/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final MSDK_SHARE_PREFERENCE_FILE_NAME:Ljava/lang/String; = "tdm"

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static instance:Lcom/tdatamaster/tdm/system/FileUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tdatamaster/tdm/system/FileUtils;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/FileUtils;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/system/FileUtils;->instance:Lcom/tdatamaster/tdm/system/FileUtils;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    return-void
.end method

.method private native FileUtilsInit()V
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/system/FileUtils;->instance:Lcom/tdatamaster/tdm/system/FileUtils;

    return-object v0
.end method


# virtual methods
.method public native GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "FileUtils"

    const-string v0, "context is null. initialize failed!"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lcom/tdatamaster/tdm/system/FileUtils;->FileUtilsInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public deleteSharePreference(Ljava/lang/String;Z)V
    .locals 1

    iget-object p2, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string p1, "FileUtils"

    const-string p2, "mContext is null"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteSharePreference(Z)V
    .locals 1

    const-string v0, "tdm"

    invoke-virtual {p0, v0, p1}, Lcom/tdatamaster/tdm/system/FileUtils;->deleteSharePreference(Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteSharePreferenceItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string p1, "FileUtils"

    const-string p2, "mContext is null"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteSharePreferenceItem(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tdm"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tdatamaster/tdm/system/FileUtils;->deleteSharePreferenceItem(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getSharePreferenceByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    const-string v0, ""

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "FileUtils"

    const-string p2, "mContext is null"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSharePreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "tdm"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tdatamaster/tdm/system/FileUtils;->getSharePreferenceByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setSharePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iget-object p4, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "FileUtils"

    const-string p2, "mContext is null"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setSharePreference(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "tdm"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tdatamaster/tdm/system/FileUtils;->setSharePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
