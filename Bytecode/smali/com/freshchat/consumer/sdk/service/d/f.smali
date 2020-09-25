.class public Lcom/freshchat/consumer/sdk/service/d/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;",
            ")",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Tag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/freshchat/consumer/sdk/beans/Tag;

    invoke-direct {v4, v3, p0, p2}, Lcom/freshchat/consumer/sdk/beans/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "FRESHCHAT"

    const-string v5, "Exception occured"

    invoke-static {v4, v5, v3}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_2
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    :cond_1
    return-object v1
.end method
