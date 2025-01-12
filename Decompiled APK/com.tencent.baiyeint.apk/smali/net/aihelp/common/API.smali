.class public Lnet/aihelp/common/API;
.super Ljava/lang/Object;
.source "API.java"


# static fields
.field public static ASK_FOR_RESOLVE_STATUS:Ljava/lang/String; = "/elva/api/sdk/resolve"

.field public static CDN_URL:Ljava/lang/String; = "https://cdn.aihelp.net/Elva"

.field public static CONFIG_BUSINESS_LOGIC_URL:Ljava/lang/String; = ""

.field public static CONFIG_FAQ_HOT_TOPIC_URL:Ljava/lang/String; = ""

.field public static CONFIG_FILE_URL:Ljava/lang/String; = ""

.field public static CONFIG_OPINION_URL:Ljava/lang/String; = ""

.field public static CONFIG_PROCESS_URL:Ljava/lang/String; = ""

.field public static CONFIG_STYLE_SHEET_URL:Ljava/lang/String; = ""

.field public static CONFIG_TEXT_URL:Ljava/lang/String; = ""

.field public static CRM_TOKEN_URL:Ljava/lang/String; = "/elva/api/v3.0/crmtoken"

.field public static FAQ_FEEDBACK_URL:Ljava/lang/String; = "/elva/api/v3.0/faqfeedback/like"

.field public static FAQ_URL:Ljava/lang/String; = "/elva/api/v3.0/faqs"

.field public static FETCH_NEW_MSG:Ljava/lang/String; = "/elva/api/v3.0/message/fetch"

.field public static FORM_URL:Ljava/lang/String; = "/elva/api/v3.0/faqs2"

.field public static GENERATE_NEW_TICKET:Ljava/lang/String; = "/elva/api/v3.0/sdk/ticketcreate"

.field public static GET_LAST_CONVERSATION:Ljava/lang/String; = "/elva/api/v3.0/sdk/history"

.field public static GET_USER_TOKEN:Ljava/lang/String; = "/elva/api/v3.0/sdk/getusertoken"

.field public static HOST_URL:Ljava/lang/String; = "aihelp.net"

.field public static INIT_URL:Ljava/lang/String; = "/elva/api/v3.0/initget"

.field public static LOCALE_FILE_URL:Ljava/lang/String; = ""

.field public static LOG_COUNT_URL:Ljava/lang/String; = "/elva/api/v3.0/point"

.field public static LOG_DAU_URL:Ljava/lang/String; = "/elva/api/v3.0/initset"

.field public static LOG_NETWORK_RESULT_SENT:Ljava/lang/String; = "/elva/api/v3.0/sdk/chatnetwork"

.field public static MQTT_FAQ_IP:Ljava/lang/String; = "wss142.aihelp.net"

.field public static MQTT_FAQ_PORT:Ljava/lang/String; = "1883"

.field public static MQTT_IP:Ljava/lang/String; = "wss142.aihelp.net"

.field public static MQTT_PORT:Ljava/lang/String; = "1883"

.field public static MQTT_TOPIC:Ljava/lang/String; = "topic"

.field public static M_FAQ_URL:Ljava/lang/String; = "/sdk_faq/src/index.html"

.field public static OP_URL:Ljava/lang/String; = "/elva/api/v3.0/faqs1"

.field public static REQUEST_SCHEME:Ljava/lang/String; = "https://"

.field public static SYNC_VIP_INFO:Ljava/lang/String; = "/elva/api/v3.0/vipinfo"

.field public static final TOPIC_BOT_CHAT:Ljava/lang/String; = "alice.message.chat"

.field public static final TOPIC_BOT_FAQ:Ljava/lang/String; = "alice.faq.like"

.field public static final TOPIC_CONVERSATION_EVALUATE:Ljava/lang/String; = "alice.chat.evaluate"

.field public static final TOPIC_CONVERSATION_FINISHED:Ljava/lang/String; = "pushOverflagChat"

.field public static final TOPIC_CONVERSATION_RECEIVE:Ljava/lang/String; = "pushChat"

.field public static final TOPIC_CONVERSATION_SEND:Ljava/lang/String; = "chat.private"

.field public static final TOPIC_FAQ_NOTIFICATION:Ljava/lang/String; = "pushSdkMessage"

.field public static final TOPIC_LOGIN:Ljava/lang/String; = "login"

.field public static final TOPIC_LOGOUT:Ljava/lang/String; = "logout"

.field public static final TOPIC_SUBMIT_FORM:Ljava/lang/String; = "pushFormChat"

.field public static final TOPIC_SUBMIT_ORDER:Ljava/lang/String; = "pushOrderChat"

.field public static final TOPIC_TICKET_REJECTED:Ljava/lang/String; = "ticketRejected"

.field public static final TOPIC_WITHDRAW:Ljava/lang/String; = "pushWithdraw"

.field public static TRACK_COLLECT:Ljava/lang/String; = "/elva/api/v3.0/sdktrack/collect"

.field public static TRACK_EXCEPTION:Ljava/lang/String; = "/elva/api/sdktrack/exceptiontrack"

.field public static TRANSLATE_MESSAGE:Ljava/lang/String; = "/elva/api/translate/search"

.field public static UPLOAD_FILE_URL:Ljava/lang/String; = "/elva/api/uploadapi/file"

.field public static UPLOAD_URL:Ljava/lang/String; = "/FileService/api/upload"

.field public static UPLOAD_VIDEO_URL:Ljava/lang/String; = "/elva/api/uploadapi/video"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
