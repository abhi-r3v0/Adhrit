.class public Lcom/freshchat/consumer/sdk/service/d/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/freshchat/consumer/sdk/b/e;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/b/e;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Article;->getUpdatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Article;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bL()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bL()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FRESHCHAT_WARNING"

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private static c(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bt()Ljava/lang/String;

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

.method private static c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z
    .locals 17

    const-string v0, "lastModifiedAt"

    const-string v1, "contentLocale"

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->isValid()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_0
    const-string v5, "categories"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_5

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/freshchat/consumer/sdk/service/d/e;->c(Lorg/json/JSONObject;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Lcom/freshchat/consumer/sdk/beans/Category;->getCategory(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "articles"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v14, "tags"

    if-eqz v13, :cond_2

    :try_start_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v15, :cond_2

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/service/d/e;->c(Lorg/json/JSONObject;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 p1, v5

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/beans/Article;->getArticle(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/Article;->getId()Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v6

    sget-object v6, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->ARTICLE:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-static {v5, v4, v6}, Lcom/freshchat/consumer/sdk/service/d/f;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    move-object/from16 p1, v5

    move/from16 v16, v6

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p1

    move/from16 v6, v16

    goto :goto_1

    :cond_2
    move-object/from16 p1, v5

    move/from16 v16, v6

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v12}, Lcom/freshchat/consumer/sdk/beans/Category;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CATEGORY:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-static {v4, v3, v5}, Lcom/freshchat/consumer/sdk/service/d/f;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_3
    move-object/from16 p1, v5

    move/from16 v16, v6

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p1

    move/from16 v6, v16

    goto :goto_0

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/service/d/e;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/freshchat/consumer/sdk/service/d/e;->a(Lcom/freshchat/consumer/sdk/b/e;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bO()V

    new-instance v4, Lcom/freshchat/consumer/sdk/c/i;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v8, v9}, Lcom/freshchat/consumer/sdk/c/i;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/c/i;->cM()V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bs()V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/freshchat/consumer/sdk/b/e;->z(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Lcom/freshchat/consumer/sdk/b/e;->y(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/Category;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Category;->getUpdatedAt()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_5

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/freshchat/consumer/sdk/b/e;->A(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_7
    const-string v1, "FRESHCHAT"

    const-string v2, "Exception occured"

    invoke-static {v1, v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    :goto_8
    return v3
.end method

.method private static c(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "platforms"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method private static w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/service/d/e;->c(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/e/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v3

    const/16 v4, 0x19a

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/e/f;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/b/a/a;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/b/a/a;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/e;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z

    move-result p0

    goto :goto_2

    :cond_1
    const/16 p0, 0x130

    if-ne v2, p0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bs()V
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
