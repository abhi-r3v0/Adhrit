.class public final Lo/onAuthRevoked;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onAuthRevoked$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private onPostMessage:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4018
    invoke-virtual {p0}, Lo/onAuthRevoked;->onMessageChannelReady()V

    .line 4019
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/onAuthRevoked;->onPostMessage:Ljava/util/Random;

    return-void
.end method

.method public static extraCallback(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Ljava/util/List<",
            "Lo/onAuthRevoked$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3294
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3299
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3300
    new-instance v3, Lo/onAuthRevoked$ICustomTabsCallback;

    invoke-static {v1, v2}, Lo/unlisten;->onNavigationEvent(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lo/onAuthRevoked$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3295
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "There are "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3296
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields in a LoadBalancingConfig object. Exactly one is expected. Config="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Ljava/util/List;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/Set<",
            "Lo/emptyMap$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 138
    const-class v0, Lo/emptyMap$onPostMessage;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 141
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 142
    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-double v4, v3

    .line 144
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-double v10, v4, v6

    if-nez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 145
    invoke-static {v3}, Lo/emptyMap;->onMessageChannelReady(I)Lo/emptyMap;

    move-result-object v3

    .line 1492
    iget-object v3, v3, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 2217
    iget v4, v3, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 146
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    .line 3183
    :cond_2
    new-instance p0, Lcom/google/common/base/VerifyException;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v9

    const-string v1, "Status code %s is not valid"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1183
    :cond_3
    new-instance p0, Lcom/google/common/base/VerifyException;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v9

    const-string v1, "Status code %s is not integral"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_4
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 149
    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo/emptyMap$onPostMessage;->valueOf(Ljava/lang/String;)Lo/emptyMap$onPostMessage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Lcom/google/common/base/VerifyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 154
    :cond_5
    new-instance p0, Lcom/google/common/base/VerifyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can not convert status code "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to Status.Code, because its type is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 4023
    iput-wide v0, p0, Lo/onAuthRevoked;->ICustomTabsCallback:J

    .line 4024
    iput-wide v0, p0, Lo/onAuthRevoked;->onNavigationEvent:J

    .line 4025
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/onAuthRevoked;->extraCallback:Ljava/lang/String;

    .line 4026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lo/onAuthRevoked;->onMessageChannelReady:J

    return-void
.end method

.method public onPostMessage(Z)Lorg/json/JSONObject;
    .locals 5

    .line 4038
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "$mp_event_id"

    .line 4040
    iget-object v2, p0, Lo/onAuthRevoked;->onPostMessage:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$mp_session_id"

    .line 4041
    iget-object v2, p0, Lo/onAuthRevoked;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$mp_session_seq_id"

    if-eqz p1, :cond_0

    .line 4042
    iget-wide v2, p0, Lo/onAuthRevoked;->ICustomTabsCallback:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lo/onAuthRevoked;->onNavigationEvent:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "$mp_session_start_sec"

    .line 4043
    iget-wide v2, p0, Lo/onAuthRevoked;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_1

    .line 4045
    iget-wide v3, p0, Lo/onAuthRevoked;->ICustomTabsCallback:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lo/onAuthRevoked;->ICustomTabsCallback:J

    goto :goto_1

    .line 4047
    :cond_1
    iget-wide v3, p0, Lo/onAuthRevoked;->onNavigationEvent:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lo/onAuthRevoked;->onNavigationEvent:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4050
    sget-object v1, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "Cannot create session metadata JSON object"

    invoke-static {v1, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
