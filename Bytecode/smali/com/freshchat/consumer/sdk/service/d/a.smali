.class public Lcom/freshchat/consumer/sdk/service/d/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "channelAlias"

    const-string v3, "channelId"

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->isValid()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v5, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v5, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    const-string v6, "channels"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_3

    :try_start_1
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    new-instance v13, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-direct {v13}, Lcom/freshchat/consumer/sdk/beans/Channel;-><init>()V

    invoke-virtual {v13, v11, v12}, Lcom/freshchat/consumer/sdk/beans/Channel;->setId(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string v14, "position"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setPosition(I)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string/jumbo v14, "type"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setChannelType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string v14, "iconUrl"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setIconUrl(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string v14, "defaultChannel"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setDefault(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string/jumbo v14, "restricted"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setRestricted(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string v14, "hidden"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setHidden(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    const-string/jumbo v14, "updated"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setUpdatedAt(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v13

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setChannelAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_0
    const-string/jumbo v14, "welcomeMessage"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-static {v14}, Lcom/freshchat/consumer/sdk/service/d/c;->b(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "_welcome_message"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    const-string v11, "agent"

    invoke-virtual {v14, v11}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-virtual {v14, v11}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserType(I)V

    invoke-virtual {v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setLatestOrWelcomeMessage(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_1
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "tags"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-static {v0, v11, v12}, Lcom/freshchat/consumer/sdk/service/d/f;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v11, "FRESHCHAT"

    const-string v12, "Exception occurred"

    invoke-static {v11, v12, v0}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/freshchat/consumer/sdk/c/j;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/j;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/c/j;->a(Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)V

    invoke-virtual {v5, v8, v9}, Lcom/freshchat/consumer/sdk/c/c;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static/range {p0 .. p1}, Lcom/freshchat/consumer/sdk/service/d/a;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)V

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "FRESHCHAT_WARNING"

    const-string v2, "Error processing channels"

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    return v4
.end method

.method private static b(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/b/e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bB()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "If-Modified-Since"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)V
    .locals 6

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/d/a;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bH()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bD()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "contentLocale"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "FRESHCHAT_WARNING"

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Channels content locale exception - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "lastModifiedAt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->B(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/b/e;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/e/c;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/service/d/a;->b(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/e/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/e/f;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/freshchat/consumer/sdk/b/a/a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/b/a/a;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/service/d/a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bH()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/b/e;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private static w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    return-object p0
.end method
