.class Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$2;
.super Ljava/lang/Object;
.source "NativeGalleryMediaPickerResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;


# direct methods
.method constructor <init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$2;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$2;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->access$000(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->execute()V

    return-void
.end method
