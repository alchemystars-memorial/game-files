.class final Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$Converter<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

.field private synthetic b:Lcom/uqm/crashsight/protobuf/Internal$EnumLite;


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$1;->a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;->a(I)Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$1;->b:Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    :cond_0
    return-object p1
.end method
