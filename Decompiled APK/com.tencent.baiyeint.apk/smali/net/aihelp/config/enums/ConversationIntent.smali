.class public final enum Lnet/aihelp/config/enums/ConversationIntent;
.super Ljava/lang/Enum;
.source "ConversationIntent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/config/enums/ConversationIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/config/enums/ConversationIntent;

.field public static final enum BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

.field public static final enum HUMAN_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/aihelp/config/enums/ConversationIntent;

    const-string v1, "BOT_SUPPORT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/config/enums/ConversationIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/config/enums/ConversationIntent;->BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    new-instance v1, Lnet/aihelp/config/enums/ConversationIntent;

    const-string v4, "HUMAN_SUPPORT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/aihelp/config/enums/ConversationIntent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/config/enums/ConversationIntent;->HUMAN_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    new-array v4, v5, [Lnet/aihelp/config/enums/ConversationIntent;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/aihelp/config/enums/ConversationIntent;->$VALUES:[Lnet/aihelp/config/enums/ConversationIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/aihelp/config/enums/ConversationIntent;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/config/enums/ConversationIntent;
    .locals 1

    const-class v0, Lnet/aihelp/config/enums/ConversationIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/config/enums/ConversationIntent;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/config/enums/ConversationIntent;
    .locals 1

    sget-object v0, Lnet/aihelp/config/enums/ConversationIntent;->$VALUES:[Lnet/aihelp/config/enums/ConversationIntent;

    invoke-virtual {v0}, [Lnet/aihelp/config/enums/ConversationIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/config/enums/ConversationIntent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/aihelp/config/enums/ConversationIntent;->value:I

    return v0
.end method
