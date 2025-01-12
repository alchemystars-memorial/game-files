.class final Lnet/aihelp/ui/helper/AttachmentPicker$LazyHolder;
.super Ljava/lang/Object;
.source "AttachmentPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/helper/AttachmentPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/ui/helper/AttachmentPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/ui/helper/AttachmentPicker;

    invoke-direct {v0}, Lnet/aihelp/ui/helper/AttachmentPicker;-><init>()V

    sput-object v0, Lnet/aihelp/ui/helper/AttachmentPicker$LazyHolder;->INSTANCE:Lnet/aihelp/ui/helper/AttachmentPicker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
