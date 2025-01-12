.class public final enum Lnet/aihelp/core/util/permission/Permission$Result;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/permission/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/util/permission/Permission$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/util/permission/Permission$Result;

.field public static final enum DENIED:Lnet/aihelp/core/util/permission/Permission$Result;

.field public static final enum GO_SETTING:Lnet/aihelp/core/util/permission/Permission$Result;

.field public static final enum GRANTED:Lnet/aihelp/core/util/permission/Permission$Result;

.field public static final enum NONE:Lnet/aihelp/core/util/permission/Permission$Result;

.field public static final enum RATIONAL:Lnet/aihelp/core/util/permission/Permission$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnet/aihelp/core/util/permission/Permission$Result;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/util/permission/Permission$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/util/permission/Permission$Result;->GRANTED:Lnet/aihelp/core/util/permission/Permission$Result;

    new-instance v1, Lnet/aihelp/core/util/permission/Permission$Result;

    const-string v3, "DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/util/permission/Permission$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/util/permission/Permission$Result;->DENIED:Lnet/aihelp/core/util/permission/Permission$Result;

    new-instance v3, Lnet/aihelp/core/util/permission/Permission$Result;

    const-string v5, "RATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/util/permission/Permission$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/util/permission/Permission$Result;->RATIONAL:Lnet/aihelp/core/util/permission/Permission$Result;

    new-instance v5, Lnet/aihelp/core/util/permission/Permission$Result;

    const-string v7, "GO_SETTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/aihelp/core/util/permission/Permission$Result;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/aihelp/core/util/permission/Permission$Result;->GO_SETTING:Lnet/aihelp/core/util/permission/Permission$Result;

    new-instance v7, Lnet/aihelp/core/util/permission/Permission$Result;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/aihelp/core/util/permission/Permission$Result;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/aihelp/core/util/permission/Permission$Result;->NONE:Lnet/aihelp/core/util/permission/Permission$Result;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/aihelp/core/util/permission/Permission$Result;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/aihelp/core/util/permission/Permission$Result;->$VALUES:[Lnet/aihelp/core/util/permission/Permission$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/util/permission/Permission$Result;
    .locals 1

    const-class v0, Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/util/permission/Permission$Result;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/util/permission/Permission$Result;
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/permission/Permission$Result;->$VALUES:[Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {v0}, [Lnet/aihelp/core/util/permission/Permission$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/util/permission/Permission$Result;

    return-object v0
.end method
