.class public Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"


# instance fields
.field defaultDialogIconId:I

.field final defaultErrorMsgId:I

.field defaultEventTypeOnDialogClosed:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultTitleId:I

.field eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field logExceptions:Z

.field final mapping:Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

.field final resources:Landroid/content/res/Resources;

.field tagForLoggingExceptions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->logExceptions:Z

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    iput p2, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultTitleId:I

    iput p3, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    new-instance p1, Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

    invoke-direct {p1}, Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->mapping:Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->mapping:Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;->addMapping(Ljava/lang/Class;I)Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

    return-object p0
.end method

.method public disableExceptionLogging()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->logExceptions:Z

    return-void
.end method

.method getEventBus()Lnet/aihelp/core/util/bus/EventBus;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMessageIdForThrowable(Ljava/lang/Throwable;)I
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->mapping:Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/bus/util/ExceptionToResourceMapping;->mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No specific message ressource ID found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    return p1
.end method

.method public setDefaultDialogIconId(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultDialogIconId:I

    return-void
.end method

.method public setDefaultEventTypeOnDialogClosed(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    return-void
.end method

.method public setEventBus(Lnet/aihelp/core/util/bus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    return-void
.end method

.method public setTagForLoggingExceptions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    return-void
.end method
