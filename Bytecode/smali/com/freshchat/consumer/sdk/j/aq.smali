.class public Lcom/freshchat/consumer/sdk/j/aq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;II)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return p2
.end method

.method public static a(Landroid/content/Context;IIZ)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array v0, v0, [I

    aput p2, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    aput p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    move-object v3, p1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    move v1, p0

    goto :goto_2

    :catch_0
    nop

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/j/aq;->k(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw p0

    :goto_4
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    return v1
.end method

.method public static a(Landroid/content/Context;IZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IIZ)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eY()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    return-object p0
.end method

.method public static j(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method private static final k(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aq;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->dp:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{{resource_name}}"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FRESHCHAT"

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/aq$1;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/aq$1;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static l(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
