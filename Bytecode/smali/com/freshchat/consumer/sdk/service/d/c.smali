.class public Lcom/freshchat/consumer/sdk/service/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fE()J

    move-result-wide v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {v3}, Lcom/freshchat/consumer/sdk/beans/Message;-><init>()V

    invoke-virtual {v3, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Lcom/freshchat/consumer/sdk/beans/Message;->setConversationId(J)V

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    invoke-virtual {v3, p4, p5}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string/jumbo p1, "text/html"

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    invoke-virtual {v3, v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setCreatedMillis(J)V

    return-object v3
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p0
.end method

.method public static i(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_welcome_message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
