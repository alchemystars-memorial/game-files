.class public Lio/jsonwebtoken/impl/DefaultClock;
.super Ljava/lang/Object;
.source "DefaultClock.java"

# interfaces
.implements Lio/jsonwebtoken/Clock;


# static fields
.field public static final INSTANCE:Lio/jsonwebtoken/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultClock;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultClock;-><init>()V

    sput-object v0, Lio/jsonwebtoken/impl/DefaultClock;->INSTANCE:Lio/jsonwebtoken/Clock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
