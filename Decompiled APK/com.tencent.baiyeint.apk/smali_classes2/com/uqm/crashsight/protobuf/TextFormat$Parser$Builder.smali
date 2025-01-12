.class public Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private e:Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;

.field private f:Lcom/uqm/crashsight/protobuf/TypeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->a:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->b:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->c:Z

    sget-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->d:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->e:Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TypeRegistry;->a()Lcom/uqm/crashsight/protobuf/TypeRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->f:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/TextFormat$Parser;
    .locals 9

    new-instance v8, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->f:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->d:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->e:Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;-><init>(Lcom/uqm/crashsight/protobuf/TypeRegistry;ZZZLcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/uqm/crashsight/protobuf/TextFormatParseInfoTree$Builder;B)V

    return-object v8
.end method
