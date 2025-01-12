.class public final enum Lcom/dmm/android/common/DmmApiErrorEnum;
.super Ljava/lang/Enum;
.source "DmmApiErrorEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/common/DmmApiErrorEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100000:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100011:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100021:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100031:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100041:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100050:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E100060:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210001:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210002:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210004:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210005:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210006:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210007:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210008:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210009:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210010:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210011:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210012:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210013:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210017:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210018:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E210019:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E800000:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E800001:Lcom/dmm/android/common/DmmApiErrorEnum;

.field public static final enum E999999:Lcom/dmm/android/common/DmmApiErrorEnum;


# instance fields
.field private final errorCode:Ljava/lang/String;

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v1, "E999999"

    const/4 v2, 0x0

    const-string v3, "E999999\u3000\u672a\u77e5\u306e\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u30a4\u30f3\u30bf\u30fc\u30cd\u30c3\u30c8\u3068\u306e\u63a5\u7d9a\u3092\u30c1\u30a7\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/common/DmmApiErrorEnum;->E999999:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v1, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v3, "E210001"

    const/4 v4, 0x1

    const-string v5, "E210001\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v1, v3, v4, v3, v5}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/dmm/android/common/DmmApiErrorEnum;->E210001:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v3, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v5, "E210002"

    const/4 v6, 0x2

    const-string v7, "E210002\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v3, v5, v6, v5, v7}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/dmm/android/common/DmmApiErrorEnum;->E210002:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v5, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v7, "E210004"

    const/4 v8, 0x3

    const-string v9, "E210004\u3000\u30a2\u30ab\u30a6\u30f3\u30c8\u306f\u5229\u7528\u505c\u6b62\u4e2d\u3066\u3099\u3059\u3002\u518d\u3073\u30ed\u30b0\u30a4\u30f3\u3059\u308b\u306b\u306f\u30d1\u30b9\u30ef\u30fc\u30c9\u306e\u518d\u8a2d\u5b9a\u304c\u5fc5\u8981\u3068\u306a\u308a\u307e\u3059\u3002"

    invoke-direct {v5, v7, v8, v7, v9}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/dmm/android/common/DmmApiErrorEnum;->E210004:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v7, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v9, "E210005"

    const/4 v10, 0x4

    const-string v11, "E210005\u3000\u30a2\u30ab\u30a6\u30f3\u30c8\u306f\u4e0d\u6b63\u306b\u5229\u7528\u3055\u308c\u305f\u53ef\u80fd\u6027\u304b\u3099\u3042\u308a\u307e\u3059\u3002\u518d\u3073\u30ed\u30b0\u30a4\u30f3\u3059\u308b\u306b\u306f\u30d1\u30b9\u30ef\u30fc\u30c9\u306e\u518d\u8a2d\u5b9a\u304c\u5fc5\u8981\u3068\u306a\u308a\u307e\u3059\u3002\u4e0b\u8a18\u30dc\u30bf\u30f3\u304b\u3089\u518d\u8a2d\u5b9a\u3092\u884c\u3063\u3066\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v7, v9, v10, v9, v11}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/dmm/android/common/DmmApiErrorEnum;->E210005:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v9, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v11, "E210006"

    const/4 v12, 0x5

    const-string v13, "E210006\u3000\u30e6\u30fc\u30b6\u30fcID\u307e\u305f\u306f\u30d1\u30b9\u30ef\u30fc\u30c9\u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    invoke-direct {v9, v11, v12, v11, v13}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/dmm/android/common/DmmApiErrorEnum;->E210006:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v11, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v13, "E210007"

    const/4 v14, 0x6

    const-string v15, "E210007\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v11, v13, v14, v13, v15}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/dmm/android/common/DmmApiErrorEnum;->E210007:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v13, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v15, "E210008"

    const/4 v14, 0x7

    const-string v12, "E210008\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v13, v15, v14, v15, v12}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/dmm/android/common/DmmApiErrorEnum;->E210008:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v12, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v15, "E210009"

    const/16 v14, 0x8

    const-string v10, "E210009\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v12, v15, v14, v15, v10}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/dmm/android/common/DmmApiErrorEnum;->E210009:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v10, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v15, "E210010"

    const/16 v14, 0x9

    const-string v8, "E210010\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v10, v15, v14, v15, v8}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/dmm/android/common/DmmApiErrorEnum;->E210010:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v8, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v15, "E210011"

    const/16 v14, 0xa

    const-string v6, "E210011\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v8, v15, v14, v15, v6}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/dmm/android/common/DmmApiErrorEnum;->E210011:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v6, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v15, "E210012"

    const/16 v14, 0xb

    const-string v4, "E210012"

    const-string v2, "E210012\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v6, v15, v14, v4, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/dmm/android/common/DmmApiErrorEnum;->E210012:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v4, "E210013"

    const/16 v14, 0xc

    const-string v15, "E210013"

    move-object/from16 v16, v6

    const-string v6, "E210013\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v4, v14, v15, v6}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E210013:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E210017"

    const/16 v14, 0xd

    const-string v15, "E210017"

    move-object/from16 v17, v2

    const-string v2, "E210017\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E210017:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E210018"

    const/16 v14, 0xe

    const-string v15, "E210018"

    move-object/from16 v18, v4

    const-string v4, "E210018\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E210018:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E210019"

    const/16 v14, 0xf

    const-string v15, "E210019"

    move-object/from16 v19, v2

    const-string v2, "E210019\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E210019:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100000"

    const/16 v14, 0x10

    const-string v15, "E100000"

    move-object/from16 v20, v4

    const-string v4, "E100000\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E100000:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100011"

    const/16 v14, 0x11

    const-string v15, "E100011"

    move-object/from16 v21, v2

    const-string v2, "E100011\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E100011:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100021"

    const/16 v14, 0x12

    const-string v15, "E100021"

    move-object/from16 v22, v4

    const-string v4, "E100021\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E100021:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100031"

    const/16 v14, 0x13

    const-string v15, "E100031"

    move-object/from16 v23, v2

    const-string v2, "E100031\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E100031:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100041"

    const/16 v14, 0x14

    const-string v15, "E100041"

    move-object/from16 v24, v4

    const-string v4, "E100041\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E100041:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100050"

    const/16 v14, 0x15

    const-string v15, "E100050"

    move-object/from16 v25, v2

    const-string v2, "E100050\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E100050:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E100060"

    const/16 v14, 0x16

    const-string v15, "E100060"

    move-object/from16 v26, v4

    const-string v4, "E100060\u3000\u30b7\u30b9\u30c6\u30e0\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002\u3082\u3046\u3057\u3070\u3089\u304f\u5f85\u3063\u3066\u518d\u5ea6\u30a2\u30af\u30bb\u30b9\u3057\u3066\u9802\u304f\u304b\u3001DMM.com\u30b5\u30dd\u30fc\u30c8\u30bb\u30f3\u30bf\u30fc\u307e\u3067\u3054\u9023\u7d61\u304f\u3060\u3055\u3044\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E100060:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v4, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E800000"

    const/16 v14, 0x17

    const-string v15, "E800000"

    move-object/from16 v27, v2

    const-string v2, "E800000 \u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u306b\u63a5\u7d9a\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->E800000:Lcom/dmm/android/common/DmmApiErrorEnum;

    new-instance v2, Lcom/dmm/android/common/DmmApiErrorEnum;

    const-string v6, "E800001"

    const/16 v14, 0x18

    const-string v15, "E800001"

    move-object/from16 v28, v4

    const-string v4, "E800001 \u4f1a\u54e1\u767b\u9332\u6e08\u307f\u3067\u3059\u3002"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/dmm/android/common/DmmApiErrorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/dmm/android/common/DmmApiErrorEnum;->E800001:Lcom/dmm/android/common/DmmApiErrorEnum;

    const/16 v4, 0x19

    new-array v4, v4, [Lcom/dmm/android/common/DmmApiErrorEnum;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v2, v4, v0

    sput-object v4, Lcom/dmm/android/common/DmmApiErrorEnum;->$VALUES:[Lcom/dmm/android/common/DmmApiErrorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/common/DmmApiErrorEnum;->errorCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/common/DmmApiErrorEnum;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static getError(Ljava/lang/String;)Lcom/dmm/android/common/DmmApiErrorEnum;
    .locals 1

    :try_start_0
    const-class v0, Lcom/dmm/android/common/DmmApiErrorEnum;

    invoke-static {v0, p0}, Lcom/dmm/android/common/DmmApiErrorEnum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/common/DmmApiErrorEnum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/common/DmmApiErrorEnum;
    .locals 1

    const-class v0, Lcom/dmm/android/common/DmmApiErrorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/common/DmmApiErrorEnum;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/common/DmmApiErrorEnum;
    .locals 1

    sget-object v0, Lcom/dmm/android/common/DmmApiErrorEnum;->$VALUES:[Lcom/dmm/android/common/DmmApiErrorEnum;

    invoke-virtual {v0}, [Lcom/dmm/android/common/DmmApiErrorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/common/DmmApiErrorEnum;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/common/DmmApiErrorEnum;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/common/DmmApiErrorEnum;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
