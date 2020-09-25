.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/os/Handler;

.field final synthetic extraCallback:Ljava/lang/Runnable;

.field final synthetic onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 584
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->ICustomTabsCallback:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->extraCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 588
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, v0, :cond_0

    .line 589
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->extraCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_0
    return-void
.end method
