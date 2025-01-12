.class final enum Lcom/uqm/crashsight/protobuf/MapField$StorageMode;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StorageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/MapField$StorageMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

.field public static final enum b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

.field public static final enum c:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

.field private static final synthetic d:[Lcom/uqm/crashsight/protobuf/MapField$StorageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    new-instance v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    const-string v3, "LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    new-instance v3, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->c:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->d:[Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/MapField$StorageMode;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/MapField$StorageMode;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->d:[Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    return-object v0
.end method
