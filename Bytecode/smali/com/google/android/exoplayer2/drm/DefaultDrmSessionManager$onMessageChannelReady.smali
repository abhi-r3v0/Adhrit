.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;->ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 522
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 527
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;->ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/addParameter;

    .line 533
    invoke-virtual {v2, v0}, Lo/addParameter;->ICustomTabsCallback([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Lo/addParameter;->onNavigationEvent(I)V

    :cond_2
    return-void
.end method
