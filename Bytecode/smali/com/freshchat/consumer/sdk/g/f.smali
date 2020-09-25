.class public Lcom/freshchat/consumer/sdk/g/f;
.super Lcom/freshchat/consumer/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Lcom/freshchat/consumer/sdk/beans/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private eL:Lcom/freshchat/consumer/sdk/c/i;

.field private eS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/f;->context:Landroid/content/Context;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/f;->eL:Lcom/freshchat/consumer/sdk/c/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/f;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/f;->eS:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dd()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/f;->eS:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/f;->eL:Lcom/freshchat/consumer/sdk/c/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/f;->eS:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/f;->eL:Lcom/freshchat/consumer/sdk/c/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/i;->cJ()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onForceLoad()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/c;->onForceLoad()V

    return-void
.end method

.method public onReset()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/c;->onReset()V

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/c;->onStartLoading()V

    return-void
.end method
