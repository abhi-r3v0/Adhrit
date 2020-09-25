.class public Lcom/freshchat/consumer/sdk/g/j;
.super Lcom/freshchat/consumer/sdk/g/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/d<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;"
    }
.end annotation


# instance fields
.field private eY:Lcom/freshchat/consumer/sdk/c/i;

.field private eZ:Z

.field private fa:Lcom/freshchat/consumer/sdk/beans/Category;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/j;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/j;->eZ:Z

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/j;->v:Ljava/lang/String;

    :cond_0
    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/g/j;->eZ:Z

    new-instance p2, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/j;->eY:Lcom/freshchat/consumer/sdk/c/i;

    return-void
.end method


# virtual methods
.method protected dj()Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/j;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/j;->eY:Lcom/freshchat/consumer/sdk/c/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;->ab(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/g/j;->eZ:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/j;->eY:Lcom/freshchat/consumer/sdk/c/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Article;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/c/i;->Y(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/g/j;->fa:Lcom/freshchat/consumer/sdk/beans/Category;

    :cond_1
    return-object v0
.end method

.method public dk()Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/j;->fa:Lcom/freshchat/consumer/sdk/beans/Category;

    return-object v0
.end method

.method protected synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/j;->dj()Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    return-object v0
.end method

.method public onReset()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/d;->onReset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/j;->fa:Lcom/freshchat/consumer/sdk/beans/Category;

    return-void
.end method
