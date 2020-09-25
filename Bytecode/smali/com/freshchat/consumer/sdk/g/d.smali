.class public abstract Lcom/freshchat/consumer/sdk/g/d;
.super Lo/addOnActiveChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/addOnActiveChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private eR:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lo/addOnActiveChangeListener;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/d;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

    return-void
.end method

.method public onReset()V
    .locals 1

    invoke-super {p0}, Lo/addOnActiveChangeListener;->onReset()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/d;->onStopLoading()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

    return-void
.end method

.method public onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lo/getCurrentControllerInfo;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lo/getCurrentControllerInfo;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/d;->eR:Ljava/lang/Object;

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
