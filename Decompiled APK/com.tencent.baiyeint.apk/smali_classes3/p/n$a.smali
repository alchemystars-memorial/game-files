.class public final Lp/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Lp/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/n;

    invoke-direct {v0}, Lp/n;-><init>()V

    sput-object v0, Lp/n$a;->a:Lp/n;

    return-void
.end method
