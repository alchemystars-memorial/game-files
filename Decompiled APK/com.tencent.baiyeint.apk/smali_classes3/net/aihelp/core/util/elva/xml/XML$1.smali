.class final Lnet/aihelp/core/util/elva/xml/XML$1;
.super Ljava/lang/Object;
.source "XML.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/elva/xml/XML;->codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/xml/XML$1;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/util/elva/xml/XML$1$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/elva/xml/XML$1$1;-><init>(Lnet/aihelp/core/util/elva/xml/XML$1;)V

    return-object v0
.end method
