.class public Lcom/dmm/android/signature/DmmSigningStrategy;
.super Ljava/lang/Object;
.source "DmmSigningStrategy.java"

# interfaces
.implements Loauth/signpost/signature/SigningStrategy;


# static fields
.field private static final serialVersionUID:J = -0x2389c5f440969397L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOAuthParameters(Loauth/signpost/http/HttpParameters;)Loauth/signpost/http/HttpParameters;
    .locals 4

    new-instance v0, Loauth/signpost/http/HttpParameters;

    invoke-direct {v0}, Loauth/signpost/http/HttpParameters;-><init>()V

    invoke-virtual {p0}, Loauth/signpost/http/HttpParameters;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "oauth_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "xoauth_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-virtual {v0, v2, v1}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public writeSignature(Ljava/lang/String;Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "realm"

    invoke-virtual {p3, v1}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Loauth/signpost/http/HttpParameters;->getAsHeaderElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Lcom/dmm/android/signature/DmmSigningStrategy;->getOAuthParameters(Loauth/signpost/http/HttpParameters;)Loauth/signpost/http/HttpParameters;

    move-result-object p3

    const/4 v1, 0x1

    const-string v2, "oauth_signature"

    invoke-virtual {p3, v2, p1, v1}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Loauth/signpost/http/HttpParameters;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Loauth/signpost/http/HttpParameters;->getAsHeaderElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Auth Header"

    invoke-static {p3, p1}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Authorization"

    invoke-interface {p2, p3, p1}, Loauth/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
