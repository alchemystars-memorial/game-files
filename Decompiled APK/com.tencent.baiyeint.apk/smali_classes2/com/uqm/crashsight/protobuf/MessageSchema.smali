.class final Lcom/uqm/crashsight/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/uqm/crashsight/protobuf/MessageLite;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

.field private final p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

.field private final q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/uqm/crashsight/protobuf/NewInstanceSchema;",
            "Lcom/uqm/crashsight/protobuf/ListFieldSchema;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    iput p3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    iput p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    instance-of p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->i:Z

    iput-boolean p6, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    iput-boolean p7, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    iput-object p8, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    iput p9, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    iput p10, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    iput-object p11, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    iput-object p12, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    iput-object p13, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    iput-object p14, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    iput-object p5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    iput-object p15, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    return-void
.end method

.method private a(II)I
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x3

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-ne v5, v7, :cond_b

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    iget-object v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/2addr v6, v7

    shl-int/2addr v6, v15

    add-int/2addr v6, v15

    aget-object v5, v5, v6

    check-cast v5, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    if-eqz v5, :cond_4

    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v6

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v5

    iput-object v5, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_3
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v2, v3

    goto/16 :goto_c

    :pswitch_4
    const/4 v2, 0x2

    if-ne v5, v2, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    const/4 v2, 0x2

    if-ne v5, v2, :cond_b

    invoke-direct {v0, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_6

    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_6
    const/4 v2, 0x2

    if-ne v5, v2, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-nez v4, :cond_7

    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_9

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_9
    :goto_5
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_7
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_9
    if-ne v5, v15, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_a
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x4

    goto :goto_a

    :pswitch_d
    if-ne v5, v15, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    add-int/lit8 v2, v4, 0x8

    :goto_a
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v4

    :goto_c
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {v10}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_1

    invoke-interface {v10}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v11, v12

    :goto_0
    invoke-interface {v10, v11}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x5

    const/4 v9, 0x3

    const/4 v6, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-ne v2, v9, :cond_f

    invoke-direct {p0, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v6, :cond_2

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->i([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->i(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v6, :cond_3

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->h([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->h(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v6, :cond_4

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_1
    check-cast v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    :cond_5
    iget-object v4, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v5, v8, 0x3

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    aget-object v4, v4, v5

    check-cast v4, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    iget-object v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move/from16 v6, p6

    invoke-static {v6, v10, v4, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_6

    iput-object v3, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->l(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v6, :cond_f

    invoke-direct {p0, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v6, :cond_f

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->j(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->k(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v6, :cond_8

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->g([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->g(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v6, :cond_9

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v6, :cond_a

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_a
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v6, :cond_b

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v6, :cond_c

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v6, :cond_d

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_d
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v6, :cond_e

    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->f([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->f(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_f
    :goto_2
    move v1, v4

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-wide/from16 v2, p6

    move-object/from16 v9, p8

    sget-object v4, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    iget-object v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v6, p5, 0x3

    const/4 v10, 0x1

    shl-int/2addr v6, v10

    aget-object v5, v5, v6

    invoke-virtual {v4, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    iget-object v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v11, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v11, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v12, v11, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v1, v2, v3, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v11

    :cond_0
    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v1, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object v11

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v1, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    move/from16 v1, p3

    invoke-static {v7, v1, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v2, :cond_7

    sub-int v3, v8, v1

    if-gt v2, v3, :cond_7

    add-int v13, v1, v2

    iget-object v2, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    move-object v14, v2

    move-object v15, v3

    :goto_0
    if-ge v1, v13, :cond_5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v7, v1

    if-gez v1, :cond_1

    invoke-static {v1, v7, v2, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    :cond_1
    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v4, v1, 0x7

    if-eq v3, v10, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v3

    if-ne v4, v3, :cond_4

    iget-object v4, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-object v15, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v3

    if-ne v4, v3, :cond_4

    iget-object v4, v11, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-object v14, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v1, v7, v2, v8, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_0

    :cond_5
    if-ne v1, v13, :cond_6

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v13

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private static a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema$1;->a:[I

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_6
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_9
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/MessageInfo;",
            "Lcom/uqm/crashsight/protobuf/NewInstanceSchema;",
            "Lcom/uqm/crashsight/protobuf/ListFieldSchema;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MapFieldSchema;",
            ")",
            "Lcom/uqm/crashsight/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_34

    check-cast v0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v9, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-ne v1, v9, :cond_0

    move/from16 v16, v8

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    :goto_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v12, 0xd800

    if-lt v10, v12, :cond_2

    and-int/lit16 v10, v10, 0x1fff

    move v13, v8

    const/16 v14, 0xd

    :goto_1
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_1

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_1

    :cond_1
    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    goto :goto_2

    :cond_2
    move v15, v8

    :goto_2
    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_4

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_3
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_3

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v17

    goto :goto_3

    :cond_3
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v17

    :cond_4
    if-nez v14, :cond_5

    sget-object v14, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    move v2, v7

    move v3, v2

    move v5, v3

    move v11, v5

    move v15, v11

    move-object v6, v14

    move v14, v15

    goto/16 :goto_11

    :cond_5
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_7

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_4
    add-int/lit8 v17, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_6

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v17

    goto :goto_4

    :cond_6
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v17

    :cond_7
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_9

    and-int/lit16 v14, v14, 0x1fff

    const/16 v17, 0xd

    :goto_5
    add-int/lit8 v18, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v12, :cond_8

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int/2addr v14, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_5

    :cond_8
    shl-int v15, v15, v17

    or-int/2addr v14, v15

    move/from16 v15, v18

    :cond_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v12, :cond_b

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v17

    const/16 v17, 0xd

    :goto_6
    add-int/lit8 v19, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_a

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v17

    or-int/2addr v15, v2

    add-int/lit8 v17, v17, 0xd

    move/from16 v2, v19

    goto :goto_6

    :cond_a
    shl-int v2, v2, v17

    or-int/2addr v15, v2

    move/from16 v2, v19

    goto :goto_7

    :cond_b
    move/from16 v2, v17

    :goto_7
    add-int/lit8 v17, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_d

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v17

    const/16 v17, 0xd

    :goto_8
    add-int/lit8 v20, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_c

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int/2addr v2, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v20

    goto :goto_8

    :cond_c
    shl-int v3, v3, v17

    or-int/2addr v2, v3

    move/from16 v3, v20

    goto :goto_9

    :cond_d
    move/from16 v3, v17

    :goto_9
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_f

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v11, v17

    const/16 v17, 0xd

    :goto_a
    add-int/lit8 v20, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v17

    or-int/2addr v3, v11

    add-int/lit8 v17, v17, 0xd

    move/from16 v11, v20

    goto :goto_a

    :cond_e
    shl-int v11, v11, v17

    or-int/2addr v3, v11

    move/from16 v11, v20

    goto :goto_b

    :cond_f
    move/from16 v11, v17

    :goto_b
    add-int/lit8 v17, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_11

    and-int/lit16 v11, v11, 0x1fff

    move/from16 v7, v17

    const/16 v17, 0xd

    :goto_c
    add-int/lit8 v21, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v12, :cond_10

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v17

    or-int/2addr v11, v7

    add-int/lit8 v17, v17, 0xd

    move/from16 v7, v21

    goto :goto_c

    :cond_10
    shl-int v7, v7, v17

    or-int/2addr v11, v7

    move/from16 v7, v21

    goto :goto_d

    :cond_11
    move/from16 v7, v17

    :goto_d
    add-int/lit8 v17, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v12, :cond_13

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v5, v17

    const/16 v17, 0xd

    :goto_e
    add-int/lit8 v22, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_12

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v17

    or-int/2addr v7, v5

    add-int/lit8 v17, v17, 0xd

    move/from16 v5, v22

    goto :goto_e

    :cond_12
    shl-int v5, v5, v17

    or-int/2addr v7, v5

    move/from16 v5, v22

    goto :goto_f

    :cond_13
    move/from16 v5, v17

    :goto_f
    add-int/lit8 v17, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v6, v17

    const/16 v17, 0xd

    :goto_10
    add-int/lit8 v23, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v12, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v17

    or-int/2addr v5, v6

    add-int/lit8 v17, v17, 0xd

    move/from16 v6, v23

    goto :goto_10

    :cond_14
    shl-int v6, v6, v17

    or-int/2addr v5, v6

    move/from16 v17, v23

    :cond_15
    add-int v6, v5, v11

    add-int/2addr v6, v7

    new-array v6, v6, [I

    shl-int/lit8 v7, v13, 0x1

    add-int/2addr v7, v14

    move v14, v2

    move v2, v7

    move v7, v13

    move/from16 v13, v17

    :goto_11
    sget-object v4, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->e()[Ljava/lang/Object;

    move-result-object v23

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move/from16 v24, v2

    mul-int/lit8 v2, v3, 0x3

    new-array v2, v2, [I

    shl-int/2addr v3, v8

    new-array v3, v3, [Ljava/lang/Object;

    add-int v26, v5, v11

    move/from16 v28, v5

    move/from16 v29, v26

    const/4 v11, 0x0

    const/16 v27, 0x0

    :goto_12
    if-ge v13, v9, :cond_33

    add-int/lit8 v30, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const v8, 0xd800

    if-lt v13, v8, :cond_17

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v8, v30

    const/16 v30, 0xd

    :goto_13
    add-int/lit8 v32, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v33, v9

    const v9, 0xd800

    if-lt v8, v9, :cond_16

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v30

    or-int/2addr v13, v8

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v32

    move/from16 v9, v33

    goto :goto_13

    :cond_16
    shl-int v8, v8, v30

    or-int/2addr v13, v8

    move/from16 v8, v32

    goto :goto_14

    :cond_17
    move/from16 v33, v9

    move/from16 v8, v30

    :goto_14
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v30, v9

    const v9, 0xd800

    if-lt v8, v9, :cond_19

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v9, v30

    const/16 v30, 0xd

    :goto_15
    add-int/lit8 v32, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v34, v5

    const v5, 0xd800

    if-lt v9, v5, :cond_18

    and-int/lit16 v5, v9, 0x1fff

    shl-int v5, v5, v30

    or-int/2addr v8, v5

    add-int/lit8 v30, v30, 0xd

    move/from16 v9, v32

    move/from16 v5, v34

    goto :goto_15

    :cond_18
    shl-int v5, v9, v30

    or-int/2addr v8, v5

    move/from16 v9, v32

    goto :goto_16

    :cond_19
    move/from16 v34, v5

    move/from16 v9, v30

    :goto_16
    and-int/lit16 v5, v8, 0xff

    move/from16 v30, v14

    and-int/lit16 v14, v8, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v11, 0x1

    aput v27, v6, v11

    move v11, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v37, v11

    const v11, 0xd800

    if-lt v9, v11, :cond_1c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v38, 0xd

    :goto_17
    add-int/lit8 v39, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v11, :cond_1b

    and-int/lit16 v11, v14, 0x1fff

    shl-int v11, v11, v38

    or-int/2addr v9, v11

    add-int/lit8 v38, v38, 0xd

    move/from16 v14, v39

    const v11, 0xd800

    goto :goto_17

    :cond_1b
    shl-int v11, v14, v38

    or-int/2addr v9, v11

    move/from16 v14, v39

    :cond_1c
    add-int/lit8 v11, v5, -0x33

    move/from16 v38, v14

    const/16 v14, 0x9

    if-eq v11, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v11, v14, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v14, 0xc

    if-ne v11, v14, :cond_1e

    and-int/lit8 v11, v10, 0x1

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1e

    div-int/lit8 v11, v27, 0x3

    shl-int/2addr v11, v14

    add-int/2addr v11, v14

    add-int/lit8 v14, v24, 0x1

    aget-object v24, v23, v24

    aput-object v24, v3, v11

    move/from16 v24, v14

    :cond_1e
    const/4 v14, 0x1

    goto :goto_19

    :cond_1f
    :goto_18
    div-int/lit8 v11, v27, 0x3

    const/4 v14, 0x1

    shl-int/2addr v11, v14

    add-int/2addr v11, v14

    add-int/lit8 v31, v24, 0x1

    aget-object v24, v23, v24

    aput-object v24, v3, v11

    move/from16 v24, v31

    :goto_19
    shl-int/2addr v9, v14

    aget-object v11, v23, v9

    instance-of v14, v11, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1a

    :cond_20
    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v23, v9

    :goto_1a
    move/from16 v39, v15

    invoke-virtual {v4, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v11, v14

    add-int/lit8 v9, v9, 0x1

    aget-object v14, v23, v9

    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_21

    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_1b

    :cond_21
    check-cast v14, Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v23, v9

    :goto_1b
    invoke-virtual {v4, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v9, v14

    move-object/from16 v32, v1

    const/4 v1, 0x0

    move/from16 v48, v24

    move-object/from16 v24, v0

    move/from16 v0, v48

    goto/16 :goto_26

    :cond_22
    move/from16 v37, v11

    move/from16 v39, v15

    add-int/lit8 v11, v24, 0x1

    aget-object v14, v23, v24

    check-cast v14, Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const/16 v15, 0x9

    if-eq v5, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v5, v15, :cond_23

    goto/16 :goto_20

    :cond_23
    const/16 v15, 0x1b

    if-eq v5, v15, :cond_29

    const/16 v15, 0x31

    if-ne v5, v15, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v15, 0xc

    if-eq v5, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v5, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v5, v15, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v15, 0x32

    if-ne v5, v15, :cond_27

    add-int/lit8 v15, v28, 0x1

    aput v27, v6, v28

    div-int/lit8 v24, v27, 0x3

    const/16 v28, 0x1

    shl-int/lit8 v24, v24, 0x1

    add-int/lit8 v28, v11, 0x1

    aget-object v11, v23, v11

    aput-object v11, v3, v24

    and-int/lit16 v11, v8, 0x800

    if-eqz v11, :cond_26

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v11, v28, 0x1

    aget-object v28, v23, v28

    aput-object v28, v3, v24

    move-object/from16 v24, v0

    move/from16 v28, v15

    :goto_1c
    const/4 v0, 0x1

    goto :goto_21

    :cond_26
    move-object/from16 v24, v0

    move/from16 v11, v28

    const/4 v0, 0x1

    move/from16 v28, v15

    goto :goto_21

    :cond_27
    move-object/from16 v24, v0

    goto :goto_1c

    :cond_28
    :goto_1d
    and-int/lit8 v15, v10, 0x1

    move-object/from16 v24, v0

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2b

    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    add-int/lit8 v31, v11, 0x1

    aget-object v11, v23, v11

    aput-object v11, v3, v15

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v24, v0

    const/4 v0, 0x1

    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    add-int/lit8 v31, v11, 0x1

    aget-object v11, v23, v11

    aput-object v11, v3, v15

    :goto_1f
    move/from16 v11, v31

    goto :goto_21

    :cond_2a
    :goto_20
    move-object/from16 v24, v0

    const/4 v0, 0x1

    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v31

    aput-object v31, v3, v15

    :cond_2b
    :goto_21
    invoke-virtual {v4, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v14, v14

    and-int/lit8 v15, v10, 0x1

    if-ne v15, v0, :cond_2f

    const/16 v0, 0x11

    if-gt v5, v0, :cond_2f

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v15, 0xd800

    if-lt v9, v15, :cond_2d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v25, 0xd

    :goto_22
    add-int/lit8 v32, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v25

    or-int/2addr v9, v0

    add-int/lit8 v25, v25, 0xd

    move/from16 v0, v32

    goto :goto_22

    :cond_2c
    shl-int v0, v0, v25

    or-int/2addr v9, v0

    move/from16 v0, v32

    :cond_2d
    const/16 v25, 0x1

    shl-int/lit8 v32, v7, 0x1

    div-int/lit8 v25, v9, 0x20

    add-int v32, v32, v25

    aget-object v15, v23, v32

    move/from16 v35, v0

    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_23

    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v12, v15}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v23, v32

    :goto_23
    move-object/from16 v32, v1

    invoke-virtual {v4, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v1, v9, 0x20

    move/from16 v9, v35

    goto :goto_24

    :cond_2f
    move-object/from16 v32, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_24
    const/16 v15, 0x12

    if-lt v5, v15, :cond_30

    const/16 v15, 0x31

    if-gt v5, v15, :cond_30

    add-int/lit8 v15, v29, 0x1

    aput v14, v6, v29

    move/from16 v38, v9

    move/from16 v29, v15

    goto :goto_25

    :cond_30
    move/from16 v38, v9

    :goto_25
    move v9, v0

    move v0, v11

    move v11, v14

    :goto_26
    add-int/lit8 v14, v27, 0x1

    aput v13, v2, v27

    add-int/lit8 v13, v14, 0x1

    and-int/lit16 v15, v8, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_27

    :cond_31
    const/4 v15, 0x0

    :goto_27
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_32

    const/high16 v8, 0x10000000

    goto :goto_28

    :cond_32
    const/4 v8, 0x0

    :goto_28
    or-int/2addr v8, v15

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v5, v8

    or-int/2addr v5, v11

    aput v5, v2, v14

    add-int/lit8 v27, v13, 0x1

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v9

    aput v1, v2, v13

    move/from16 v14, v30

    move-object/from16 v1, v32

    move/from16 v9, v33

    move/from16 v5, v34

    move/from16 v11, v37

    move/from16 v13, v38

    move/from16 v15, v39

    const/4 v8, 0x1

    move-object/from16 v48, v24

    move/from16 v24, v0

    move-object/from16 v0, v48

    goto/16 :goto_12

    :cond_33
    move-object/from16 v24, v0

    move/from16 v34, v5

    move/from16 v30, v14

    move/from16 v39, v15

    new-instance v0, Lcom/uqm/crashsight/protobuf/MessageSchema;

    invoke-virtual/range {v24 .. v24}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v15

    const/16 v17, 0x0

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move/from16 v13, v39

    move-object/from16 v18, v6

    move/from16 v19, v34

    move/from16 v20, v26

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    invoke-direct/range {v10 .. v25}, Lcom/uqm/crashsight/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V

    return-object v0

    :cond_34
    check-cast v0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-ne v1, v2, :cond_35

    const/16 v38, 0x1

    goto :goto_29

    :cond_35
    const/16 v38, 0x0

    :goto_29
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e()[Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_36

    const/4 v4, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    goto :goto_2a

    :cond_36
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v2

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v3

    move/from16 v35, v2

    move/from16 v36, v3

    :goto_2a
    array-length v2, v1

    mul-int/lit8 v3, v2, 0x3

    new-array v3, v3, [I

    shl-int/2addr v2, v4

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2b
    if-ge v5, v4, :cond_39

    aget-object v8, v1, v5

    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v9

    sget-object v10, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    if-ne v9, v10, :cond_37

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_37
    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v9

    const/16 v10, 0x12

    if-lt v9, v10, :cond_38

    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_38

    add-int/lit8 v7, v7, 0x1

    :cond_38
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_39
    const/4 v4, 0x0

    if-lez v6, :cond_3a

    new-array v5, v6, [I

    goto :goto_2d

    :cond_3a
    move-object v5, v4

    :goto_2d
    if-lez v7, :cond_3b

    new-array v4, v7, [I

    :cond_3b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d()[I

    move-result-object v6

    if-nez v6, :cond_3c

    sget-object v6, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    :cond_3c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2e
    array-length v12, v1

    if-ge v7, v12, :cond_4a

    aget-object v12, v1, v7

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v13

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->d()Lcom/uqm/crashsight/protobuf/OneofInfo;

    move-result-object v14

    if-eqz v14, :cond_3d

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    const/16 v16, 0x33

    add-int/lit8 v15, v15, 0x33

    invoke-virtual {v14}, Lcom/uqm/crashsight/protobuf/OneofInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 p0, v0

    move-object/from16 v23, v1

    invoke-static/range {v17 .. v17}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v14}, Lcom/uqm/crashsight/protobuf/OneofInfo;->a()Ljava/lang/reflect/Field;

    move-result-object v1

    move v14, v0

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    :goto_2f
    long-to-int v0, v0

    const/4 v1, 0x0

    :goto_30
    move/from16 v48, v14

    move v14, v0

    move/from16 v0, v48

    goto :goto_31

    :cond_3d
    move-object/from16 p0, v0

    move-object/from16 v23, v1

    const/16 v16, 0x33

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v1, v14

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    if-nez v38, :cond_3e

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->d()Z

    move-result v14

    if-nez v14, :cond_3e

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->e()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    move v14, v1

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    goto :goto_30

    :cond_3e
    move v14, v1

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v14

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_31

    :cond_3f
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_2f

    :goto_31
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v17

    aput v17, v3, v8

    add-int/lit8 v17, v8, 0x1

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->j()Z

    move-result v24

    if-eqz v24, :cond_40

    const/high16 v24, 0x20000000

    goto :goto_32

    :cond_40
    const/16 v24, 0x0

    :goto_32
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->i()Z

    move-result v25

    if-eqz v25, :cond_41

    const/high16 v25, 0x10000000

    goto :goto_33

    :cond_41
    const/16 v25, 0x0

    :goto_33
    or-int v24, v24, v25

    shl-int/lit8 v15, v15, 0x14

    or-int v15, v24, v15

    or-int/2addr v0, v15

    aput v0, v3, v17

    add-int/lit8 v0, v8, 0x2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v14

    aput v1, v3, v0

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->l()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    div-int/lit8 v1, v8, 0x3

    const/4 v14, 0x1

    shl-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v2, v1

    if-eqz v0, :cond_42

    add-int/lit8 v1, v1, 0x1

    aput-object v0, v2, v1

    goto :goto_34

    :cond_42
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_43

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    aput-object v0, v2, v1

    :cond_43
    :goto_34
    const/4 v14, 0x1

    goto :goto_35

    :cond_44
    if-eqz v0, :cond_45

    div-int/lit8 v1, v8, 0x3

    const/4 v14, 0x1

    shl-int/2addr v1, v14

    add-int/2addr v1, v14

    aput-object v0, v2, v1

    goto :goto_35

    :cond_45
    const/4 v14, 0x1

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_46

    div-int/lit8 v0, v8, 0x3

    shl-int/2addr v0, v14

    add-int/2addr v0, v14

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v1

    aput-object v1, v2, v0

    :cond_46
    :goto_35
    array-length v0, v6

    if-ge v9, v0, :cond_47

    aget v0, v6, v9

    if-ne v0, v13, :cond_47

    add-int/lit8 v0, v9, 0x1

    aput v8, v6, v9

    move v9, v0

    :cond_47
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    if-ne v0, v1, :cond_48

    add-int/lit8 v0, v10, 0x1

    aput v8, v5, v10

    move v10, v0

    const/16 v1, 0x12

    goto :goto_36

    :cond_48
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_49

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v0

    const/16 v13, 0x31

    if-gt v0, v13, :cond_49

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-static {v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v12, v13

    aput v12, v4, v11

    move v11, v0

    :cond_49
    :goto_36
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    goto/16 :goto_2e

    :cond_4a
    move-object/from16 p0, v0

    if-nez v5, :cond_4b

    sget-object v5, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    :cond_4b
    if-nez v4, :cond_4c

    sget-object v4, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    :cond_4c
    array-length v0, v6

    array-length v1, v5

    add-int/2addr v0, v1

    array-length v1, v4

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v6

    array-length v8, v5

    invoke-static {v5, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v6

    array-length v8, v5

    add-int/2addr v1, v8

    array-length v8, v4

    invoke-static {v4, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/uqm/crashsight/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v37

    const/16 v39, 0x1

    array-length v4, v6

    array-length v6, v6

    array-length v5, v5

    add-int v42, v6, v5

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v2

    move-object/from16 v40, v0

    move/from16 v41, v4

    move-object/from16 v43, p1

    move-object/from16 v44, p2

    move-object/from16 v45, p3

    move-object/from16 v46, p4

    move-object/from16 v47, p5

    invoke-direct/range {v32 .. v47}, Lcom/uqm/crashsight/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V

    return-object v1
.end method

.method private a(I)Lcom/uqm/crashsight/protobuf/Schema;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a()Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c(I)Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->b()Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v3, v0, p2

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    move-object v5, v0

    check-cast v5, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    if-nez v5, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(IILjava/util/Map;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v2, v12

    move-object v13, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result v3

    iget v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    iget v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt v3, v4, :cond_1

    invoke-direct {v1, v3, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_d

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    iget v0, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_2
    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v2, v2, v0

    invoke-direct {v1, v10, v2, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-boolean v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-nez v4, :cond_5

    move-object/from16 v14, p2

    move-object v4, v12

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    move-object/from16 v14, p2

    invoke-virtual {v14, v11, v4, v3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v2

    :cond_6
    move-object v15, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object v6, v15

    move-object v7, v13

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v2, v15

    goto :goto_0

    :cond_7
    invoke-virtual {v9, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_0

    :cond_8
    if-nez v13, :cond_9

    invoke-virtual {v9, v10}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :cond_9
    invoke-virtual {v9, v13, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :cond_a
    iget v0, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_4
    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v2, :cond_b

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v2, v2, v0

    invoke-direct {v1, v10, v2, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    return-void

    :cond_d
    move-object/from16 v14, p2

    :try_start_2
    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v7, v4, 0x1

    aget v7, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v8, 0xff00000

    and-int/2addr v8, v7

    ushr-int/lit8 v8, v8, 0x14

    const/4 v15, 0x1

    const v16, 0xfffff

    packed-switch v8, :pswitch_data_0

    if-nez v13, :cond_1a

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a()Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_c

    :pswitch_0
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v7

    invoke-interface {v0, v7, v11}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_1
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_2
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_3
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_4
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->q()I

    move-result v5

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v8, v4, 0x3

    shl-int/2addr v8, v15

    add-int/2addr v8, v15

    aget-object v6, v6, v8

    check-cast v6, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    if-eqz v6, :cond_f

    invoke-interface {v6, v5}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v3, v5, v13, v9}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_9

    :cond_f
    :goto_5
    and-int v6, v7, v16

    int-to-long v6, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v6, v7, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_6
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_7
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v8, v4, 0x2

    aget v6, v6, v8

    and-int v6, v6, v16

    int-to-long v5, v6

    invoke-static {v10, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v3, :cond_10

    move v5, v15

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_11

    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-static {v10, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v4

    invoke-interface {v0, v4, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v5, v6, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_11
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v7

    invoke-interface {v0, v7, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    :goto_7
    iget-object v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v4, v4, v8

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {v1, v10, v7, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_a
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_b
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_c
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_d
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_e
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_f
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_10
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_11
    and-int v5, v7, v16

    int-to-long v5, v5

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    aget-object v3, v3, v4

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-static {v10, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v6, v3}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_12
    iget-object v7, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v7, v3}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v8, v7, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v4, v5, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v7

    :cond_13
    :goto_8
    iget-object v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v4, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v5, v3}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    invoke-interface {v0, v4, v3, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    iget-object v4, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    invoke-virtual {v4, v10, v5, v6}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4, v3, v11}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v6, v7, v16

    int-to-long v6, v6

    invoke-virtual {v5, v10, v6, v7}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    add-int/2addr v4, v15

    aget-object v4, v6, v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    invoke-static {v3, v5, v4, v13, v9}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_9

    :pswitch_19
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v5, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v6, v7, v16

    int-to-long v6, v6

    invoke-virtual {v5, v10, v6, v7}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    add-int/2addr v4, v15

    aget-object v4, v6, v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    invoke-static {v3, v5, v4, v13, v9}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    :goto_9
    move-object v13, v3

    goto/16 :goto_0

    :pswitch_27
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->k(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    and-int v4, v7, v16

    int-to-long v4, v4

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    invoke-virtual {v6, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4, v3, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    :pswitch_2a
    const/high16 v3, 0x20000000

    and-int/2addr v3, v7

    if-eqz v3, :cond_14

    move v5, v15

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_15

    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_15
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v4, v7, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_16

    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-static {v10, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v4

    invoke-interface {v0, v4, v11}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    invoke-interface {v0, v3, v11}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_38
    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->q()I

    move-result v5

    iget-object v6, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v8, v4, 0x3

    shl-int/2addr v8, v15

    add-int/2addr v8, v15

    aget-object v6, v6, v8

    check-cast v6, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    if-eqz v6, :cond_18

    invoke-interface {v6, v5}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {v3, v5, v13, v9}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_9

    :cond_18
    :goto_b
    and-int v3, v7, v16

    int-to-long v6, v3

    invoke-static {v10, v6, v7, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_19

    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-static {v10, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v4

    invoke-interface {v0, v4, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-direct {v1, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    invoke-interface {v0, v3, v11}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-direct {v1, v10, v7, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v3, v7, v16

    int-to-long v5, v3

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    invoke-direct {v1, v10, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_1a
    :goto_c
    invoke-virtual {v9, v13, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v3
    :try_end_3
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_0

    iget v0, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_d
    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v2, :cond_1b

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v2, v2, v0

    invoke-direct {v1, v10, v2, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    if-eqz v13, :cond_1c

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    return-void

    :catch_0
    :try_start_4
    invoke-virtual {v9, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_0

    iget v0, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_e
    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v2, :cond_1d

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v2, v2, v0

    invoke-direct {v1, v10, v2, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    if-eqz v13, :cond_1e

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    return-void

    :cond_1f
    if-nez v13, :cond_20

    :try_start_5
    invoke-virtual {v9, v10}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    :cond_20
    invoke-virtual {v9, v13, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_0

    iget v0, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_f
    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v2, :cond_21

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v2, v2, v0

    invoke-direct {v1, v10, v2, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    if-eqz v13, :cond_22

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    return-void

    :catchall_0
    move-exception v0

    iget v2, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_10
    iget v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v2, v3, :cond_23

    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v3, v3, v2

    invoke-direct {v1, v10, v3, v13, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    if-eqz v13, :cond_24

    invoke-virtual {v9, v10, v13}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->i:Z

    if-eqz v0, :cond_2

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/2addr p2, v3

    aget p2, v0, p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p2, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_13

    return v3

    :cond_13
    return v2

    :cond_14
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static b(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    aget v2, v0, p3

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v4, v1

    add-int/lit8 p3, p3, 0x2

    aget v0, v0, p3

    and-int/2addr v0, v3

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v4, v5, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget p2, p2, p3

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {p1, p2, p3, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, v4, v5, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget p2, p2, p3

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {p1, p2, p3, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    :cond_3
    return-void
.end method

.method static c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;
    .locals 2

    check-cast p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_14

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v2, 0x1

    aget v5, v4, v5

    aget v6, v4, v2

    const v7, 0xfffff

    and-int v8, v5, v7

    int-to-long v8, v8

    const/high16 v10, 0xff00000

    and-int/2addr v5, v10

    ushr-int/lit8 v5, v5, 0x14

    const/16 v10, 0x25

    const/4 v11, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    :goto_1
    if-eqz v11, :cond_13

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_1
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    move v11, v1

    :goto_2
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_2
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_3

    :cond_2
    move v11, v1

    :goto_3
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_3
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_3

    goto :goto_4

    :cond_3
    move v11, v1

    :goto_4
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_4
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_4

    goto :goto_5

    :cond_4
    move v11, v1

    :goto_5
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_5
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_5

    goto :goto_6

    :cond_5
    move v11, v1

    :goto_6
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_6
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_6

    goto :goto_7

    :cond_6
    move v11, v1

    :goto_7
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_7
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_7

    goto :goto_8

    :cond_7
    move v11, v1

    :goto_8
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_8
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_8

    goto :goto_9

    :cond_8
    move v11, v1

    :goto_9
    if-eqz v11, :cond_13

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_9
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_9

    goto :goto_a

    :cond_9
    move v11, v1

    :goto_a
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_a
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_a

    goto :goto_b

    :cond_a
    move v11, v1

    :goto_b
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v4

    goto/16 :goto_14

    :pswitch_b
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_b

    goto :goto_c

    :cond_b
    move v11, v1

    :goto_c
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_c
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_c

    goto :goto_d

    :cond_c
    move v11, v1

    :goto_d
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_d
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_d

    goto :goto_e

    :cond_d
    move v11, v1

    :goto_e
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_e
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_e

    goto :goto_f

    :cond_e
    move v11, v1

    :goto_f
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_f
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_f

    goto :goto_10

    :cond_f
    move v11, v1

    :goto_10
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_10
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_10

    goto :goto_11

    :cond_10
    move v11, v1

    :goto_11
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_14

    :pswitch_11
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_11

    goto :goto_12

    :cond_11
    move v11, v1

    :goto_12
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_14
    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_13

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_1c
    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_12
    :goto_13
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto :goto_15

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_14

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v4

    goto :goto_14

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_14

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto :goto_14

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_14

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto :goto_14

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    goto :goto_14

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_14

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v4

    :goto_14
    add-int/2addr v3, v4

    :cond_13
    :goto_15
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_14
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_15

    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v3, p1

    :cond_15
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v0, v13, :cond_20

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v3, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v8

    iget v1, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt v0, v1, :cond_3

    iget v1, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt v0, v1, :cond_3

    invoke-direct {v15, v0, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v1

    goto :goto_2

    :cond_1
    iget v1, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt v0, v1, :cond_2

    iget v1, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt v0, v1, :cond_2

    const/4 v2, 0x0

    invoke-direct {v15, v0, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    const/4 v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    move/from16 v18, v0

    move v2, v3

    move v9, v4

    move/from16 v16, v5

    move/from16 v22, v6

    move-object/from16 v25, v10

    move v8, v11

    const/16 v17, 0x0

    const/16 v26, 0x0

    goto/16 :goto_11

    :cond_4
    iget-object v2, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v18, v1, 0x1

    aget v8, v2, v18

    const/high16 v18, 0xff00000

    and-int v18, v8, v18

    ushr-int/lit8 v11, v18, 0x14

    const v18, 0xfffff

    move/from16 v19, v4

    and-int v4, v8, v18

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v8

    if-gt v11, v4, :cond_12

    add-int/lit8 v4, v1, 0x2

    aget v2, v2, v4

    ushr-int/lit8 v4, v2, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v4

    and-int v2, v2, v18

    const/4 v4, -0x1

    if-eq v2, v6, :cond_6

    if-eq v6, v4, :cond_5

    int-to-long v8, v6

    invoke-virtual {v10, v14, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v2

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v6

    :goto_3
    move v6, v5

    const/4 v2, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    goto/16 :goto_c

    :pswitch_0
    const/4 v5, 0x3

    if-ne v7, v5, :cond_8

    shl-int/lit8 v2, v0, 0x3

    or-int/lit8 v5, v2, 0x4

    invoke-direct {v15, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    move/from16 v18, v0

    move-object v0, v2

    move v9, v1

    move-object/from16 v1, p2

    const/16 v17, 0x0

    move v2, v3

    move/from16 v3, p4

    move/from16 v11, v19

    move/from16 v19, v4

    move v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_7

    move-object/from16 v4, p6

    iget-object v1, v4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_7
    move-object/from16 v4, p6

    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v5, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v6, v8

    move v2, v9

    move v3, v11

    move/from16 v1, v18

    move/from16 v11, p5

    move-object v9, v4

    goto/16 :goto_0

    :cond_8
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_c

    :pswitch_1
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-object/from16 v4, p6

    if-nez v7, :cond_9

    move-wide v1, v12

    move-object/from16 v12, p2

    invoke-static {v12, v3, v4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-wide/from16 v20, v1

    iget-wide v0, v4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move-object v13, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_9

    :cond_9
    move-object/from16 v12, p2

    move-object v13, v4

    goto/16 :goto_c

    :pswitch_2
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    iget-object v2, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v3, v9, 0x3

    const/4 v7, 0x1

    shl-int/2addr v3, v7

    add-int/2addr v3, v7

    aget-object v2, v2, v3

    check-cast v2, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    if-eqz v2, :cond_c

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, v14

    check-cast v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v3, v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_b

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v3

    iput-object v3, v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_b
    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    move v5, v6

    goto/16 :goto_b

    :cond_c
    :goto_5
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_4
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_e

    invoke-direct {v15, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move/from16 v1, p4

    invoke-static {v0, v12, v3, v1, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v2, v6, v22

    if-nez v2, :cond_d

    iget-object v2, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_e
    move/from16 v1, p4

    goto/16 :goto_c

    :pswitch_6
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    move/from16 v1, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_11

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_f

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_6

    :cond_f
    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_6
    iget-object v2, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_7
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v1, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v20, 0x0

    cmp-long v2, v2, v20

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    move/from16 v2, v17

    :goto_7
    invoke-static {v14, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_8
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v1, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v2, :cond_11

    invoke-static {v12, v3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    :goto_8
    or-int v5, v6, v22

    move v6, v8

    move v2, v9

    move v3, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v1

    move/from16 v1, v18

    goto/16 :goto_0

    :pswitch_9
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/4 v0, 0x1

    const/16 v17, 0x0

    move/from16 v1, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_11

    invoke-static {v12, v3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_a

    :pswitch_a
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_b
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_11

    invoke-static {v12, v3, v13}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v2, v13, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    or-int v5, v6, v22

    move v0, v7

    goto :goto_b

    :pswitch_c
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v2, :cond_11

    invoke-static {v12, v3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_a

    :pswitch_d
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/4 v0, 0x1

    const/16 v17, 0x0

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_11

    invoke-static {v12, v3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_a
    or-int v5, v6, v22

    :goto_b
    move v6, v8

    move v2, v9

    move v3, v11

    move-object v9, v13

    move/from16 v1, v18

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    :goto_c
    move v2, v3

    move/from16 v16, v6

    move/from16 v22, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    move v9, v11

    move/from16 v8, p5

    goto/16 :goto_11

    :cond_12
    move/from16 v18, v0

    move/from16 v8, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-wide/from16 v27, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v1

    move-wide/from16 v1, v27

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_16

    const/4 v0, 0x2

    if-ne v7, v0, :cond_15

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    if-nez v4, :cond_13

    const/16 v4, 0xa

    goto :goto_d

    :cond_13
    shl-int/lit8 v4, v4, 0x1

    :goto_d
    invoke-interface {v0, v4}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v7, v0

    invoke-direct {v15, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v22, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v11, p5

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_15
    move/from16 v16, v5

    move/from16 v22, v6

    move v15, v3

    move/from16 v19, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    goto/16 :goto_e

    :cond_16
    move/from16 v16, v5

    move/from16 v22, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_18

    move/from16 v6, v20

    int-to-long v5, v6

    move-object/from16 v0, p0

    move-wide/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v20, v5

    move v5, v8

    move/from16 v6, v18

    move/from16 v19, v8

    move v8, v9

    move/from16 v26, v9

    move-object/from16 v25, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_17

    goto/16 :goto_10

    :cond_17
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v3, v19

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    goto/16 :goto_0

    :cond_18
    move-wide/from16 v23, v1

    move v15, v3

    move/from16 v19, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1a

    const/4 v0, 0x2

    if-ne v7, v0, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_17

    goto :goto_10

    :cond_19
    :goto_e
    move/from16 v8, p5

    move v2, v15

    :goto_f
    move/from16 v9, v19

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move v8, v6

    move/from16 v6, v18

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v26

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_1f

    :goto_10
    move/from16 v8, p5

    move v2, v0

    goto :goto_f

    :goto_11
    if-ne v9, v8, :cond_1c

    if-nez v8, :cond_1b

    goto :goto_12

    :cond_1b
    move-object/from16 v10, p0

    move-object/from16 v6, p1

    move v0, v2

    move v3, v9

    move/from16 v5, v16

    goto/16 :goto_14

    :cond_1c
    :goto_12
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_1d

    iget-object v0, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->c()Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    iget-object v5, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    iget-object v6, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILjava/lang/Object;Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p1

    move-object v0, v6

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v3

    if-ne v1, v3, :cond_1e

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_1e
    move-object v4, v1

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object v14, v6

    :goto_13
    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    move v11, v8

    goto/16 :goto_0

    :cond_1f
    move/from16 v9, v19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v3, v9

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_20
    move/from16 v16, v5

    move/from16 v22, v6

    move-object/from16 v25, v10

    move v8, v11

    move-object v6, v14

    move-object v10, v15

    :goto_14
    move/from16 v1, v22

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    int-to-long v1, v1

    move-object/from16 v4, v25

    invoke-virtual {v4, v6, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    const/4 v1, 0x0

    iget v2, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_15
    iget v4, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v2, v4, :cond_22

    iget-object v4, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v4, v4, v2

    iget-object v5, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-direct {v10, v6, v4, v1, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_22
    if-eqz v1, :cond_23

    iget-object v2, v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, v6, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    if-nez v8, :cond_25

    move/from16 v1, p4

    if-ne v0, v1, :cond_24

    goto :goto_16

    :cond_24
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v1, p4

    if-gt v0, v1, :cond_26

    if-ne v3, v8, :cond_26

    :goto_16
    return v0

    :cond_26
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/NewInstanceSchema;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz v0, :cond_15

    sget-object v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    move v1, v8

    move v2, v10

    :goto_0
    if-ge v0, v13, :cond_13

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move v7, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v7, v3

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v5, v16, 0x7

    if-le v6, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    iget v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt v6, v0, :cond_2

    iget v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt v6, v0, :cond_2

    invoke-direct {v15, v6, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v0

    goto :goto_2

    :cond_1
    iget v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt v6, v0, :cond_2

    iget v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt v6, v0, :cond_2

    invoke-direct {v15, v6, v10}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    move v4, v0

    if-ne v4, v8, :cond_3

    move/from16 v19, v6

    move v2, v7

    move/from16 v24, v8

    move-object/from16 v18, v9

    move/from16 v17, v10

    move/from16 v26, v17

    goto/16 :goto_12

    :cond_3
    iget-object v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v1, v4, 0x1

    aget v3, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v3

    ushr-int/lit8 v2, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v3

    int-to-long v0, v0

    const/16 v8, 0x11

    const/4 v10, 0x2

    if-gt v2, v8, :cond_9

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-nez v5, :cond_4

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v2, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v19

    move-wide v2, v0

    move-object v0, v9

    move-object/from16 v1, p1

    move v8, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    goto :goto_5

    :cond_4
    :goto_3
    move/from16 v17, v4

    move/from16 v19, v6

    move v15, v7

    goto/16 :goto_e

    :pswitch_1
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_c

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v1

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_2
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_c

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_3
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_c

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    move v1, v6

    :goto_5
    move v2, v8

    goto/16 :goto_c

    :pswitch_4
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_c

    invoke-direct {v15, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    invoke-static {v0, v12, v7, v13, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    iget-object v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    move-wide v1, v0

    move v8, v4

    if-ne v5, v10, :cond_c

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_6

    :cond_6
    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_6
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_6
    move-wide v1, v0

    move v10, v4

    if-nez v5, :cond_8

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v19, 0x0

    cmp-long v3, v3, v19

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    invoke-static {v14, v1, v2, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :pswitch_7
    move-wide v1, v0

    move v10, v4

    const/4 v0, 0x5

    if-ne v5, v0, :cond_8

    invoke-static {v12, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_8
    move-wide v1, v0

    move v10, v4

    if-ne v5, v8, :cond_8

    invoke-static {v12, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v4

    move-object v0, v9

    move-wide v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_9

    :pswitch_9
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_8

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_8

    invoke-static {v12, v7, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    goto :goto_b

    :pswitch_b
    move-wide v2, v0

    move v10, v4

    const/4 v0, 0x5

    if-ne v5, v0, :cond_8

    invoke-static {v12, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    :goto_8
    add-int/lit8 v0, v7, 0x4

    goto :goto_a

    :pswitch_c
    move-wide v2, v0

    move v10, v4

    if-ne v5, v8, :cond_8

    invoke-static {v12, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    :goto_9
    add-int/lit8 v0, v7, 0x8

    :goto_a
    move v1, v6

    :goto_b
    move v2, v10

    :goto_c
    const/4 v8, -0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v6

    move v15, v7

    move-object/from16 v18, v9

    move/from16 v17, v10

    goto :goto_f

    :cond_9
    move v8, v4

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_d

    if-ne v5, v10, :cond_c

    invoke-virtual {v9, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0xa

    goto :goto_d

    :cond_a
    shl-int/lit8 v3, v3, 0x1

    :goto_d
    invoke-interface {v2, v3}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-virtual {v9, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_b
    move-object v5, v2

    invoke-direct {v15, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v19, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v8

    move/from16 v1, v19

    goto :goto_c

    :cond_c
    move/from16 v19, v6

    move v15, v7

    move/from16 v17, v8

    :goto_e
    move-object/from16 v18, v9

    :goto_f
    const/16 v24, -0x1

    const/16 v26, 0x0

    goto/16 :goto_10

    :cond_d
    move/from16 v19, v6

    const/16 v4, 0x31

    if-gt v2, v4, :cond_e

    int-to-long v3, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v2

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v7

    move/from16 v4, p4

    move v6, v5

    move/from16 v5, v16

    move/from16 p3, v6

    move/from16 v6, v19

    move v15, v7

    move/from16 v7, p3

    move/from16 v17, v8

    const/16 v24, -0x1

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, 0x0

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_12

    goto :goto_11

    :cond_e
    move-wide/from16 v20, v0

    move/from16 v25, v2

    move/from16 p3, v5

    move v15, v7

    move/from16 v17, v8

    move-object/from16 v18, v9

    const/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_10

    move/from16 v7, p3

    if-ne v7, v10, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_12

    goto :goto_11

    :cond_f
    :goto_10
    move v2, v15

    goto :goto_12

    :cond_10
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v3

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move-wide/from16 v10, v20

    move/from16 v12, v17

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_12

    :goto_11
    move v2, v0

    :goto_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v3

    if-ne v1, v3, :cond_11

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_11
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :cond_12
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v17

    move-object/from16 v9, v18

    move/from16 v1, v19

    move/from16 v8, v24

    move/from16 v10, v26

    goto/16 :goto_0

    :cond_13
    move v4, v13

    if-ne v0, v4, :cond_14

    return-void

    :cond_14
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_15
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_15

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v2, 0x1

    aget v5, v4, v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    const/high16 v9, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    and-int/2addr v4, v6

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v6, v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :pswitch_1
    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_14

    :pswitch_2
    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_14

    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :pswitch_4
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_3

    :cond_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto/16 :goto_14

    :pswitch_5
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    move v4, v1

    :goto_4
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_6
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_4

    move v4, v3

    goto :goto_5

    :cond_4
    move v4, v1

    :goto_5
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto/16 :goto_14

    :pswitch_7
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_5

    move v4, v3

    goto :goto_6

    :cond_5
    move v4, v1

    :goto_6
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_8
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_6

    move v4, v3

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_9
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_7

    move v4, v3

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_a
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_8

    move v4, v3

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :pswitch_b
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_9

    move v4, v3

    goto :goto_a

    :cond_9
    move v4, v1

    :goto_a
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :pswitch_c
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_a

    move v4, v3

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :pswitch_d
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_b

    move v4, v3

    goto :goto_c

    :cond_b
    move v4, v1

    :goto_c
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_e
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_c

    move v4, v3

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_f
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto/16 :goto_14

    :pswitch_10
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto/16 :goto_14

    :pswitch_11
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_f

    move v4, v3

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto/16 :goto_14

    :pswitch_12
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_10

    move v4, v3

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto :goto_14

    :pswitch_13
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_13

    goto :goto_14

    :pswitch_14
    invoke-direct {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    if-eqz v4, :cond_13

    invoke-static {p1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    if-nez v3, :cond_14

    return v1

    :cond_14
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const v9, 0xfffff

    if-eqz v2, :cond_25

    sget-object v2, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v15, v14

    if-ge v12, v15, :cond_24

    add-int/lit8 v15, v12, 0x1

    aget v15, v14, v15

    and-int v16, v15, v3

    ushr-int/lit8 v3, v16, 0x14

    aget v14, v14, v12

    and-int/2addr v15, v9

    int-to-long v5, v15

    sget-object v15, Lcom/uqm/crashsight/protobuf/FieldType;->J:Lcom/uqm/crashsight/protobuf/FieldType;

    invoke-virtual {v15}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    if-lt v3, v15, :cond_0

    sget-object v15, Lcom/uqm/crashsight/protobuf/FieldType;->W:Lcom/uqm/crashsight/protobuf/FieldType;

    invoke-virtual {v15}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    if-gt v3, v15, :cond_0

    iget-object v15, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v16, v12, 0x2

    aget v15, v15, v16

    and-int/2addr v15, v9

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v15, v12, 0x2

    aget v3, v3, v15

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_1
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_2
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v3

    goto/16 :goto_15

    :pswitch_3
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_23

    invoke-static {v14, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_4
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v5

    goto/16 :goto_16

    :pswitch_5
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_6

    const/4 v3, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v3

    goto/16 :goto_15

    :pswitch_6
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v3

    goto/16 :goto_15

    :pswitch_7
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_8
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_9
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v5, :cond_b

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_15

    :cond_b
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_a
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_23

    const/4 v3, 0x1

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v5

    goto/16 :goto_16

    :pswitch_b
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_d

    const/4 v3, 0x1

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v5

    goto/16 :goto_16

    :pswitch_c
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_e

    const/4 v3, 0x1

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_23

    invoke-static {v14, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_d
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v3

    goto/16 :goto_15

    :pswitch_e
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_10

    const/4 v3, 0x1

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_f
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v10, v12, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v9

    int-to-long v10, v3

    invoke-static {v1, v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_10
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_12

    const/4 v3, 0x1

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_23

    invoke-static {v14, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v3

    goto/16 :goto_15

    :pswitch_11
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v5, v12, 0x2

    aget v3, v3, v5

    and-int/2addr v3, v9

    int-to-long v5, v3

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v14, :cond_13

    const/4 v3, 0x1

    goto :goto_13

    :cond_13
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_23

    const-wide/16 v5, 0x0

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v3

    goto/16 :goto_15

    :pswitch_12
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v10, v12, 0x3

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    aget-object v6, v6, v10

    invoke-interface {v3, v14, v5, v6}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_14

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_14
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_15

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_15
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_16

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_17

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_17
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_18

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_19

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_19
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1a

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1a
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1b

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1c

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1d

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto/16 :goto_14

    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1e

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto :goto_14

    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_1f

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto :goto_14

    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_20

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    goto :goto_14

    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_23

    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_21

    int-to-long v5, v15

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v6

    :goto_14
    add-int/2addr v5, v6

    add-int/2addr v5, v3

    goto/16 :goto_16

    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_23
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_24
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_25
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_26
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_27
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_15

    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto :goto_15

    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_15

    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_2c
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_2d
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_2e
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_2f
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_30
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_31
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_15

    :pswitch_32
    const/4 v10, 0x0

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_15
    add-int/2addr v13, v3

    goto/16 :goto_17

    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto :goto_15

    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v3

    goto :goto_15

    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v3

    goto :goto_15

    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v14, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v3

    goto :goto_15

    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v5

    goto/16 :goto_16

    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v3

    goto :goto_15

    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v3

    goto :goto_15

    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto :goto_15

    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v5, :cond_22

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_15

    :cond_22
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_15

    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v5

    goto :goto_16

    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v5

    :goto_16
    add-int/2addr v13, v5

    goto :goto_17

    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v14, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v3

    goto/16 :goto_15

    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v3

    goto/16 :goto_15

    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v14, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v3

    goto/16 :goto_15

    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_23

    const-wide/16 v5, 0x0

    invoke-static {v14, v5, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v3

    goto/16 :goto_15

    :cond_23
    :goto_17
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_24
    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_25
    sget-object v2, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    move v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_18
    iget-object v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v12, v11

    if-ge v3, v12, :cond_42

    add-int/lit8 v12, v3, 0x1

    aget v12, v11, v12

    aget v13, v11, v3

    const/high16 v14, 0xff00000

    and-int v15, v12, v14

    ushr-int/lit8 v15, v15, 0x14

    const/16 v14, 0x11

    if-gt v15, v14, :cond_27

    add-int/lit8 v14, v3, 0x2

    aget v11, v11, v14

    and-int v14, v11, v9

    ushr-int/lit8 v17, v11, 0x14

    const/16 v16, 0x1

    shl-int v17, v16, v17

    if-eq v14, v6, :cond_26

    int-to-long v7, v14

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v6, v14

    :cond_26
    move v7, v11

    goto :goto_1a

    :cond_27
    iget-boolean v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v7, :cond_28

    sget-object v7, Lcom/uqm/crashsight/protobuf/FieldType;->J:Lcom/uqm/crashsight/protobuf/FieldType;

    invoke-virtual {v7}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v7

    if-lt v15, v7, :cond_28

    sget-object v7, Lcom/uqm/crashsight/protobuf/FieldType;->W:Lcom/uqm/crashsight/protobuf/FieldType;

    invoke-virtual {v7}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v7

    if-gt v15, v7, :cond_28

    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    goto :goto_19

    :cond_28
    const/4 v7, 0x0

    :goto_19
    const/16 v17, 0x0

    :goto_1a
    and-int v8, v12, v9

    int-to-long v11, v8

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_24

    :pswitch_45
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_46
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v7

    goto/16 :goto_23

    :pswitch_47
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v7

    goto/16 :goto_23

    :pswitch_48
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    const-wide/16 v7, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v11

    goto/16 :goto_27

    :pswitch_49
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v8

    goto/16 :goto_28

    :pswitch_4a
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v7

    goto/16 :goto_23

    :pswitch_4b
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v7

    goto/16 :goto_23

    :pswitch_4c
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_4d
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_4e
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v8, :cond_29

    check-cast v7, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v7

    goto/16 :goto_23

    :cond_29
    check-cast v7, Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_4f
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x1

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v8

    goto/16 :goto_28

    :pswitch_50
    invoke-direct {v0, v1, v13, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v8

    goto/16 :goto_28

    :pswitch_51
    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)I

    move-result v7

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v7, 0x0

    :goto_1b
    if-eqz v7, :cond_3e

    const-wide/16 v7, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v11

    goto/16 :goto_27

    :pswitch_52
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2b

    const/4 v7, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v7

    goto/16 :goto_23

    :pswitch_53
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2c

    const/4 v7, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v7, 0x0

    :goto_1d
    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v7

    goto/16 :goto_23

    :pswitch_54
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2d

    const/4 v7, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v7, 0x0

    :goto_1e
    if-eqz v7, :cond_3e

    invoke-static {v1, v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v7

    goto/16 :goto_23

    :pswitch_55
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v7, 0x0

    :goto_1f
    if-eqz v7, :cond_3e

    invoke-static {v13, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v7

    goto/16 :goto_23

    :pswitch_56
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v13, :cond_2f

    const/4 v7, 0x1

    goto :goto_20

    :cond_2f
    const/4 v7, 0x0

    :goto_20
    if-eqz v7, :cond_3e

    const-wide/16 v7, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v11

    goto/16 :goto_27

    :pswitch_57
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    iget-object v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 v12, v3, 0x3

    const/4 v14, 0x1

    shl-int/2addr v12, v14

    aget-object v11, v11, v12

    invoke-interface {v7, v13, v8, v11}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_58
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_59
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_30

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_30
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5a
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_31

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_31
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5b
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_32

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_32
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5c
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_33

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_33
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5d
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_34

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_34
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5e
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_35

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_35
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_5f
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_36

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_36
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_60
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_37

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_37
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_61
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_38

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_38
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_62
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_39

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_39
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto/16 :goto_21

    :pswitch_63
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_3a

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3a
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto :goto_21

    :pswitch_64
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_3b

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3b
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto :goto_21

    :pswitch_65
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_3c

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3c
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    goto :goto_21

    :pswitch_66
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3e

    iget-boolean v11, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v11, :cond_3d

    int-to-long v11, v7

    invoke-virtual {v2, v1, v11, v12, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3d
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result v7

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v11

    :goto_21
    add-int/2addr v7, v11

    add-int/2addr v7, v8

    goto/16 :goto_23

    :pswitch_67
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_22

    :pswitch_68
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_22

    :pswitch_69
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_22

    :pswitch_6a
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_22

    :pswitch_6b
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_22

    :pswitch_6c
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_23

    :pswitch_6d
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_6e
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto :goto_23

    :pswitch_6f
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v7

    goto :goto_23

    :pswitch_70
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_71
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_72
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_73
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_74
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_75
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    move-result v7

    goto :goto_22

    :pswitch_76
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v7

    :goto_22
    add-int/2addr v5, v7

    const/4 v7, 0x1

    goto :goto_26

    :pswitch_77
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v7

    :goto_23
    add-int/2addr v5, v7

    :cond_3e
    :goto_24
    const/4 v7, 0x1

    :cond_3f
    :goto_25
    const/4 v8, 0x0

    :goto_26
    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_2a

    :pswitch_78
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto :goto_23

    :pswitch_79
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v7

    goto :goto_23

    :pswitch_7a
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v7

    goto :goto_23

    :pswitch_7b
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    const-wide/16 v7, 0x0

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v11

    :goto_27
    add-int/2addr v5, v11

    goto :goto_24

    :pswitch_7c
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v8

    :goto_28
    add-int/2addr v5, v8

    goto :goto_24

    :pswitch_7d
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v7

    goto :goto_23

    :pswitch_7e
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v7

    goto :goto_23

    :pswitch_7f
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v7

    goto :goto_23

    :pswitch_80
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v7, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_81
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v8, :cond_40

    check-cast v7, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v7

    goto/16 :goto_23

    :cond_40
    check-cast v7, Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_23

    :pswitch_82
    and-int v7, v10, v17

    if-eqz v7, :cond_3e

    const/4 v7, 0x1

    invoke-static {v13, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_25

    :pswitch_83
    const/4 v7, 0x1

    and-int v8, v10, v17

    if-eqz v8, :cond_3f

    const/4 v8, 0x0

    invoke-static {v13, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v11

    add-int/2addr v5, v11

    goto/16 :goto_26

    :pswitch_84
    const/4 v7, 0x1

    const/4 v8, 0x0

    and-int v11, v10, v17

    const-wide/16 v14, 0x0

    if-eqz v11, :cond_41

    invoke-static {v13, v14, v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v11

    goto :goto_29

    :pswitch_85
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    and-int v16, v10, v17

    if-eqz v16, :cond_41

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v13, v11}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v11

    goto :goto_29

    :pswitch_86
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    and-int v16, v10, v17

    if-eqz v16, :cond_41

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v13, v11, v12}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v11

    goto :goto_29

    :pswitch_87
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    and-int v16, v10, v17

    if-eqz v16, :cond_41

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v13, v11, v12}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v11

    goto :goto_29

    :pswitch_88
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    and-int v11, v10, v17

    if-eqz v11, :cond_41

    invoke-static {v13, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v11

    :goto_29
    add-int/2addr v5, v11

    :cond_41
    const-wide/16 v11, 0x0

    goto :goto_2a

    :pswitch_89
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    and-int v11, v10, v17

    if-eqz v11, :cond_41

    const-wide/16 v11, 0x0

    invoke-static {v13, v11, v12}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v13

    add-int/2addr v5, v13

    :goto_2a
    add-int/lit8 v3, v3, 0x3

    move-wide v7, v14

    goto/16 :goto_18

    :cond_42
    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    iget-boolean v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v2, :cond_43

    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->l()I

    move-result v1

    add-int/2addr v5, v1

    :cond_43
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    aget v7, v2, v1

    const/high16 v8, 0xff00000

    and-int/2addr v3, v8

    ushr-int/lit8 v3, v3, 0x14

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v9, v2

    invoke-static {p2, v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v7, :cond_0

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    if-eqz v8, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v9, v2

    invoke-static {p2, v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v7, :cond_1

    goto :goto_2

    :cond_1
    move v8, v0

    :goto_2
    if-eqz v8, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-static {v2, p1, p2, v5, v6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    invoke-virtual {v2, p1, p2, v5, v6}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_15
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_16
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :pswitch_17
    invoke-direct {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v2, v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
