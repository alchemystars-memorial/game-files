.class final Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;
.super Ljava/lang/Object;
.source "PKCECode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/pkce/PKCECode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/linecorp/linesdk/internal/pkce/PKCECode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;-><init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 0

    new-array p1, p1, [Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;->newArray(I)[Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object p1

    return-object p1
.end method
