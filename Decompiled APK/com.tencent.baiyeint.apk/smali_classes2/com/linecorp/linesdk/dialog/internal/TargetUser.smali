.class public Lcom/linecorp/linesdk/dialog/internal/TargetUser;
.super Ljava/lang/Object;
.source "TargetUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    }
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isSelected:Ljava/lang/Boolean;

.field private pictureUri:Landroid/net/Uri;

.field private type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->isSelected:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->displayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->pictureUri:Landroid/net/Uri;

    return-void
.end method

.method public static createInstance(Lcom/linecorp/linesdk/LineFriendProfile;)Lcom/linecorp/linesdk/dialog/internal/TargetUser;
    .locals 4

    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineFriendProfile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineFriendProfile;->getAvailableDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineFriendProfile;->getPictureUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static createInstance(Lcom/linecorp/linesdk/LineGroup;)Lcom/linecorp/linesdk/dialog/internal/TargetUser;
    .locals 4

    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineGroup;->getPictureUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getTargetTypeCount()I
    .locals 1

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->pictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->isSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    return-object v0
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->isSelected:Ljava/lang/Boolean;

    return-void
.end method
