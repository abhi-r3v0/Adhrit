.class final Lo/InterstitialActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/C;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/C<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Z

.field private final onMessageChannelReady:Lo/onShowCustomView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onShowCustomView<",
            "**>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/aD;

.field private final onPostMessage:Lo/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/onShowCustomView;Lo/gg;Lo/aD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onShowCustomView<",
            "**>;",
            "Lo/gg<",
            "*>;",
            "Lo/aD;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    .line 3
    invoke-virtual {p2, p3}, Lo/gg;->onNavigationEvent(Lo/aD;)Z

    move-result p1

    iput-boolean p1, p0, Lo/InterstitialActivity$1;->extraCallback:Z

    .line 4
    iput-object p2, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    .line 5
    iput-object p3, p0, Lo/InterstitialActivity$1;->onNavigationEvent:Lo/aD;

    return-void
.end method

.method static extraCallback(Lo/onShowCustomView;Lo/gg;Lo/aD;)Lo/InterstitialActivity$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onShowCustomView<",
            "**>;",
            "Lo/gg<",
            "*>;",
            "Lo/aD;",
            ")",
            "Lo/InterstitialActivity$1<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/InterstitialActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lo/InterstitialActivity$1;-><init>(Lo/onShowCustomView;Lo/gg;Lo/aD;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 18
    iget-boolean v1, p0, Lo/InterstitialActivity$1;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v1, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p1}, Lo/av;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    invoke-static {v0, p1, p2}, Lo/aM;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Lo/InterstitialActivity$1;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-static {v0, p1, p2}, Lo/aM;->extraCallback(Lo/gg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    invoke-virtual {v1, p2}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lo/InterstitialActivity$1;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v0, p2}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lo/av;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    .line 48
    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lo/onShowCustomView;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 51
    iget-boolean v1, p0, Lo/InterstitialActivity$1;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v1, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    invoke-virtual {p1}, Lo/av;->onRelationshipValidationResult()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/bh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/bh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lo/av;->extraCallback()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/at;

    .line 31
    invoke-interface {v2}, Lo/at;->onNavigationEvent()Lo/bj;

    move-result-object v3

    sget-object v4, Lo/bj;->asInterface:Lo/bj;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/at;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/at;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    .line 33
    instance-of v3, v1, Lo/ConversationDetailActivity$15;

    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v2}, Lo/at;->onMessageChannelReady()I

    move-result v2

    check-cast v1, Lo/ConversationDetailActivity$15;

    invoke-virtual {v1}, Lo/ConversationDetailActivity$15;->onPostMessage()Lo/fQ;

    move-result-object v1

    invoke-virtual {v1}, Lo/afterTextChanged;->extraCallback()Lo/ChannelListActivity$2;

    move-result-object v1

    .line 36
    invoke-interface {p2, v2, v1}, Lo/bh;->extraCallback(ILjava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v2}, Lo/at;->onMessageChannelReady()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo/bh;->extraCallback(ILjava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    iget-object v0, p0, Lo/InterstitialActivity$1;->onMessageChannelReady:Lo/onShowCustomView;

    .line 40
    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/onShowCustomView;->onMessageChannelReady(Ljava/lang/Object;Lo/bh;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/InterstitialActivity$1;->onPostMessage:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lo/av;->onTransact()Z

    move-result p1

    return p1
.end method
