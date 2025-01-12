.class public interface abstract Lcom/dmm/games/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/dmm/games/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/dmm/games/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/gson/JsonParseException;
        }
    .end annotation
.end method
