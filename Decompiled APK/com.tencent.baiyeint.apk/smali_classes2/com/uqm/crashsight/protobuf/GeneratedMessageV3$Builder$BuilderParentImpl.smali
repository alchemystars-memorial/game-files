.class Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuilderParentImpl"
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-void
.end method
