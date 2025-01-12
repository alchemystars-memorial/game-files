.class public Lcom/uqm/crashsight/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$UnknownField;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;-><init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;)V

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;-><init>()V

    return-object v0
.end method
