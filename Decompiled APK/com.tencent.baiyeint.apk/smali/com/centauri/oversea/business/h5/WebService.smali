.class public Lcom/centauri/oversea/business/h5/WebService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/WebService$b;
    }
.end annotation


# static fields
.field public static a:Lcom/centauri/oversea/business/h5/WebService$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/business/h5/WebService$a;

    invoke-direct {v0}, Lcom/centauri/oversea/business/h5/WebService$a;-><init>()V

    sput-object v0, Lcom/centauri/oversea/business/h5/WebService;->a:Lcom/centauri/oversea/business/h5/WebService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/centauri/oversea/business/h5/WebService$b;

    invoke-direct {p1}, Lcom/centauri/oversea/business/h5/WebService$b;-><init>()V

    return-object p1
.end method
