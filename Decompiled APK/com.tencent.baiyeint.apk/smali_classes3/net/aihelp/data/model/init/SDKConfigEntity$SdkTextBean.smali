.class public Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;
.super Ljava/lang/Object;
.source "SDKConfigEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/init/SDKConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkTextBean"
.end annotation


# instance fields
.field private PhoneWel:Ljava/lang/String;

.field private ShowAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneWel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;->PhoneWel:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;->ShowAppName:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneWel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;->PhoneWel:Ljava/lang/String;

    return-void
.end method

.method public setShowAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkTextBean;->ShowAppName:Ljava/lang/String;

    return-void
.end method
