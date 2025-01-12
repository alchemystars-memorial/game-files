.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$ErrorList$Error101;
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
    name = "Error101"
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

    const/16 v0, 0x65

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    return-object v0
.end method
