.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error100007;
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
    name = "Error100007"
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

    const v0, 0x186a7

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u30e1\u30fc\u30eb\u8a8d\u8a3c\u304c\u5fc5\u8981\u3067\u3059\u3002"

    return-object v0
.end method
