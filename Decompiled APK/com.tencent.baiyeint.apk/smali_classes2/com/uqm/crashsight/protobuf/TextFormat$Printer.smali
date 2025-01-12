.class public final Lcom/uqm/crashsight/protobuf/TextFormat$Printer;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Printer"
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/TextFormat$Printer;


# instance fields
.field private final b:Z

.field private final c:Lcom/uqm/crashsight/protobuf/TypeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TypeRegistry;->a()Lcom/uqm/crashsight/protobuf/TypeRegistry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;-><init>(ZLcom/uqm/crashsight/protobuf/TypeRegistry;)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    return-void
.end method

.method private constructor <init>(ZLcom/uqm/crashsight/protobuf/TypeRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->b:Z

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->c:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    return-void
.end method

.method static synthetic a()Lcom/uqm/crashsight/protobuf/TextFormat$Printer;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    return-object v0
.end method

.method private static a(IILjava/util/List;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-static {p1, v0, p3}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    move-object p0, v2

    check-cast p0, Ljava/util/Locale;

    new-array p0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    return-void

    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    const-string v0, "{"

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a()V

    invoke-static {p0, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b()V

    const-string p0, "}"

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move-object p0, v2

    check-cast p0, Ljava/util/Locale;

    new-array p0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->c(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(IILjava/util/List;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(IILjava/util/List;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(IILjava/util/List;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(IILjava/util/List;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    invoke-virtual {p1, v3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a()V

    invoke-static {v2, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b()V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$1;->a:[I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p2, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    instance-of p1, p2, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/TextFormat;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->b:Z

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->l:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-interface {p1, v0}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->c:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/TypeRegistry;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "["

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    const-string p1, "] {"

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a()V

    invoke-direct {p0, v0, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b()V

    const-string p1, "}"

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    return v1

    :catch_0
    :cond_3
    :goto_0
    return v3
.end method

.method private c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->v()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->j:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_3

    const-string v0, " {"

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a()V

    goto :goto_2

    :cond_3
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    sget-object p2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p1, p2, :cond_4

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->b()V

    const-string p1, "}"

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->a(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;->c()V

    return-void
.end method

.method private c(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
