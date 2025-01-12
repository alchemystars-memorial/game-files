.class public abstract Lcom/gcore/abase/apollobuffer/ActionBufferBase;
.super Lcom/gcore/abase/apollobuffer/ApolloBufferBase;
.source "ActionBufferBase.java"


# instance fields
.field public Action:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gcore/abase/apollobuffer/ActionBufferBase;->Action:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;-><init>()V

    iput p1, p0, Lcom/gcore/abase/apollobuffer/ActionBufferBase;->Action:I

    return-void
.end method


# virtual methods
.method protected BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    .locals 1

    iget v0, p0, Lcom/gcore/abase/apollobuffer/ActionBufferBase;->Action:I

    invoke-virtual {p1, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(I)I

    move-result p1

    iput p1, p0, Lcom/gcore/abase/apollobuffer/ActionBufferBase;->Action:I

    return-void
.end method

.method protected BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
    .locals 1

    iget v0, p0, Lcom/gcore/abase/apollobuffer/ActionBufferBase;->Action:I

    invoke-virtual {p1, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    return-void
.end method
