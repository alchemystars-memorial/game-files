.class public Lorg/spongycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;
.source "TestFailedException.java"


# instance fields
.field private _result:Lorg/spongycastle/util/test/TestResult;


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/test/TestResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    return-void
.end method


# virtual methods
.method public getResult()Lorg/spongycastle/util/test/TestResult;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    return-object v0
.end method
