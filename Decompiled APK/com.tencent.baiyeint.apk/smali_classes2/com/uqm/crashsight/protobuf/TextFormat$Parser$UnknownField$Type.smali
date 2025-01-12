.class final enum Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

.field private static enum b:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

.field private static final synthetic c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    const-string v1, "EXTENSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->b:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    sget-object v4, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField$Type;

    return-object v0
.end method
