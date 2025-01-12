.class public Lcom/gcore/abase/URLResponse;
.super Ljava/lang/Object;
.source "URLResponse.java"


# instance fields
.field public URL:Ljava/lang/String;

.field public body:[B

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public statusMsg:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gcore/abase/URLResponse;->statusMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/URLResponse;->URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/URLResponse;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/URLResponse;->headers:Ljava/util/Map;

    return-void
.end method
