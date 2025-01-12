.class final Lcom/dmm/games/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/dmm/games/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newFactory(Lcom/dmm/games/gson/reflect/TypeToken;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/dmm/games/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/dmm/games/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/reflect/TypeToken;Lcom/dmm/games/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/dmm/games/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;
    .locals 0
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

    iget-object p1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/dmm/games/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
