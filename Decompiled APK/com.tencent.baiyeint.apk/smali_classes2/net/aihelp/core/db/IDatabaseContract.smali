.class public interface abstract Lnet/aihelp/core/db/IDatabaseContract;
.super Ljava/lang/Object;
.source "IDatabaseContract.java"


# virtual methods
.method public abstract getCreateTableQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getDatabaseVersion()I
.end method

.method public abstract getMigratorsForUpgrade(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/db/IMigrateContract;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
