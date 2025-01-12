.class final Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;,
        Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
    }
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "cached_size"

    const-string v2, "serialized_size"

    const-string v3, "class"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b:Ljava/util/Set;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;",
            "Z",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldInfo;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/OneofInfo;

    move-result-object v3

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/FieldType;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$3;->c:[I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->d:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->M:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->v:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->l:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->R:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->D:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->A:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->i:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->q:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->W:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_6
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->I:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->p:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->V:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_8
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->H:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->o:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->U:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_a
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->G:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->n:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->T:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_c
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->F:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->B:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_e
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->j:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->c:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->L:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_10
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->u:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->e:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->N:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_12
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->w:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->X:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_13
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->r:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->b:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->K:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_15
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->t:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->f:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->O:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_17
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->x:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->g:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->P:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_19
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->y:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->m:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->S:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1b
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->E:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->a:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->J:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->s:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->C:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1e
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->k:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->h:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->Q:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :cond_20
    sget-object p0, Lcom/uqm/crashsight/protobuf/FieldType;->z:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a(I)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Ljava/lang/Object;)V

    sget-object v3, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/ProtoSyntax;)V

    invoke-virtual/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Z)V

    new-instance v3, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(B)V

    const/4 v6, 0x1

    move v7, v4

    move v9, v7

    move/from16 v17, v6

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h()Z

    move-result v15

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_0

    new-instance v11, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$1;

    invoke-direct {v11, v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$1;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    move-object v14, v11

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v0, v10, v3, v15, v14}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v12

    invoke-static {v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v13

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v13

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v15

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v15, v4, :cond_2

    new-instance v14, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$2;

    invoke-direct {v14, v13}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$2;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    :cond_2
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v12, v4, v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "MemoizedSerializedSize"

    if-eqz v14, :cond_5

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v11, v12, v13, v14, v4}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {v11, v12, v13, v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v14

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v14, v5, :cond_6

    invoke-static {v0, v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v11, v12, v13, v4}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v11, v12, v13, v4}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto :goto_3

    :cond_7
    invoke-static {v11, v12, v13, v15}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Z)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bitField"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    :cond_9
    invoke-virtual {v10}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v8

    move-object v5, v14

    move/from16 v14, v17

    move-object/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto :goto_2

    :cond_a
    move-object v5, v14

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v8

    move/from16 v14, v17

    move-object/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    :goto_2
    shl-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v6

    const/4 v8, 0x0

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v6, :cond_e

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c:Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-virtual {v6, v5}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a([I)V

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->j:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/FieldType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/uqm/crashsight/protobuf/FieldType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$3;->b:[I

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/FieldType;->b()Lcom/uqm/crashsight/protobuf/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid type for oneof: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-class p0, Ljava/lang/String;

    return-object p0

    :pswitch_2
    const-class p0, Ljava/lang/Long;

    return-object p0

    :pswitch_3
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_4
    const-class p0, Ljava/lang/Float;

    return-object p0

    :pswitch_5
    const-class p0, Ljava/lang/Double;

    return-object p0

    :pswitch_6
    const-class p0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0

    :pswitch_7
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a(I)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/ProtoSyntax;)V

    new-instance v1, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(B)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-static {p0, v3, v1, v6, v5}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v6

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v6, v3, v5}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v6

    invoke-static {p0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MemoizedSerializedSize"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v3

    invoke-static {v4, v5, v3, v6}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Z)Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->j:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->j:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    goto :goto_1

    :cond_1
    const-string v0, "_"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in message class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/uqm/crashsight/protobuf/Message;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get default instance for message class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/uqm/crashsight/protobuf/MessageInfo;"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->c(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$3;->a:[I

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported syntax: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
