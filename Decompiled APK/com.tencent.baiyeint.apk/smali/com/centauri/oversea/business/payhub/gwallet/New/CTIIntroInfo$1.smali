.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;

    invoke-static {v0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;ILjava/lang/String;)V

    return-void
.end method
