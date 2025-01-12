.class final Lnet/aihelp/data/logic/MqttCallbackImpl$LazyHolder;
.super Ljava/lang/Object;
.source "MqttCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/logic/MqttCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/data/logic/MqttCallbackImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/data/logic/MqttCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/data/logic/MqttCallbackImpl;-><init>(Lnet/aihelp/data/logic/MqttCallbackImpl$1;)V

    sput-object v0, Lnet/aihelp/data/logic/MqttCallbackImpl$LazyHolder;->INSTANCE:Lnet/aihelp/data/logic/MqttCallbackImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
