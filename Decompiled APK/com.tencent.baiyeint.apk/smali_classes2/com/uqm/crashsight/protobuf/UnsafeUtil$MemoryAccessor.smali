.class abstract Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryAccessor"
.end annotation


# instance fields
.field a:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public abstract a(J)B
.end method

.method public abstract a(Ljava/lang/Object;J)B
.end method

.method public abstract a(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public abstract a(JB)V
.end method

.method public abstract a(J[BJJ)V
.end method

.method public abstract a(Ljava/lang/Object;JB)V
.end method

.method public abstract a(Ljava/lang/Object;JD)V
.end method

.method public abstract a(Ljava/lang/Object;JF)V
.end method

.method public abstract a(Ljava/lang/Object;JZ)V
.end method

.method public abstract a([BJJJ)V
.end method

.method public abstract b(J)J
.end method

.method public abstract b(Ljava/lang/Object;J)Z
.end method

.method public abstract c(Ljava/lang/Object;J)F
.end method

.method public abstract d(Ljava/lang/Object;J)D
.end method
