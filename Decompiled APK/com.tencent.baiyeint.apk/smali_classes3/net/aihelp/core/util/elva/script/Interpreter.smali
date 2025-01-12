.class public interface abstract Lnet/aihelp/core/util/elva/script/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"


# virtual methods
.method public abstract evaluate(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/core/util/elva/script/InterpretingException;
        }
    .end annotation
.end method

.method public abstract variable(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/core/util/elva/script/InterpretingException;
        }
    .end annotation
.end method

.method public abstract variable(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/core/util/elva/script/InterpretingException;
        }
    .end annotation
.end method
