.class final Lcom/uqm/crashsight/crashreport/common/info/c$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/common/info/c;->e(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-wide v0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    iget-wide p1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
