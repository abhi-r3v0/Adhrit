.class public abstract Lo/handleMediaPlayPauseKeySingleTapIfPending;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/updateDxDy$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    .line 1055
    iput-boolean p1, p0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 1091
    iget-object v0, p0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateDxDy$onMessageChannelReady;

    .line 1092
    invoke-interface {v1}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 1082
    iget-boolean v0, p0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback:Z

    return v0
.end method

.method public abstract onPostMessage()V
.end method
