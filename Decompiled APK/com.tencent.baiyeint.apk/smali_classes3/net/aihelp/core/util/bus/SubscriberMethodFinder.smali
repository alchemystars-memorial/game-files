.class Lnet/aihelp/core/util/bus/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;
    }
.end annotation


# static fields
.field private static final BRIDGE:I = 0x40

.field private static final FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

.field private static final METHOD_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODIFIERS_IGNORE:I = 0x1448

.field private static final POOL_SIZE:I = 0x4

.field private static final SYNTHETIC:I = 0x1000


# instance fields
.field private final ignoreGeneratedIndex:Z

.field private final strictMethodVerification:Z

.field private subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    sput-object v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    iput-boolean p2, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->strictMethodVerification:Z

    iput-boolean p3, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    return-void
.end method

.method static clearCaches()V
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private findUsingInfo(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->prepareFindState()Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    :goto_0
    iget-object p1, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->getSubscriberInfo(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    move-result-object p1

    iput-object p1, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    iget-object p1, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    invoke-interface {p1}, Lnet/aihelp/core/util/bus/meta/SubscriberInfo;->getSubscriberMethods()[Lnet/aihelp/core/util/bus/SubscriberMethod;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget-object v4, v3, Lnet/aihelp/core/util/bus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lnet/aihelp/core/util/bus/SubscriberMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)V

    :cond_2
    invoke-virtual {v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->getMethodsAndRelease(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findUsingReflection(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->prepareFindState()Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    :goto_0
    iget-object p1, v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)V

    invoke-virtual {v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->getMethodsAndRelease(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findUsingReflectionInSingleClass(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)V
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    iget-object v1, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    iput-boolean v0, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const-string v8, "."

    if-eqz v7, :cond_2

    and-int/lit16 v5, v5, 0x1448

    if-nez v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    if-ne v7, v0, :cond_0

    const-class v7, Lnet/aihelp/core/util/bus/Subscribe;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lnet/aihelp/core/util/bus/Subscribe;

    if-eqz v7, :cond_4

    aget-object v8, v5, v3

    invoke-virtual {p1, v6, v8}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Lnet/aihelp/core/util/bus/Subscribe;->threadMode()Lnet/aihelp/core/util/bus/ThreadMode;

    move-result-object v9

    iget-object v11, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    new-instance v12, Lnet/aihelp/core/util/bus/SubscriberMethod;

    invoke-interface {v7}, Lnet/aihelp/core/util/bus/Subscribe;->priority()I

    move-result v10

    invoke-interface {v7}, Lnet/aihelp/core/util/bus/Subscribe;->sticky()Z

    move-result v13

    move-object v5, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lnet/aihelp/core/util/bus/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v7, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v7, :cond_4

    const-class v7, Lnet/aihelp/core/util/bus/Subscribe;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Subscribe method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must have exactly 1 parameter but has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v5, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v5, :cond_4

    const-class v5, Lnet/aihelp/core/util/bus/Subscribe;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not inspect methods of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please consider using EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v1, Lnet/aihelp/core/util/bus/EventBusException;

    invoke-direct {v1, p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getMethodsAndRelease(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->recycle()V

    sget-object v1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    :try_start_0
    sget-object v3, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    aput-object p1, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSubscriberInfo(Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;)Lnet/aihelp/core/util/bus/meta/SubscriberInfo;
    .locals 3

    iget-object v0, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    invoke-interface {v0}, Lnet/aihelp/core/util/bus/meta/SubscriberInfo;->getSuperSubscriberInfo()Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->subscriberInfo:Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    invoke-interface {v0}, Lnet/aihelp/core/util/bus/meta/SubscriberInfo;->getSuperSubscriberInfo()Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    move-result-object v0

    iget-object v1, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-interface {v0}, Lnet/aihelp/core/util/bus/meta/SubscriberInfo;->getSubscriberClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;

    iget-object v2, p1, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;->getSubscriberInfo(Ljava/lang/Class;)Lnet/aihelp/core/util/bus/meta/SubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private prepareFindState()Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;
    .locals 5

    sget-object v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :try_start_0
    sget-object v2, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v1

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder$FindState;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-boolean v1, p0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->findUsingReflection(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->findUsingInfo(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    new-instance v0, Lnet/aihelp/core/util/bus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
