.class public Lcom/gcore/abase/config/ConfigBundle;
.super Ljava/lang/Object;
.source "ConfigBundle.java"


# static fields
.field public static sInstance:Lcom/gcore/abase/config/ConfigBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcore/abase/config/ConfigBundle;

    invoke-direct {v0}, Lcom/gcore/abase/config/ConfigBundle;-><init>()V

    sput-object v0, Lcom/gcore/abase/config/ConfigBundle;->sInstance:Lcom/gcore/abase/config/ConfigBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static getInstance()Lcom/gcore/abase/config/ConfigBundle;
    .locals 1

    sget-object v0, Lcom/gcore/abase/config/ConfigBundle;->sInstance:Lcom/gcore/abase/config/ConfigBundle;

    return-object v0
.end method

.method private native getInt(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getLong(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method private native getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native setBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native setInt(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setLong(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method private native setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gcore/abase/config/ConfigBundle;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->setInt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gcore/abase/config/ConfigBundle;->setLong(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gcore/abase/config/ConfigBundle;->setBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
