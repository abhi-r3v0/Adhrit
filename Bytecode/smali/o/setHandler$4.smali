.class final Lo/setHandler$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

.field final synthetic extraCallback:Landroid/view/ViewGroup;

.field final synthetic onMessageChannelReady:Landroid/view/View;

.field final synthetic onNavigationEvent:Lo/MediaMetadataCompatApi21;

.field final synthetic onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lo/getAudioStream$ICustomTabsCallback;Lo/MediaMetadataCompatApi21;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lo/setHandler$4;->extraCallback:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/setHandler$4;->onMessageChannelReady:Landroid/view/View;

    iput-object p3, p0, Lo/setHandler$4;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lo/setHandler$4;->ICustomTabsCallback:Lo/getAudioStream$ICustomTabsCallback;

    iput-object p5, p0, Lo/setHandler$4;->onNavigationEvent:Lo/MediaMetadataCompatApi21;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lo/setHandler$4;->extraCallback:Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/setHandler$4;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lo/setHandler$4;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lo/setHandler$4;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lo/setHandler$4;->extraCallback:Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/setHandler$4;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 198
    iget-object p1, p0, Lo/setHandler$4;->ICustomTabsCallback:Lo/getAudioStream$ICustomTabsCallback;

    iget-object v0, p0, Lo/setHandler$4;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lo/setHandler$4;->onNavigationEvent:Lo/MediaMetadataCompatApi21;

    invoke-interface {p1, v0, v1}, Lo/getAudioStream$ICustomTabsCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    :cond_0
    return-void
.end method
