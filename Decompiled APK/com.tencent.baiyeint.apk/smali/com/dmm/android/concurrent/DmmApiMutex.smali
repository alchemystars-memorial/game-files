.class public Lcom/dmm/android/concurrent/DmmApiMutex;
.super Ljava/util/concurrent/Semaphore;
.source "DmmApiMutex.java"


# static fields
.field private static final sInstance:Lcom/dmm/android/concurrent/DmmApiMutex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/concurrent/DmmApiMutex;

    invoke-direct {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;-><init>()V

    sput-object v0, Lcom/dmm/android/concurrent/DmmApiMutex;->sInstance:Lcom/dmm/android/concurrent/DmmApiMutex;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;
    .locals 1

    sget-object v0, Lcom/dmm/android/concurrent/DmmApiMutex;->sInstance:Lcom/dmm/android/concurrent/DmmApiMutex;

    return-object v0
.end method
