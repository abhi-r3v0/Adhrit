.class public Lcom/freshchat/consumer/sdk/j/az;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/az$a;,
        Lcom/freshchat/consumer/sdk/j/az$c;,
        Lcom/freshchat/consumer/sdk/j/az$b;
    }
.end annotation


# direct methods
.method private static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/freshchat/consumer/sdk/j/az$b;Lcom/freshchat/consumer/sdk/j/az$a;)V
    .locals 0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/az;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/freshchat/consumer/sdk/j/az$c;->kU:Lcom/freshchat/consumer/sdk/j/az$c;

    invoke-interface {p3, p0}, Lcom/freshchat/consumer/sdk/j/az$a;->a(Lcom/freshchat/consumer/sdk/j/az$c;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/j/az$b;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/az;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/az;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/as;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p3}, Lcom/freshchat/consumer/sdk/j/az$a;->fQ()V

    return-void

    :cond_2
    sget-object p0, Lcom/freshchat/consumer/sdk/j/az$c;->kV:Lcom/freshchat/consumer/sdk/j/az$c;

    invoke-interface {p3, p0}, Lcom/freshchat/consumer/sdk/j/az$a;->a(Lcom/freshchat/consumer/sdk/j/az$c;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    sget-object p0, Lcom/freshchat/consumer/sdk/j/az$c;->kT:Lcom/freshchat/consumer/sdk/j/az$c;

    invoke-interface {p3, p0}, Lcom/freshchat/consumer/sdk/j/az$a;->a(Lcom/freshchat/consumer/sdk/j/az$c;)V

    return-void

    :cond_4
    const-string p0, "FRESHCHAT_WARNING"

    const-string p1, "Invalid parameters. Can not validate Uri."

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/as;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FRESHCHAT"

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method
