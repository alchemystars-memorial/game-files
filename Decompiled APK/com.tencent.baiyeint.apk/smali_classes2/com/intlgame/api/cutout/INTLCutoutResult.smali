.class public Lcom/intlgame/api/cutout/INTLCutoutResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLCutoutResult.java"


# instance fields
.field public cutoutRects_:Ljava/util/ArrayList;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "Rect"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "cutoutRects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public hasCutout_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "hasCutout"
    .end annotation
.end field

.field public isCutoutHidden_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "isCutoutHidden"
    .end annotation
.end field

.field public safeArea_:Landroid/graphics/Rect;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "safeArea"
    .end annotation
.end field

.field public screenHeight_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "screenHeight"
    .end annotation
.end field

.field public screenWidth_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "screenWidth"
    .end annotation
.end field

.field public statusBarHeight_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "statusBarHeight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->hasCutout_:Z

    iput-boolean v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->isCutoutHidden_:Z

    iput v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenHeight_:I

    iput v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenWidth_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    const/16 v0, 0x64

    iput v0, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->statusBarHeight_:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rect{hasCutout_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->hasCutout_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isCutoutHidden_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->isCutoutHidden_:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeight_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenHeight_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidth_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenWidth_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", safeArea_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cutoutRects_="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarHeight_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->statusBarHeight_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", method_id_="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->method_id_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ret_code_="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->ret_code_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ret_msg_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->ret_msg_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", third_code_="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->third_code_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", third_msg_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->third_msg_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra_json_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/cutout/INTLCutoutResult;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
