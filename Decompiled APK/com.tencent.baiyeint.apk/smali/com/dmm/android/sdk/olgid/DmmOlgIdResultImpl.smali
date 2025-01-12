.class Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;
.super Ljava/lang/Object;
.source "DmmOlgIdResultImpl.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;


# instance fields
.field private mCallbackBody:Ljava/lang/Object;

.field private mCallbackStatusCode:I

.field private mCause:Ljava/lang/Throwable;

.field private mErrorCode:I

.field private mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field private mOlgId:Ljava/lang/String;

.field private mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;


# direct methods
.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;IILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    iput p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackBody:Ljava/lang/Object;

    sget-object p1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingValidity:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;)V

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    iput p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackBody:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCallbackResponseBody()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallbackStatusCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    return v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorKind()Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    return-object v0
.end method

.method public getOlgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "progress"

    iget-object v4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mProgress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v4}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl$1;->$SwitchMap$com$dmm$android$sdk$olgid$DmmOlgIdResult$ErrorKind:[I

    iget-object v4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorKind:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "http_status"

    packed-switch v3, :pswitch_data_0

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :pswitch_1
    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCause:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v5, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCause:Ljava/lang/Throwable;

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->flush()V

    const-string v4, "cause"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    const-string v3, "error_code"

    iget v4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mErrorCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_3
    const-string v3, "olgid"

    iget-object v5, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mOlgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :pswitch_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v5, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackStatusCode:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "body"

    iget-object v5, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;->mCallbackBody:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "callback"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "detail"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
