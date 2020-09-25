.class public abstract Lcom/freshchat/consumer/sdk/g/c;
.super Lo/addOnActiveChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/addOnActiveChangeListener<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private eQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/addOnActiveChangeListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract dd()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public de()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/c;->dd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;->q(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/c;->de()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;->r(Ljava/util/List;)V

    return-void
.end method

.method public onReset()V
    .locals 1

    invoke-super {p0}, Lo/addOnActiveChangeListener;->onReset()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/c;->onStopLoading()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    return-void
.end method

.method public onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/g/c;->q(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->forceLoad()V

    :cond_2
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->cancelLoad()Z

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/c;->eQ:Ljava/util/List;

    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lo/addOnActiveChangeListener;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
