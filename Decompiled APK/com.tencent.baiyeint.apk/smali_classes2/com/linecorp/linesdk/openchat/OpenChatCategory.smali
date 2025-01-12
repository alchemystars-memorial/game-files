.class public final enum Lcom/linecorp/linesdk/openchat/OpenChatCategory;
.super Ljava/lang/Enum;
.source "OpenChatCategory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008 \u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        "",
        "id",
        "",
        "resourceId",
        "(Ljava/lang/String;III)V",
        "getId",
        "()I",
        "getResourceId",
        "NotSelected",
        "School",
        "Friend",
        "Company",
        "Organization",
        "Region",
        "Baby",
        "Sports",
        "Game",
        "Book",
        "Movies",
        "Photo",
        "Art",
        "Animation",
        "Music",
        "Tv",
        "Celebrity",
        "Food",
        "Travel",
        "Pet",
        "Car",
        "Fashion",
        "Health",
        "Finance",
        "Study",
        "Etc",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;


# instance fields
.field private final id:I

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1a

    new-array v1, v0, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_notselected:I

    const-string v4, "NotSelected"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_school:I

    const-string v4, "School"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v6, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v6

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_friend:I

    const-string v4, "Friend"

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_company:I

    const-string v4, "Company"

    const/4 v5, 0x3

    const/4 v7, 0x5

    invoke-direct {v2, v4, v5, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_org:I

    const-string v4, "Organization"

    const/4 v5, 0x4

    const/4 v8, 0x6

    invoke-direct {v2, v4, v5, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_region:I

    const-string v4, "Region"

    const/16 v5, 0x8

    invoke-direct {v2, v4, v7, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v7

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_baby:I

    const-string v4, "Baby"

    const/16 v7, 0x1c

    invoke-direct {v2, v4, v8, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v8

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_sports:I

    const-string v4, "Sports"

    const/16 v7, 0x10

    invoke-direct {v2, v4, v6, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v6

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_game:I

    const-string v4, "Game"

    const/16 v6, 0x11

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_book:I

    const-string v4, "Book"

    const/16 v5, 0x9

    const/16 v8, 0x1d

    invoke-direct {v2, v4, v5, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_movies:I

    const-string v4, "Movies"

    const/16 v5, 0xa

    const/16 v8, 0x1e

    invoke-direct {v2, v4, v5, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_photo:I

    const-string v4, "Photo"

    const/16 v5, 0xb

    const/16 v8, 0x25

    invoke-direct {v2, v4, v5, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_art:I

    const-string v4, "Art"

    const/16 v8, 0xc

    const/16 v9, 0x29

    invoke-direct {v2, v4, v8, v9, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v8

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_ani:I

    const-string v4, "Animation"

    const/16 v9, 0xd

    const/16 v10, 0x16

    invoke-direct {v2, v4, v9, v10, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_music:I

    const-string v4, "Music"

    const/16 v9, 0xe

    const/16 v11, 0x21

    invoke-direct {v2, v4, v9, v11, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_tv:I

    const-string v4, "Tv"

    const/16 v9, 0xf

    const/16 v11, 0x18

    invoke-direct {v2, v4, v9, v11, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_celebrity:I

    const-string v4, "Celebrity"

    invoke-direct {v2, v4, v7, v0, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v2, v1, v7

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_food:I

    const-string v3, "Food"

    invoke-direct {v0, v3, v6, v8, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v6

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_travel:I

    const-string v3, "Travel"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v4, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v4

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_pet:I

    const-string v3, "Pet"

    const/16 v4, 0x13

    const/16 v6, 0x1b

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v4

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_car:I

    const-string v3, "Car"

    const/16 v6, 0x14

    invoke-direct {v0, v3, v6, v4, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v6

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_fashion:I

    const-string v3, "Fashion"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_health:I

    const-string v3, "Health"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v10, v4, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v10

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_finance:I

    const-string v3, "Finance"

    const/16 v6, 0x28

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v4

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_study:I

    const-string v3, "Study"

    invoke-direct {v0, v3, v11, v5, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v0, v1, v11

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget v2, Lcom/linecorp/linesdk/R$string;->square_create_category_etc:I

    const-string v3, "Etc"

    const/16 v4, 0x19

    const/16 v5, 0x23

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    iput p4, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    return v0
.end method

.method public final getResourceId()I
    .locals 1

    iget v0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return v0
.end method
