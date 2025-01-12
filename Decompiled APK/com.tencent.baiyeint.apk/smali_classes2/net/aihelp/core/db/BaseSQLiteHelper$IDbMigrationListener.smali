.class public interface abstract Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;
.super Ljava/lang/Object;
.source "BaseSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/db/BaseSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDbMigrationListener"
.end annotation


# virtual methods
.method public abstract onDbMigrationFailed(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V
.end method

.method public abstract onDbMigrationSuccess(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V
.end method
