.class public Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;
.super Ljava/lang/Object;
.source "InitEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/init/InitEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCheckSettingBean"
.end annotation


# instance fields
.field private ping:Ljava/lang/String;

.field private traceroute:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->ping:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceroute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->traceroute:Ljava/lang/String;

    return-object v0
.end method

.method public setPing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->ping:Ljava/lang/String;

    return-void
.end method

.method public setTraceroute(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->traceroute:Ljava/lang/String;

    return-void
.end method
