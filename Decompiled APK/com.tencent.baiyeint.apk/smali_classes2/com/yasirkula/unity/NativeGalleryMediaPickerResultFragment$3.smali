.class Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;
.super Ljava/lang/Object;
.source "NativeGalleryMediaPickerResultFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-static {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->access$000(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancel()V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-static {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->access$000(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sendResultToUnity()V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->dismissAllowingStateLoss()V

    return-void
.end method
