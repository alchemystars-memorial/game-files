.class public final enum Lcom/facebook/login/LoginBehavior;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/LoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/LoginBehavior;

.field public static final enum DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

.field public static final enum DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

.field public static final enum WEB_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final allowsCustomTabAuth:Z

.field private final allowsDeviceAuth:Z

.field private final allowsFacebookLiteAuth:Z

.field private final allowsGetTokenAuth:Z

.field private final allowsInstagramAppAuth:Z

.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v10, Lcom/facebook/login/LoginBehavior;

    const-string v1, "NATIVE_WITH_FALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v10, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    new-instance v0, Lcom/facebook/login/LoginBehavior;

    const-string v12, "NATIVE_ONLY"

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v1, Lcom/facebook/login/LoginBehavior;

    const-string v22, "KATANA_ONLY"

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v1, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v2, Lcom/facebook/login/LoginBehavior;

    const-string v12, "WEB_ONLY"

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v2, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v3, Lcom/facebook/login/LoginBehavior;

    const-string v22, "WEB_VIEW_ONLY"

    const/16 v23, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v3, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v12, "DIALOG_ONLY"

    const/4 v13, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v4, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v5, Lcom/facebook/login/LoginBehavior;

    const-string v22, "DEVICE_AUTH"

    const/16 v23, 0x6

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v5, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/facebook/login/LoginBehavior;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    sput-object v6, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    iput-boolean p4, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    iput-boolean p5, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    iput-boolean p6, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    iput-boolean p7, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    iput-boolean p8, p0, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    iput-boolean p9, p0, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;
    .locals 1

    const-class v0, Lcom/facebook/login/LoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/LoginBehavior;
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, [Lcom/facebook/login/LoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method


# virtual methods
.method allowsCustomTabAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    return v0
.end method

.method allowsDeviceAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    return v0
.end method

.method allowsFacebookLiteAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    return v0
.end method

.method allowsGetTokenAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    return v0
.end method

.method allowsInstagramAppAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth:Z

    return v0
.end method

.method allowsKatanaAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    return v0
.end method

.method allowsWebViewAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    return v0
.end method
