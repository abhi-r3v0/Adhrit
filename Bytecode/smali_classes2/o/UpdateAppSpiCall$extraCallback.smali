.class public final Lo/UpdateAppSpiCall$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpdateAppSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Number;

.field final asBinder:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/Object;

.field public final onMessageChannelReady:Ljava/lang/Object;

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/Number;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent:I

    .line 129
    iput-object p6, p0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    .line 131
    iput-object p4, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 133
    invoke-direct {p0, p2}, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "."

    const-string p4, "]Tweak \""

    const-string p6, ", "

    const-string v0, " out of its bounds ["

    const-string v1, "Attempt to define a tweak \""

    const-string v2, "MixpanelAPI.Tweaks"

    if-nez p1, :cond_0

    .line 134
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" with default value "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" new default value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-direct {p0, p5}, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object p1, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" with value "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" new value: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    iput-object p2, p0, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 145
    iput-object p5, p0, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;B)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 126
    invoke-direct/range {v0 .. v6}, Lo/UpdateAppSpiCall$extraCallback;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/Object;)Z
    .locals 5

    .line 150
    :try_start_0
    check-cast p1, Ljava/lang/Number;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static onPostMessage(Lorg/json/JSONObject;)Lo/UpdateAppSpiCall$extraCallback;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "name"

    .line 247
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "type"

    .line 248
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "default"

    const-string v4, "value"

    if-eqz v2, :cond_5

    :try_start_1
    const-string v1, "encoding"

    .line 253
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "maximum"

    const-string v6, "minimum"

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .line 256
    :try_start_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 257
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 258
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 261
    :goto_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 262
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    move-object v6, p0

    move-object v7, v2

    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_1
    const-string v2, "l"

    .line 264
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x3

    .line 267
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 268
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 271
    :goto_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 272
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    move-object v6, p0

    move-object v7, v2

    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x3

    goto :goto_2

    :cond_3
    move-object v6, v0

    move-object v7, v2

    move-object v5, v4

    move-object v4, v3

    move v3, v1

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    const-string v2, "boolean"

    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v4, p0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v2

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const-string v2, "string"

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    .line 283
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v2

    const/4 v3, 0x4

    .line 289
    :goto_2
    new-instance p0, Lo/UpdateAppSpiCall$extraCallback;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/UpdateAppSpiCall$extraCallback;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    :cond_7
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    :try_start_1
    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Number;
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    check-cast v1, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    .line 194
    :cond_0
    :goto_0
    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 196
    :try_start_1
    check-cast v1, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    :cond_1
    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Boolean;
    .locals 2

    .line 206
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 218
    :try_start_1
    check-cast v1, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    :cond_1
    return-object v0
.end method
