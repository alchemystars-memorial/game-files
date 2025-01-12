.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->initReport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$12;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$12;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
