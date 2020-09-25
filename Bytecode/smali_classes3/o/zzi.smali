.class final Lo/zzi;
.super Lo/zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzh<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/zzi;->onMessageChannelReady:Lo/setTimeout;

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lo/zzh;->extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p2, p0, Lo/zzi;->onMessageChannelReady:Lo/setTimeout;

    .line 1000
    iget-object p2, p2, Lo/setTimeout;->asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2000
    sget-object p2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Expected keepingAlive to be true, but was false."

    invoke-virtual {p2, v1, v0}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p2, "keep_alive"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/zzi;->onMessageChannelReady:Lo/setTimeout;

    invoke-virtual {p1}, Lo/setTimeout;->extraCallback()V

    :cond_1
    return-void
.end method
