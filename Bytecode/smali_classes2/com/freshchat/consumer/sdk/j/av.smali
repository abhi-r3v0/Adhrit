.class public Lcom/freshchat/consumer/sdk/j/av;
.super Ljava/lang/Object;


# direct methods
.method private static varargs a(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FRESHCHAT_WARNING"

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public static aK(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x180

    invoke-static {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/av;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static aL(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\\+?[0-9]+"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/av;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static aM(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x10

    invoke-static {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/av;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static aN(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x100

    invoke-static {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/av;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static aO(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "[\\w ]+"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/av;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
