.class public abstract Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;
.super Ljava/lang/Object;
.source "ContextPropertyChangeListener.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->name:Ljava/lang/String;

    return-object v0
.end method
