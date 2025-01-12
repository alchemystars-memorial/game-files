.class public final Lk/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lk/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/c;

    invoke-direct {v0}, Lk/c;-><init>()V

    sput-object v0, Lk/c$b;->a:Lk/c;

    return-void
.end method
