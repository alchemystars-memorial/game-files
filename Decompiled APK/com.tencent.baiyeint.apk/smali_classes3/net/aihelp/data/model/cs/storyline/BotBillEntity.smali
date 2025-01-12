.class public Lnet/aihelp/data/model/cs/storyline/BotBillEntity;
.super Ljava/lang/Object;
.source "BotBillEntity.java"


# instance fields
.field private isChecked:Z

.field private originJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->originJson:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getOriginJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->originJson:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->isChecked:Z

    return-void
.end method

.method public setOriginJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->originJson:Ljava/lang/String;

    return-void
.end method
