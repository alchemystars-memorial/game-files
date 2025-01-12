.class public Lcom/intlgame/IR$def;
.super Ljava/lang/Object;
.source "IR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/IR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "def"
.end annotation


# static fields
.field public static final ANDROID:I = 0x2

.field public static final CUSTOM_MAIN_ACTIVITY:Ljava/lang/String; = "INTL_GAME_ACTIVITY_CLASS_NAME"

.field public static final DEBUG:Z = true

.field public static final DEFAULT_EMPTY:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_NAME_FRIEND_FORMAT:Ljava/lang/String; = "com.intlgame.friend.%sFriend"

.field public static final DEFAULT_PKG_NAME_LIFE_CYCLE:Ljava/lang/String; = "com.intlgame.%sLifeCycleObserver"

.field public static final LOCAL_NOTIFICATION_CHANNEL_DESCRIPTION:Ljava/lang/String; = "notification channel for intlgame"

.field public static final LOCAL_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "intlgame"

.field public static final LOCAL_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "intlgame"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
