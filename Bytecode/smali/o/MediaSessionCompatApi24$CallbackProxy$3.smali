.class final Lo/MediaSessionCompatApi24$CallbackProxy$3;
.super Lo/requestExtraBinder$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/widget/FrameLayout;

.field final synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field final synthetic onNavigationEvent:Lo/MediaSessionCompatApi24$CallbackProxy;


# direct methods
.method constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$3;->onNavigationEvent:Lo/MediaSessionCompatApi24$CallbackProxy;

    iput-object p2, p0, Lo/MediaSessionCompatApi24$CallbackProxy$3;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/MediaSessionCompatApi24$CallbackProxy$3;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/requestExtraBinder$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 376
    iget-object p4, p0, Lo/MediaSessionCompatApi24$CallbackProxy$3;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_2

    .line 3876
    iget-object p1, p1, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 4080
    iget-object p2, p1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p2

    const/4 p4, 0x0

    .line 4081
    :try_start_0
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p4, v0, :cond_1

    .line 4082
    iget-object v1, p1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;

    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;->onPostMessage:Lo/requestExtraBinder$onNavigationEvent;

    if-ne v1, p0, :cond_0

    .line 4083
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 4087
    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$3;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    invoke-static {p3, p1}, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 4087
    monitor-exit p2

    throw p1

    :cond_2
    :goto_2
    return-void
.end method
