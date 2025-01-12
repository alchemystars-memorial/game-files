.class Lcom/gamesafe/ano/MainThreadDispatcher2$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesafe/ano/MainThreadDispatcher2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gamesafe/ano/MainThreadDispatcher2$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/gamesafe/ano/MainThreadDispatcher2$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gamesafe/ano/MainThreadDispatcher2;->a(Ljava/lang/String;)V

    return-void
.end method
