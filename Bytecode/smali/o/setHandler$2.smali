.class final Lo/setHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompatApi21$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHandler;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/setHandler$extraCallback;Lo/getAudioStream$ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/setHandler$2;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 3

    .line 147
    iget-object v0, p0, Lo/setHandler$2;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lo/setHandler$2;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lo/setHandler$2;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 152
    :cond_0
    iget-object v0, p0, Lo/setHandler$2;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    return-void
.end method
