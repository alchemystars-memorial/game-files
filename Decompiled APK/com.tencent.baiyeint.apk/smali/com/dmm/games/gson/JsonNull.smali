.class public final Lcom/dmm/games/gson/JsonNull;
.super Lcom/dmm/games/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lcom/dmm/games/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/games/gson/JsonNull;

    invoke-direct {v0}, Lcom/dmm/games/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/dmm/games/gson/JsonNull;->INSTANCE:Lcom/dmm/games/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/dmm/games/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/dmm/games/gson/JsonElement;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/games/gson/JsonNull;->deepCopy()Lcom/dmm/games/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/dmm/games/gson/JsonNull;
    .locals 1

    sget-object v0, Lcom/dmm/games/gson/JsonNull;->INSTANCE:Lcom/dmm/games/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    instance-of p1, p1, Lcom/dmm/games/gson/JsonNull;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/dmm/games/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
