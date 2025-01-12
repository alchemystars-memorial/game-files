.class Lnet/aihelp/ui/webkit/AIHelpJSBridge$Holder;
.super Ljava/lang/Object;
.source "AIHelpJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/webkit/AIHelpJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/aihelp/ui/webkit/AIHelpJSBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;

    invoke-direct {v0}, Lnet/aihelp/ui/webkit/AIHelpJSBridge;-><init>()V

    sput-object v0, Lnet/aihelp/ui/webkit/AIHelpJSBridge$Holder;->INSTANCE:Lnet/aihelp/ui/webkit/AIHelpJSBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/aihelp/ui/webkit/AIHelpJSBridge;
    .locals 1

    sget-object v0, Lnet/aihelp/ui/webkit/AIHelpJSBridge$Holder;->INSTANCE:Lnet/aihelp/ui/webkit/AIHelpJSBridge;

    return-object v0
.end method
