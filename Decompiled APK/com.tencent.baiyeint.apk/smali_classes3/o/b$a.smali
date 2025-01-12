.class public final Lo/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Lo/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    sput-object v0, Lo/b$a;->a:Lo/b;

    return-void
.end method
