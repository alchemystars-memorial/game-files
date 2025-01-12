.class public final Lcom/uqm/crashsight/proguard/b;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/proguard/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/uqm/crashsight/proguard/b;

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/b;->b:J

    iget-wide v2, p1, Lcom/uqm/crashsight/proguard/b;->b:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method
