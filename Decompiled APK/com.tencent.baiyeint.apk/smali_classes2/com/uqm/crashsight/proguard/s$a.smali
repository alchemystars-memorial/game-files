.class public final Lcom/uqm/crashsight/proguard/s$a;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/proguard/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static g:J


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:I

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->i()J

    move-result-wide v0

    sput-wide v0, Lcom/uqm/crashsight/proguard/s$a;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/uqm/crashsight/proguard/s$a;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/s$a;->a:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/s;->a(J)J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/s$a;->b:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/s$a;->c:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/s$a;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/proguard/s$a;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/uqm/crashsight/proguard/s$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-wide v2, Lcom/uqm/crashsight/proguard/s$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "level=%d, totalRam=%d B, pss=%d B, vss=%d B, availRam=%d B"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
