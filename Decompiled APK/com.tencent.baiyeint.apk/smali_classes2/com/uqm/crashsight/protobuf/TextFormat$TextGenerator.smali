.class final Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextGenerator"
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->d:Z

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a:Ljava/lang/Appendable;

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;ZB)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->d:Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a:Ljava/lang/Appendable;

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c:Z

    if-eqz v1, :cond_0

    const-string v1, " "

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b:Ljava/lang/StringBuilder;

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->d:Z

    return-void
.end method
