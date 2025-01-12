.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoListOrBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserInfoListOrBuilder"
.end annotation


# virtual methods
.method public abstract getList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
.end method

.method public abstract getListCount()I
.end method

.method public abstract getListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;
.end method

.method public abstract getListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;",
            ">;"
        }
    .end annotation
.end method
