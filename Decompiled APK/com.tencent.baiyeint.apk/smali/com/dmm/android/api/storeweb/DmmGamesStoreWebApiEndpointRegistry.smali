.class public final enum Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;
.super Ljava/lang/Enum;
.source "DmmGamesStoreWebApiEndpointRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

.field public static final enum DEVELOP:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

.field public static final enum PRODUCTION:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

.field public static final enum STAGING:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x0

    const-string v3, "https://api.store.games.dmm.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->PRODUCTION:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    new-instance v1, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    const-string v3, "STAGING"

    const/4 v4, 0x1

    const-string v5, "https://api.stg-store.games.dmm.com"

    invoke-direct {v1, v3, v4, v5}, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->STAGING:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    new-instance v3, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    const-string v5, "DEVELOP"

    const/4 v6, 0x2

    const-string v7, "https://api.dev-store.games.dmm.com"

    invoke-direct {v3, v5, v6, v7}, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->DEVELOP:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->$VALUES:[Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->url:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;
    .locals 1

    const-class v0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;
    .locals 1

    sget-object v0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->$VALUES:[Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    invoke-virtual {v0}, [Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    return-object v0
.end method
