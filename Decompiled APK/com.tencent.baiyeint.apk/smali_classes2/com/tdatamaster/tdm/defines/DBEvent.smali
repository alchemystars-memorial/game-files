.class public Lcom/tdatamaster/tdm/defines/DBEvent;
.super Ljava/lang/Object;
.source "DBEvent.java"


# instance fields
.field public Data:[B

.field public DataLen:I

.field public EventID:I

.field public ID:J

.field public SrcId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/tdatamaster/tdm/defines/DBEvent;->Data:[B

    iput p3, p0, Lcom/tdatamaster/tdm/defines/DBEvent;->EventID:I

    iput p4, p0, Lcom/tdatamaster/tdm/defines/DBEvent;->SrcId:I

    iput p5, p0, Lcom/tdatamaster/tdm/defines/DBEvent;->DataLen:I

    iput-wide p1, p0, Lcom/tdatamaster/tdm/defines/DBEvent;->ID:J

    return-void
.end method
