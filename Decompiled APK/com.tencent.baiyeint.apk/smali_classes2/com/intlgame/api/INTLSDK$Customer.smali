.class public Lcom/intlgame/api/INTLSDK$Customer;
.super Lcom/intlgame/api/customer/INTLCustomer;
.source "INTLSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/api/INTLSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Customer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/customer/INTLCustomer;-><init>()V

    return-void
.end method
