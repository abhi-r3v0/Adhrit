.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(Lo/ParcelableVolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ParcelableVolumeInfo;

.field final synthetic extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;Lo/ParcelableVolumeInfo;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->ICustomTabsCallback:Lo/ParcelableVolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 351
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    .line 2470
    iget-object p2, p2, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 2723
    iget-boolean v0, p2, Lo/requestExtraBinder;->updateVisuals:Z

    if-nez v0, :cond_1

    iget-boolean p2, p2, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    return-void

    .line 354
    :cond_2
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 355
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->ICustomTabsCallback:Lo/ParcelableVolumeInfo;

    .line 3047
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 355
    invoke-static {p1}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 356
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->ICustomTabsCallback:Lo/ParcelableVolumeInfo;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(Lo/ParcelableVolumeInfo;)V

    :cond_3
    return-void
.end method
