.class final Lcom/dmm/games/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/dmm/games/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/gson/internal/bind/ArrayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dmm/games/gson/Gson;",
            "Lcom/dmm/games/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/dmm/games/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/dmm/games/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/dmm/games/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/dmm/games/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dmm/games/gson/Gson;->getAdapter(Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    new-instance v1, Lcom/dmm/games/gson/internal/bind/ArrayTypeAdapter;

    invoke-static {p2}, Lcom/dmm/games/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/dmm/games/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/Class;)V

    return-object v1
.end method
