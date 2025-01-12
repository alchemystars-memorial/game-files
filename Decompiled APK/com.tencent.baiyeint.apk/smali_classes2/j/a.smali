.class public final Lj/a;
.super Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lj/a;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, ""

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Ljava/lang/String;

    :cond_6
    array-length p0, v3

    const/16 v0, 0x8

    if-le p0, v0, :cond_7

    return v2

    :cond_7
    move p0, v2

    move v4, p0

    move v5, v4

    :goto_1
    array-length v6, v3

    const/4 v7, 0x1

    if-ge p0, v6, :cond_f

    aget-object v6, v3, p0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_8

    add-int/2addr v5, v7

    if-le v5, v7, :cond_d

    return v2

    :cond_8
    array-length v5, v3

    sub-int/2addr v5, v7

    if-ne p0, v5, :cond_a

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_9

    return v2

    :cond_9
    add-int/lit8 v4, v4, 0x2

    move v5, v2

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-le v5, v7, :cond_b

    return v2

    :cond_b
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v5, :cond_e

    const v6, 0xffff

    if-le v5, v6, :cond_c

    goto :goto_3

    :cond_c
    move v5, v2

    :cond_d
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catch_0
    :cond_e
    :goto_3
    return v2

    :cond_f
    if-gt v4, v0, :cond_11

    if-ge v4, v0, :cond_10

    if-nez v1, :cond_10

    goto :goto_4

    :cond_10
    return v7

    :cond_11
    :goto_4
    return v2
.end method
