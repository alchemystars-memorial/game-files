.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error200014;
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
    name = "Error200014"
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

    const v0, 0x30d4e

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "DMM\u52d5\u753b\u30a2\u30d7\u30ea\u304c\u5225ID\u3067\u30ed\u30b0\u30a4\u30f3\u3055\u308c\u3066\u3044\u307e\u3059\u3002\n\u73fe\u5728\u306e\u30a2\u30ab\u30a6\u30f3\u30c8\u3068\u540c\u3058ID\u3067\u30ed\u30b0\u30a4\u30f3\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    return-object v0
.end method
