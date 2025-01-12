.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryTicketEntity"
.end annotation


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;->isValid:Z

    return v0
.end method

.method public setIsValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;->isValid:Z

    return-void
.end method
