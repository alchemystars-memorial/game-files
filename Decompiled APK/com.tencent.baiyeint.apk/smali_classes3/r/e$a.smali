.class public final Lr/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Lr/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    sput-object v0, Lr/e$a;->a:Lr/e;

    return-void
.end method
