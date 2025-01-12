.class Lcom/intlgame/friend/SystemShareData;
.super Ljava/lang/Object;
.source "SystemShareData.java"


# instance fields
.field private final IMAGE_MIME:Ljava/lang/String;

.field private final TEXT_GENERAL_MIME:Ljava/lang/String;

.field private image:Landroid/net/Uri;

.field private shareType:Ljava/lang/String;

.field private texts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text/*"

    iput-object v0, p0, Lcom/intlgame/friend/SystemShareData;->TEXT_GENERAL_MIME:Ljava/lang/String;

    const-string v0, "image/*"

    iput-object v0, p0, Lcom/intlgame/friend/SystemShareData;->IMAGE_MIME:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/friend/SystemShareData;->texts:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/intlgame/friend/SystemShareData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getImage()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->image:Landroid/net/Uri;

    return-object v0
.end method

.method getShareType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->shareType:Ljava/lang/String;

    return-object v0
.end method

.method getTexts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->texts:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->title:Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->image:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method setImage(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/SystemShareData;->image:Landroid/net/Uri;

    const-string p1, "image/*"

    iput-object p1, p0, Lcom/intlgame/friend/SystemShareData;->shareType:Ljava/lang/String;

    return-void
.end method

.method setLink(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "text/*"

    iput-object p1, p0, Lcom/intlgame/friend/SystemShareData;->shareType:Ljava/lang/String;

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/friend/SystemShareData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/intlgame/friend/SystemShareData;->title:Ljava/lang/String;

    const-string p1, "text/*"

    iput-object p1, p0, Lcom/intlgame/friend/SystemShareData;->shareType:Ljava/lang/String;

    return-void
.end method
