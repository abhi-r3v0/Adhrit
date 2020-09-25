.class final Lo/done;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/isCancelled;


# direct methods
.method constructor <init>(Lo/isCancelled;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 10
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-virtual {v0, p1}, Lo/isCancelled;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->extraCallback()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-static {v0, p1}, Lo/isCancelled;->ICustomTabsCallback(Lo/isCancelled;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo/isCancelled;->onRelationshipValidationResult()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/done;->onMessageChannelReady:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->size()I

    move-result v0

    return v0
.end method
