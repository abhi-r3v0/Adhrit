.class final Lo/AbstractAppSpiCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbstractAppSpiCall$onPostMessage;
    }
.end annotation


# instance fields
.field final extraCallback:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "operator"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lo/AbstractAppSpiCall;->extraCallback:Lorg/json/JSONObject;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required keys: operator children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    .line 127
    sget-object v0, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 143
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 141
    :pswitch_0
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_1
    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 133
    :pswitch_3
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_4
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 139
    :pswitch_5
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ICustomTabsCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 166
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "datetime"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "children"

    .line 167
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 171
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 3573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 3577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 172
    :goto_0
    sget-object p1, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    return-object v1

    .line 177
    :cond_1
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 174
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 182
    :cond_3
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 168
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for cast operator: datetime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ICustomTabsCallback$Stub(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 203
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "children"

    .line 204
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 207
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 5573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 5577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 208
    :goto_0
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/AbstractAppSpiCall$onPostMessage;->extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v0, :cond_1

    .line 209
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for cast operator: string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ICustomTabsCallback$Stub$Proxy(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 436
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defined"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "not defined"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, "children"

    .line 438
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 442
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "property"

    .line 20573
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20574
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 20577
    :cond_1
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 444
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v4, p1

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 439
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for (not) defined operator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ICustomTabsService(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Double;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "operator"

    .line 289
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "%"

    const-string v6, "/"

    const-string v7, "*"

    if-nez v3, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_0
    const-string v3, "children"

    .line 293
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    .line 297
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v8, 0x0

    .line 298
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "property"

    .line 14573
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 14574
    invoke-static {v10, v1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 14577
    :cond_1
    invoke-static {v10, v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v10

    :goto_0
    const/4 v12, 0x1

    .line 299
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 15573
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 15574
    invoke-static {v3, v1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 15577
    :cond_2
    invoke-static {v3, v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 301
    :goto_1
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    sget-object v11, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v13, 0x0

    if-ne v3, v11, :cond_12

    invoke-static {v1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    sget-object v11, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne v3, v11, :cond_12

    .line 302
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 303
    invoke-static {v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    .line 304
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v3, 0x25

    const/4 v1, 0x3

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x2

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v8, -0x1

    :goto_3
    if-eqz v8, :cond_11

    if-eq v8, v12, :cond_10

    const-wide/16 v2, 0x0

    if-eq v8, v9, :cond_e

    if-eq v8, v1, :cond_8

    goto :goto_4

    :cond_8
    cmpl-double v0, v14, v2

    if-nez v0, :cond_9

    return-object v13

    :cond_9
    cmpl-double v1, v10, v2

    if-nez v1, :cond_a

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_a
    cmpg-double v4, v10, v2

    if-gez v4, :cond_b

    if-gtz v0, :cond_c

    :cond_b
    if-lez v1, :cond_d

    cmpg-double v0, v14, v2

    if-gez v0, :cond_d

    :cond_c
    div-double v0, v10, v14

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double v0, v0, v14

    sub-double/2addr v0, v10

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_d
    rem-double/2addr v10, v14

    .line 324
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_e
    cmpl-double v0, v14, v2

    if-eqz v0, :cond_f

    div-double/2addr v10, v14

    .line 311
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_f
    return-object v13

    :cond_10
    mul-double v10, v10, v14

    .line 308
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_11
    sub-double/2addr v10, v14

    .line 306
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_4
    return-object v13

    .line 294
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid node for arithmetic operator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static asBinder(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 239
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "not in"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    const-string v1, "children"

    .line 241
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 244
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "property"

    .line 10573
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10574
    invoke-static {v4, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 10577
    :cond_1
    invoke-static {v4, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    const/4 v6, 0x1

    .line 246
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 11573
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11574
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 11577
    :cond_2
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    .line 248
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    sget-object v5, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x5

    if-eq v5, v7, :cond_5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3

    goto :goto_3

    .line 252
    :cond_3
    check-cast p1, Lorg/json/JSONArray;

    const/4 v5, 0x0

    .line 253
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 254
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 261
    :cond_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 265
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 242
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for operator: (not) in"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static asInterface(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 228
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "children"

    .line 229
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 233
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "property"

    .line 8573
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8574
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 8577
    :cond_0
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    :goto_0
    invoke-static {v1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 235
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 9573
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 9577
    :cond_1
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 235
    :goto_1
    invoke-static {p0}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 234
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 230
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for operator: or"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 157
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "children"

    .line 158
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 2573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 162
    :goto_0
    invoke-static {p0}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for cast operator: boolean"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInterfaceDescriptor(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 448
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "children"

    .line 449
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 453
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 21573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 21577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 454
    :goto_0
    sget-object p1, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 456
    :cond_1
    invoke-static {p0}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 458
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 450
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for operator: not"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newSession(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "operator"

    .line 389
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "<="

    const-string v6, "<"

    const-string v7, ">="

    if-nez v3, :cond_0

    .line 390
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_0
    const-string v3, "children"

    .line 393
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_20

    .line 397
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v8, 0x0

    .line 398
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "property"

    .line 18573
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 18574
    invoke-static {v10, v1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 18577
    :cond_1
    invoke-static {v10, v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v10

    :goto_0
    const/4 v12, 0x1

    .line 399
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 19573
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 19574
    invoke-static {v3, v1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 19577
    :cond_2
    invoke-static {v3, v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 400
    :goto_1
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    invoke-static {v1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v11

    if-ne v3, v11, :cond_1f

    .line 401
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    sget-object v11, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    const/16 v13, 0x7bf

    const/16 v14, 0x781

    const/16 v15, 0x3e

    const/16 v8, 0x3c

    const/16 v16, -0x1

    const/4 v9, 0x3

    if-eq v3, v11, :cond_11

    invoke-static {v10}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    sget-object v11, Lo/AbstractAppSpiCall$onPostMessage;->extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne v3, v11, :cond_3

    goto/16 :goto_8

    .line 414
    :cond_3
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v3

    sget-object v11, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne v3, v11, :cond_1f

    .line 415
    check-cast v10, Ljava/lang/String;

    .line 416
    check-cast v1, Ljava/lang/String;

    .line 418
    invoke-virtual {v10, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 419
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, v8, :cond_7

    if-eq v2, v15, :cond_6

    if-eq v2, v14, :cond_5

    if-eq v2, v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, -0x1

    :goto_3
    if-eqz v0, :cond_f

    if-eq v0, v12, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    if-eq v0, v9, :cond_9

    goto/16 :goto_f

    :cond_9
    if-gtz v1, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    .line 427
    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    if-gez v1, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 425
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d
    if-ltz v1, :cond_e

    const/4 v8, 0x1

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    .line 423
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_f
    if-lez v1, :cond_10

    const/4 v8, 0x1

    goto :goto_7

    :cond_10
    const/4 v8, 0x0

    .line 421
    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 402
    :cond_11
    :goto_8
    invoke-static {v10}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    .line 403
    invoke-static {v1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 404
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, v8, :cond_15

    if-eq v2, v15, :cond_14

    if-eq v2, v14, :cond_13

    if-eq v2, v13, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    goto :goto_a

    :cond_14
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v0, -0x1

    :goto_a
    if-eqz v0, :cond_1d

    if-eq v0, v12, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    if-eq v0, v9, :cond_17

    goto :goto_f

    .line 412
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_18

    const/4 v8, 0x1

    goto :goto_b

    :cond_18
    const/4 v8, 0x0

    :goto_b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 410
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1a

    const/4 v8, 0x1

    goto :goto_c

    :cond_1a
    const/4 v8, 0x0

    :goto_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 408
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpl-double v4, v2, v0

    if-ltz v4, :cond_1c

    const/4 v8, 0x1

    goto :goto_d

    :cond_1c
    const/4 v8, 0x0

    :goto_d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 406
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1e

    const/4 v8, 0x1

    goto :goto_e

    :cond_1e
    const/4 v8, 0x0

    :goto_e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_f
    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid node for comparison operator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 6

    .line 96
    sget-object v0, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    return-object v2

    .line 106
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 107
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 109
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 110
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 112
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 113
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 117
    :cond_3
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 119
    :catch_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 103
    :cond_4
    check-cast p0, Ljava/lang/Boolean;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 100
    :cond_6
    check-cast p0, Ljava/util/Date;

    .line 101
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_7

    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :cond_7
    return-object v2
.end method

.method static onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 525
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "not defined"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "datetime"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "defined"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "list"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "not"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "and"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "or"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "in"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_9
    const-string v3, ">="

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "=="

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "<="

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "!="

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_e
    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_f
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_10
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_11
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_12
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_13
    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_14
    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x13

    goto :goto_0

    :sswitch_15
    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x12

    goto :goto_0

    :sswitch_16
    const-string v3, "not in"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 568
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown operator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 566
    :pswitch_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->getInterfaceDescriptor(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 564
    :pswitch_1
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback$Stub$Proxy(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 561
    :pswitch_2
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback$Stub(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 559
    :pswitch_3
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onPostMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 557
    :pswitch_4
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onNavigationEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 555
    :pswitch_5
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 553
    :pswitch_6
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->extraCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 551
    :pswitch_7
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->newSession(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 546
    :pswitch_8
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->warmup(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 543
    :pswitch_9
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->ICustomTabsService(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 538
    :pswitch_a
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onTransact(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 536
    :pswitch_b
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->asBinder(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 533
    :pswitch_c
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->asInterface(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 531
    :pswitch_d
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onRelationshipValidationResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 526
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing required keys: operator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x3df97a6e -> :sswitch_16
        -0x3da724b7 -> :sswitch_15
        -0x352a9fef -> :sswitch_14
        0x25 -> :sswitch_13
        0x2a -> :sswitch_12
        0x2b -> :sswitch_11
        0x2d -> :sswitch_10
        0x2f -> :sswitch_f
        0x3c -> :sswitch_e
        0x3e -> :sswitch_d
        0x43c -> :sswitch_c
        0x781 -> :sswitch_b
        0x7a0 -> :sswitch_a
        0x7bf -> :sswitch_9
        0xd25 -> :sswitch_8
        0xde3 -> :sswitch_7
        0x179d7 -> :sswitch_6
        0x1aad3 -> :sswitch_5
        0x32b09e -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x5c175e09 -> :sswitch_2
        0x6ae9bb7b -> :sswitch_1
        0x6d5c21bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 332
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v0

    invoke-static {p1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 333
    sget-object v0, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 339
    :pswitch_1
    invoke-static {p0}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 343
    :pswitch_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static onNavigationEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 189
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "children"

    .line 190
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 194
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 4573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 4577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    :goto_0
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v0, :cond_1

    .line 196
    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for cast operator: list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Double;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 148
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "children"

    .line 149
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "property"

    .line 1573
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 1577
    :cond_0
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 153
    :goto_0
    invoke-static {p0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for cast operator: number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;
    .locals 1

    if-eqz p0, :cond_8

    .line 69
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 75
    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 76
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 78
    :cond_2
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 79
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->asBinder:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 81
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 84
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 85
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->onNavigationEvent:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 87
    :cond_5
    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_6

    .line 88
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 91
    :cond_6
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->onRelationshipValidationResult:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 82
    :cond_7
    :goto_0
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0

    .line 70
    :cond_8
    :goto_1
    sget-object p0, Lo/AbstractAppSpiCall$onPostMessage;->onPostMessage:Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0
.end method

.method private static onRelationshipValidationResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 217
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "children"

    .line 218
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 222
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "property"

    .line 6573
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6574
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 6577
    :cond_0
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    :goto_0
    invoke-static {v1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 7573
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 7577
    :cond_1
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 224
    :goto_1
    invoke-static {p0}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 223
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 219
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for operator: and"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onTransact(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 269
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "children"

    .line 270
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 274
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "property"

    .line 12573
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12574
    invoke-static {v0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 12577
    :cond_0
    invoke-static {v0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    .line 276
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 13573
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13574
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 13577
    :cond_1
    invoke-static {p0, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    .line 278
    :goto_1
    invoke-static {v0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v1, :cond_2

    .line 279
    invoke-static {v0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 281
    :cond_2
    invoke-static {v0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v1, :cond_3

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v1, :cond_3

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for operator: +"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "property"

    .line 500
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 504
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x5c6729a

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0xae020af

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "literal"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_c

    if-ne v2, v7, :cond_b

    .line 508
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    if-ne p1, v0, :cond_3

    .line 509
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "now"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 510
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    .line 512
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 513
    sget-object p1, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {p0}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    return-object p0

    .line 515
    :cond_4
    check-cast p0, Lorg/json/JSONObject;

    const-string p1, "window"

    .line 22464
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 22465
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "unit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 22471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 22472
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 22477
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 22479
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "month"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_1
    const-string v4, "week"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_2
    const-string v4, "hour"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :sswitch_3
    const-string v4, "day"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_9

    const/4 v3, 0x6

    if-eq v5, v7, :cond_8

    if-eq v5, v9, :cond_7

    if-ne v5, v8, :cond_6

    .line 22490
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1e

    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 22493
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid unit specification for window "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22487
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 22484
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_9
    const/16 p1, 0xa

    .line 22481
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 22496
    :goto_4
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 22466
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid window specification for value key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid operand: Invalid property type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_c
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 501
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing required keys: property/value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1839c -> :sswitch_3
        0x30f5e4 -> :sswitch_2
        0x379ff4 -> :sswitch_1
        0x6342280 -> :sswitch_0
    .end sparse-switch
.end method

.method private static warmup(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "operator"

    .line 351
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "!="

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    const-string v1, "children"

    .line 353
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 357
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 358
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "property"

    .line 16573
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16574
    invoke-static {v4, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 16577
    :cond_1
    invoke-static {v4, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    const/4 v6, 0x1

    .line 359
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 17573
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17574
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->updateVisuals(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 17577
    :cond_2
    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    .line 360
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 361
    invoke-static {v4}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v5

    invoke-static {p1}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v7

    if-ne v5, v7, :cond_5

    .line 362
    sget-object v5, Lo/AbstractAppSpiCall$2;->extraCallback:[I

    invoke-static {v4}, Lo/AbstractAppSpiCall;->onPostMessage(Ljava/lang/Object;)Lo/AbstractAppSpiCall$onPostMessage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x7

    if-eq v5, v7, :cond_3

    .line 381
    invoke-static {v4, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 364
    :cond_3
    check-cast v4, Lorg/json/JSONObject;

    .line 365
    check-cast p1, Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-ne v5, v7, :cond_5

    .line 368
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 370
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 371
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 372
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 373
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 374
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, p1

    .line 385
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_7
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 354
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid node for equality operator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
