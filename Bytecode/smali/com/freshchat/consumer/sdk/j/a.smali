.class public Lcom/freshchat/consumer/sdk/j/a;
.super Ljava/lang/Object;


# direct methods
.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bB()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bC()Lcom/freshchat/consumer/sdk/beans/FCLocale;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/FCLocale;->getLocaleId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "{{app_domain}}/app/services/app/{{app_alias}}/channel/v2?t={{app_key}}&locale={{locale}}"

    invoke-static {v3, v0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "{{locale}}"

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "since"

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "lastLocaleId"

    invoke-static {p0, v0, v2}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChannelsURL ==> "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/conversation/read?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/session?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/heartbeat?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/activity?source=MOBILE&t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/feedback/message/v2?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/image?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string/jumbo v1, "{{app_domain}}/app/services/app/{{app_alias}}/channels/response_time?t={{app_key}}&locale={{locale}}"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "{{locale}}"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/conversation/v2?t={{app_key}}&messageAfter={{message_after}}&src={{src}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{message_after}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{{src}}"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/sdk/faq/v2/category/{{category_id}}/article/{{article_id}}?platform=android&t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{{category_id}}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{{article_id}}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bu()Lcom/freshchat/consumer/sdk/beans/FCLocale;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/FCLocale;->getLocaleId()J

    move-result-wide v0

    const-string p0, "localeId"

    invoke-static {p1, p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/message/marketing/{{marketing_id}}/status?t={{app_key}}&delivered={{delivered}}&clicked={{clicked}}&seen={{seen}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{marketing_id}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{{delivered}}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{{clicked}}"

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{{seen}}"

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "msdk.freshchat.com"

    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "https://"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "{{app_domain}}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{{app_alias}}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{{app_key}}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{{user_alias}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "API access token missing !"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/debuglogs/{{log_id}}?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{{log_id}}"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/conversation/{{conversationId}}/csat/{{csatId}}/response?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{conversationId}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{{csatId}}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bv(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/jwt/validate?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bw(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/renew-by-jwt?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/restore?externalId={{externalId}}&restoreId={{restoreId}}&t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{externalId}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{{restoreId}}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/notification?t={{app_key}}&notification_id={{device_token}}&notification_type=1"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{device_token}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string/jumbo v0, "{{app_domain}}/app/services/app/{{app_alias}}/user/{{prev_user_alias}}/uninstalled?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{{prev_user_alias}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string v0, "config-{{app_domain}}/app/services/app/config/mobile/{{app_alias}}?t={{app_key}}"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string/jumbo v1, "{{app_domain}}/app/services/app/{{app_alias}}/sdk/faq/v2/category?t={{app_key}}&platform=android"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bt()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "since"

    invoke-static {v1, v3, v2}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "locale"

    invoke-static {v1, v2, p0}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bu()Lcom/freshchat/consumer/sdk/beans/FCLocale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/FCLocale;->getLocaleId()J

    move-result-wide v0

    const-string v2, "lastLocaleId"

    invoke-static {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/j/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSolutionsURL ==> "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
