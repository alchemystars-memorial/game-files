.class public abstract Lcom/gcore/abase/apollobuffer/ApolloBufferBase;
.super Ljava/lang/Object;
.source "ApolloBufferBase.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    .locals 0

    return-void
.end method

.method protected BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
    .locals 0

    return-void
.end method

.method public Decode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public Decode([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;

    invoke-direct {v1, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V

    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public Encode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public Encode()[B
    .locals 1

    :try_start_0
    new-instance v0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;

    invoke-direct {v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    invoke-virtual {v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->GetBufferData()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
.end method

.method public abstract WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
.end method
