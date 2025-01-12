.class public final enum Lnet/aihelp/config/enums/ShowConversationMoment;
.super Ljava/lang/Enum;
.source "ShowConversationMoment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/config/enums/ShowConversationMoment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/config/enums/ShowConversationMoment;

.field public static final enum AFTER_MARKING_UNHELPFUL:Lnet/aihelp/config/enums/ShowConversationMoment;

.field public static final enum ALWAYS:Lnet/aihelp/config/enums/ShowConversationMoment;

.field public static final enum NEVER:Lnet/aihelp/config/enums/ShowConversationMoment;

.field public static final enum ONLY_IN_ANSWER_PAGE:Lnet/aihelp/config/enums/ShowConversationMoment;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/aihelp/config/enums/ShowConversationMoment;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/config/enums/ShowConversationMoment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/config/enums/ShowConversationMoment;->NEVER:Lnet/aihelp/config/enums/ShowConversationMoment;

    new-instance v1, Lnet/aihelp/config/enums/ShowConversationMoment;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    const/16 v5, 0x3ea

    invoke-direct {v1, v3, v4, v5}, Lnet/aihelp/config/enums/ShowConversationMoment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/config/enums/ShowConversationMoment;->ALWAYS:Lnet/aihelp/config/enums/ShowConversationMoment;

    new-instance v3, Lnet/aihelp/config/enums/ShowConversationMoment;

    const-string v5, "ONLY_IN_ANSWER_PAGE"

    const/4 v6, 0x2

    const/16 v7, 0x3eb

    invoke-direct {v3, v5, v6, v7}, Lnet/aihelp/config/enums/ShowConversationMoment;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/aihelp/config/enums/ShowConversationMoment;->ONLY_IN_ANSWER_PAGE:Lnet/aihelp/config/enums/ShowConversationMoment;

    new-instance v5, Lnet/aihelp/config/enums/ShowConversationMoment;

    const-string v7, "AFTER_MARKING_UNHELPFUL"

    const/4 v8, 0x3

    const/16 v9, 0x3ec

    invoke-direct {v5, v7, v8, v9}, Lnet/aihelp/config/enums/ShowConversationMoment;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/aihelp/config/enums/ShowConversationMoment;->AFTER_MARKING_UNHELPFUL:Lnet/aihelp/config/enums/ShowConversationMoment;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/aihelp/config/enums/ShowConversationMoment;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/aihelp/config/enums/ShowConversationMoment;->$VALUES:[Lnet/aihelp/config/enums/ShowConversationMoment;

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

    iput p3, p0, Lnet/aihelp/config/enums/ShowConversationMoment;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/config/enums/ShowConversationMoment;
    .locals 1

    const-class v0, Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/config/enums/ShowConversationMoment;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/config/enums/ShowConversationMoment;
    .locals 1

    sget-object v0, Lnet/aihelp/config/enums/ShowConversationMoment;->$VALUES:[Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-virtual {v0}, [Lnet/aihelp/config/enums/ShowConversationMoment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/config/enums/ShowConversationMoment;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/aihelp/config/enums/ShowConversationMoment;->value:I

    return v0
.end method
