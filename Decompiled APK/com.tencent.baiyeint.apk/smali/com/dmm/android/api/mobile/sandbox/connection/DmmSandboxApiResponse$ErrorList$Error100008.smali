.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100008;
.super Ljava/lang/Object;
.source "DmmSandboxApiResponse.java"

# interfaces
.implements Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error100008"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    const v0, 0x186a8

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u30ed\u30b0\u30a4\u30f3\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002\u30b5\u30dd\u30fc\u30c8\u307e\u3067\u304a\u554f\u3044\u5408\u308f\u305b\u304f\u3060\u3055\u3044\u3002"

    return-object v0
.end method
