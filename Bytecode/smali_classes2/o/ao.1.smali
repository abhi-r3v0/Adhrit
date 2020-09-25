.class final Lo/ao;
.super Lo/gg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gg<",
        "Lo/fU$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/gg;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bh;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fU$extraCallback;

    .line 16
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)Lo/av;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/av<",
            "Lo/fU$extraCallback;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/fU$onMessageChannelReady;

    iget-object p1, p1, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    return-object p1
.end method

.method final onNavigationEvent(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fU$extraCallback;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    invoke-virtual {p1}, Lo/av;->onPostMessage()V

    return-void
.end method

.method final onNavigationEvent(Lo/aD;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lo/fU$onMessageChannelReady;

    return p1
.end method

.method final onPostMessage(Ljava/lang/Object;)Lo/av;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/av<",
            "Lo/fU$extraCallback;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lo/fU$onMessageChannelReady;

    .line 5
    iget-object v0, p1, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    invoke-virtual {v0}, Lo/av;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    invoke-virtual {v0}, Lo/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/av;

    iput-object v0, p1, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    .line 7
    :cond_0
    iget-object p1, p1, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    return-object p1
.end method
