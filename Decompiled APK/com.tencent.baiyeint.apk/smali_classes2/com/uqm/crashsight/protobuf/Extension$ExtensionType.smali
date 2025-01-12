.class public final enum Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

.field public static final enum b:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

.field private static enum c:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

.field private static final synthetic d:[Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->a:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    new-instance v1, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    const-string v3, "MUTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->b:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    new-instance v3, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    const-string v5, "PROTO1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->c:Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->d:[Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->d:[Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/Extension$ExtensionType;

    return-object v0
.end method
