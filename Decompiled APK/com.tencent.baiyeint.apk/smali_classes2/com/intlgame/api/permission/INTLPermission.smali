.class public Lcom/intlgame/api/permission/INTLPermission;
.super Ljava/lang/Object;
.source "INTLPermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native applyPermissions(Ljava/lang/String;)V
.end method

.method public static native checkPermissions(Ljava/lang/String;)V
.end method

.method public static native gotoSystemSetting(Ljava/lang/String;)V
.end method

.method public static native setPermissionObserver(Lcom/intlgame/api/permission/INTLPermissionObserver;)V
.end method
