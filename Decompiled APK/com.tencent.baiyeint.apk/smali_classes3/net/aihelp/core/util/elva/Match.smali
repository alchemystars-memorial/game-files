.class public Lnet/aihelp/core/util/elva/Match;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/elva/Match$Section;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8L


# instance fields
.field private callback:Lnet/aihelp/core/util/elva/ElvaBot;

.field private input:Lnet/aihelp/core/util/elva/text/Sentence;

.field private matchPath:[Ljava/lang/String;

.field private final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/aihelp/core/util/elva/Match$Section;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private that:Lnet/aihelp/core/util/elva/text/Sentence;

.field private topic:Lnet/aihelp/core/util/elva/text/Sentence;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->PATTERN:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->THAT:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->TOPIC:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/ElvaBot;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->PATTERN:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->THAT:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->TOPIC:Lnet/aihelp/core/util/elva/Match$Section;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/Match;->callback:Lnet/aihelp/core/util/elva/ElvaBot;

    iput-object p2, p0, Lnet/aihelp/core/util/elva/Match;->input:Lnet/aihelp/core/util/elva/text/Sentence;

    iput-object p3, p0, Lnet/aihelp/core/util/elva/Match;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    iput-object p4, p0, Lnet/aihelp/core/util/elva/Match;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-virtual {p2}, Lnet/aihelp/core/util/elva/text/Sentence;->normalized()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/text/Sentence;->normalized()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lnet/aihelp/core/util/elva/text/Sentence;->normalized()[Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/core/util/elva/Match;->setUpMatchPath([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 3

    sget-object v0, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    sget-object v1, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lnet/aihelp/core/util/elva/Match;-><init>(Lnet/aihelp/core/util/elva/ElvaBot;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;)V

    return-void
.end method

.method private appendWildcard(Ljava/util/List;Lnet/aihelp/core/util/elva/text/Sentence;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/aihelp/core/util/elva/text/Sentence;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    const-string p2, ""

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p3, p4}, Lnet/aihelp/core/util/elva/text/Sentence;->original(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: {\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/aihelp/core/util/elva/text/Sentence;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/aihelp/core/util/elva/text/Sentence;->getNormalized()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}\nBegin Index: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nEnd Index: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setUpMatchPath([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    array-length v0, p1

    array-length v1, p2

    array-length v2, p3

    add-int/lit8 v3, v0, 0x1

    add-int v4, v3, v1

    add-int/lit8 v5, v4, 0x1

    add-int v6, v5, v2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    const-string v7, "<THAT>"

    aput-object v7, v6, v0

    const-string v7, "<TOPIC>"

    aput-object v7, v6, v4

    const/4 v4, 0x0

    invoke-static {p1, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    invoke-static {p2, v4, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    invoke-static {p3, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public appendWildcard(II)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->input:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/text/Sentence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->PATTERN:Lnet/aihelp/core/util/elva/Match$Section;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/Match;->input:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/aihelp/core/util/elva/Match;->appendWildcard(Ljava/util/List;Lnet/aihelp/core/util/elva/text/Sentence;II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/text/Sentence;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->THAT:Lnet/aihelp/core/util/elva/Match$Section;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/Match;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/aihelp/core/util/elva/Match;->appendWildcard(Ljava/util/List;Lnet/aihelp/core/util/elva/text/Sentence;II)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/text/Sentence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    sget-object v1, Lnet/aihelp/core/util/elva/Match$Section;->TOPIC:Lnet/aihelp/core/util/elva/Match$Section;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/Match;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/aihelp/core/util/elva/Match;->appendWildcard(Ljava/util/List;Lnet/aihelp/core/util/elva/text/Sentence;II)V

    :cond_2
    return-void
.end method

.method public getCallback()Lnet/aihelp/core/util/elva/ElvaBot;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->callback:Lnet/aihelp/core/util/elva/ElvaBot;

    return-object v0
.end method

.method public getMatchPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMatchPath()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    return-object v0
.end method

.method public getMatchPathLength()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->matchPath:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public setCallback(Lnet/aihelp/core/util/elva/ElvaBot;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/Match;->callback:Lnet/aihelp/core/util/elva/ElvaBot;

    return-void
.end method

.method public wildcard(Lnet/aihelp/core/util/elva/Match$Section;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Match;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
