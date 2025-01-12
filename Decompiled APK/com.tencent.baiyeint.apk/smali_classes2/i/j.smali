.class public final Li/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/j$a;
    }
.end annotation


# instance fields
.field public a:Li/j$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li/j$a;

    invoke-direct {v0}, Li/j$a;-><init>()V

    iput-object v0, p0, Li/j;->a:Li/j$a;

    return-void
.end method
