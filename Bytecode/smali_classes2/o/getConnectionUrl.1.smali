.class public abstract Lo/getConnectionUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback()V
.end method

.method protected abstract onMessageChannelReady()V
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lo/getConnectionUrl;->ICustomTabsCallback()V

    return-void

    .line 43
    :cond_0
    iget-object p2, p0, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lo/getConnectionUrl;->onMessageChannelReady()V

    :cond_1
    return-void
.end method
