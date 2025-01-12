.class public Lcom/gamesafe/ano/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile a:Lcom/gamesafe/ano/s;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:I

.field private e:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/gamesafe/ano/s;->e:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/gamesafe/ano/s;
    .locals 2

    sget-object v0, Lcom/gamesafe/ano/s;->a:Lcom/gamesafe/ano/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/gamesafe/ano/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/gamesafe/ano/s;->a:Lcom/gamesafe/ano/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gamesafe/ano/s;

    invoke-direct {v1}, Lcom/gamesafe/ano/s;-><init>()V

    sput-object v1, Lcom/gamesafe/ano/s;->a:Lcom/gamesafe/ano/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/gamesafe/ano/s;->a:Lcom/gamesafe/ano/s;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/gamesafe/ano/s;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamesafe/ano/s;->c:Z

    :try_start_0
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/gamesafe/ano/s;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/gamesafe/ano/s;->d:I

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "Dido NzinjmHvivbzm avdgzy"

    invoke-static {p1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    aget p1, p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/gamesafe/ano/s;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/gamesafe/ano/s;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/gamesafe/ano/s;->d:I

    const/16 v1, 0x400

    if-gt p1, v1, :cond_1

    const/16 p1, 0x40

    if-le v0, p1, :cond_3

    iget-object p1, p0, Lcom/gamesafe/ano/s;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v0, 0xc

    if-le p1, v0, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/gamesafe/ano/s;->b:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NzinjmXio:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gamesafe/ano/s;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " XcvibzXio:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/gamesafe/ano/s;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/gamesafe/ano/s;->d:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    const-string v0, "NzinjmXcvibzOjjHpxc"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/gamesafe/ano/s;->b:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
