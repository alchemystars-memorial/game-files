.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200;
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
    name = "Error200"
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

    const/16 v0, 0xc8

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u30e1\u30f3\u30c6\u30ca\u30f3\u30b9\u4e2d\u3067\u3059\u3002\n\u3057\u3070\u3089\u304f\u6642\u9593\u3092\u304a\u3044\u3066\u304a\u8a66\u3057\u4e0b\u3055\u3044\u3002"

    return-object v0
.end method
