.class public interface abstract Lcom/miui/referrer/IGetAppsReferrerService;
.super Ljava/lang/Object;
.source "IGetAppsReferrerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/referrer/IGetAppsReferrerService$Stub;,
        Lcom/miui/referrer/IGetAppsReferrerService$Default;
    }
.end annotation


# virtual methods
.method public abstract referrerBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
