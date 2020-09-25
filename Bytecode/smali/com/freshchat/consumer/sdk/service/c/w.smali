.class public Lcom/freshchat/consumer/sdk/service/c/w;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/z;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private dy()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/i;->cJ()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Category;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Category;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Category;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Category;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->fetch(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dz()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/c;->cv()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->fetch(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/z;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/w;->b(Lcom/freshchat/consumer/sdk/service/e/z;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/z;->dR()Lcom/freshchat/consumer/sdk/service/e/z$a;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/z$a;->gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/w;->dy()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/z;->dR()Lcom/freshchat/consumer/sdk/service/e/z$a;

    move-result-object p1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/z$a;->gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/w;->dz()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/z;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/w;->a(Lcom/freshchat/consumer/sdk/service/e/z;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/freshchat/consumer/sdk/service/e/z;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
