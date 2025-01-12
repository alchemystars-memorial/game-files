.class public final synthetic Lcom/dmm/android/lib/auth/AuthActivityKt$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dmm/android/lib/auth/AuthenticationType;->values()[Lcom/dmm/android/lib/auth/AuthenticationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dmm/android/lib/auth/AuthActivityKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/AuthenticationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/AuthenticationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
