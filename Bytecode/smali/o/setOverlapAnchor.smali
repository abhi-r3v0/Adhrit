.class public final Lo/setOverlapAnchor;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016J\u000c\u0010\u000c\u001a\u00020\r*\u00020\u0006H\u0002J\u000c\u0010\u000e\u001a\u00020\u000f*\u00020\u0006H\u0002J\u000c\u0010\u0010\u001a\u00020\u0002*\u00020\u0006H\u0002J\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0006H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cred/pay/repository/visa/JsonObjectAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lorg/json/JSONObject;",
        "()V",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "nextNumber",
        "",
        "readArray",
        "Lorg/json/JSONArray;",
        "readObject",
        "readValue",
        "",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 3

    .line 23
    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v1, Lo/isConfirmKey;->onPostMessage:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Lo/SessionFiles;->warmup()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 29
    :pswitch_1
    invoke-virtual {p1}, Lo/SessionFiles;->onRelationshipValidationResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_2
    invoke-static {p1}, Lo/setOverlapAnchor;->extraCallback(Lo/SessionFiles;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_3
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_4
    invoke-direct {p0, p1}, Lo/setOverlapAnchor;->onPostMessage(Lo/SessionFiles;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 1051
    :pswitch_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1053
    invoke-virtual {p1}, Lo/SessionFiles;->onMessageChannelReady()V

    .line 1054
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/SessionFiles$onPostMessage;->onMessageChannelReady:Lo/SessionFiles$onPostMessage;

    if-eq v1, v2, :cond_0

    .line 1055
    invoke-virtual {p1}, Lo/SessionFiles;->postMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onNavigationEvent()V

    return-object v0

    .line 32
    :cond_1
    :goto_1
    new-instance p1, Lcom/squareup/moshi/JsonEncodingException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected token: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraCallback(Lo/SessionFiles;)Ljava/lang/Number;
    .locals 2

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lo/SessionFiles;->getInterfaceDescriptor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 43
    :catchall_0
    :try_start_1
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 47
    :catchall_1
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsService()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method private final onPostMessage(Lo/SessionFiles;)Lorg/json/JSONObject;
    .locals 3

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    .line 66
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/SessionFiles$onPostMessage;->extraCallback:Lo/SessionFiles$onPostMessage;

    if-eq v1, v2, :cond_0

    .line 67
    invoke-virtual {p1}, Lo/SessionFiles;->asInterface()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lo/setOverlapAnchor;->ICustomTabsCallback(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 0

    const-string/jumbo p2, "writer"

    .line 9
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 2

    const-string v0, "reader"

    .line 9
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    if-eq v0, v1, :cond_0

    .line 1013
    invoke-direct {p0, p1}, Lo/setOverlapAnchor;->onPostMessage(Lo/SessionFiles;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 1015
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->warmup()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
