.class final Lcom/uqm/crashsight/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "CrashSight"


# instance fields
.field private final a:Ljava/lang/reflect/Field;

.field private final b:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/OneofInfo;->a:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/OneofInfo;->b:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/OneofInfo;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/OneofInfo;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method
