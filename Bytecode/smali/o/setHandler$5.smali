.class final Lo/setHandler$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHandler;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/setHandler$extraCallback;Lo/getAudioStream$ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getAudioStream$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Landroid/view/ViewGroup;

.field final synthetic onNavigationEvent:Landroidx/fragment/app/Fragment;

.field final synthetic onPostMessage:Lo/MediaMetadataCompatApi21;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Lo/getAudioStream$ICustomTabsCallback;Lo/MediaMetadataCompatApi21;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/setHandler$5;->onMessageChannelReady:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/setHandler$5;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/setHandler$5;->ICustomTabsCallback:Lo/getAudioStream$ICustomTabsCallback;

    iput-object p4, p0, Lo/setHandler$5;->onPostMessage:Lo/MediaMetadataCompatApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lo/setHandler$5;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 3

    .line 1173
    iget-object v0, p0, Lo/setHandler$5;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lo/setHandler$5;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1175
    iget-object v0, p0, Lo/setHandler$5;->ICustomTabsCallback:Lo/getAudioStream$ICustomTabsCallback;

    iget-object v1, p0, Lo/setHandler$5;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lo/setHandler$5;->onPostMessage:Lo/MediaMetadataCompatApi21;

    invoke-interface {v0, v1, v2}, Lo/getAudioStream$ICustomTabsCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    :cond_0
    return-void
.end method
