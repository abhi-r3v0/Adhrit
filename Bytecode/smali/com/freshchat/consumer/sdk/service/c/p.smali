.class public Lcom/freshchat/consumer/sdk/service/c/p;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/q;",
        "Lcom/freshchat/consumer/sdk/service/e/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CHANNEL_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "MESSAGE_ALIAS"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.MessageStatusChanged"

    invoke-static {p1, p2, v0}, Lcom/freshchat/consumer/sdk/b/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Lcom/freshchat/consumer/sdk/service/e/q;)Lcom/freshchat/consumer/sdk/service/e/r$a;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->c(Lcom/freshchat/consumer/sdk/service/e/q;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/q;->dL()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v2

    const/4 v3, 0x1

    const-string v8, "FRESHCHAT"

    if-nez v2, :cond_1

    const-string v1, "Cannot proceed because the user was not created. Backlog created for message"

    invoke-static {v8, v1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->g(Lcom/freshchat/consumer/sdk/beans/Message;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->e(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :cond_4
    new-instance v2, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v2, v0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->h(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/e/a;->d(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Message created "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/freshchat/consumer/sdk/beans/Message;->setUploadState(I)V

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setCreatedMillis(J)V

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/c/g;->b(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getChannelId()J

    move-result-wide v1

    const/4 v5, 0x7

    sget-object v6, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JJILcom/freshchat/consumer/sdk/service/e/d$a;Z)V

    :cond_6
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/p;->fO()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saved conversation to DB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gE:Lcom/freshchat/consumer/sdk/service/e/r$a;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getChannelId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/c/p;->a(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    const-string p1, "Failed to send message !"

    invoke-static {v8, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p1
.end method

.method private static c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/aj;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/ad;->aE(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v2, :cond_1

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return v1

    :cond_1
    :try_start_1
    new-array v6, v1, [Ljava/io/Closeable;

    aput-object v2, v6, v0

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/c/g;->X(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->isUploaded()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    move v0, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    :goto_2
    return v0

    :goto_3
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method private e(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    :cond_2
    return v1
.end method

.method private fO()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method private g(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting backlog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private h(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/c/f;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/aj;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v5

    sget-object v6, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v5

    sget-object v6, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v6

    if-ne v5, v6, :cond_0

    new-instance v5, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4, v3}, Lcom/freshchat/consumer/sdk/e/a;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;I)Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->getImage()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    move-result-object v5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v3, v7}, Lcom/freshchat/consumer/sdk/c/f;->b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Z

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->getImage()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    move-result-object v4

    :cond_0
    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/q;)Lcom/freshchat/consumer/sdk/service/e/r;
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->b(Lcom/freshchat/consumer/sdk/service/e/q;)Lcom/freshchat/consumer/sdk/service/e/r$a;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gE:Lcom/freshchat/consumer/sdk/service/e/r$a;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/e/r;-><init>(ZLcom/freshchat/consumer/sdk/service/e/r$a;)V

    return-object v0
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/q;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/p;->a(Lcom/freshchat/consumer/sdk/service/e/q;)Lcom/freshchat/consumer/sdk/service/e/r;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/freshchat/consumer/sdk/service/e/q;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
