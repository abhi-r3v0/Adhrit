.class public final Lo/setHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setHandler$onPostMessage;,
        Lo/setHandler$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onMessageChannelReady(Landroid/content/Context;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;Z)Lo/setHandler$extraCallback;
    .locals 5

    .line 47
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 48
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 56
    iget v3, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v3}, Lo/MediaControllerCompat$MediaControllerExtraData;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 57
    sget v4, Lo/registerCallback$onPostMessage;->visible_removing_fragment_view_tag:I

    .line 58
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    sget v4, Lo/registerCallback$onPostMessage;->visible_removing_fragment_view_tag:I

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 62
    :cond_0
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v3

    .line 65
    :cond_1
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    new-instance p0, Lo/setHandler$extraCallback;

    invoke-direct {p0, p1}, Lo/setHandler$extraCallback;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 70
    :cond_2
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    new-instance p0, Lo/setHandler$extraCallback;

    invoke-direct {p0, p1}, Lo/setHandler$extraCallback;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 82
    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 84
    new-instance v4, Lo/setHandler$extraCallback;

    invoke-direct {v4, p2}, Lo/setHandler$extraCallback;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    .line 89
    throw p0

    :cond_5
    :goto_0
    if-nez v2, :cond_7

    .line 97
    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 99
    new-instance v2, Lo/setHandler$extraCallback;

    invoke-direct {v2, p2}, Lo/setHandler$extraCallback;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    .line 107
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 109
    new-instance p0, Lo/setHandler$extraCallback;

    invoke-direct {p0, p1}, Lo/setHandler$extraCallback;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 104
    :cond_6
    throw p2

    :cond_7
    if-nez v0, :cond_8

    return-object v3

    :cond_8
    const/4 p1, -0x1

    const/16 p2, 0x1001

    if-eq v0, p2, :cond_d

    const/16 p2, 0x1003

    if-eq v0, p2, :cond_b

    const/16 p2, 0x2002

    if-eq v0, p2, :cond_9

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    .line 1215
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_close_enter:I

    goto :goto_1

    :cond_a
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_close_exit:I

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_c

    .line 1218
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_fade_enter:I

    goto :goto_1

    :cond_c
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_fade_exit:I

    goto :goto_1

    :cond_d
    if-eqz p3, :cond_e

    .line 1212
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_open_enter:I

    goto :goto_1

    :cond_e
    sget p1, Lo/registerCallback$onNavigationEvent;->fragment_open_exit:I

    :goto_1
    if-gez p1, :cond_f

    return-object v3

    .line 124
    :cond_f
    new-instance p2, Lo/setHandler$extraCallback;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-direct {p2, p0}, Lo/setHandler$extraCallback;-><init>(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method static onPostMessage(Landroidx/fragment/app/Fragment;Lo/setHandler$extraCallback;Lo/getAudioStream$ICustomTabsCallback;)V
    .locals 7

    .line 140
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 141
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 143
    new-instance v5, Lo/MediaMetadataCompatApi21;

    invoke-direct {v5}, Lo/MediaMetadataCompatApi21;-><init>()V

    .line 144
    new-instance v0, Lo/setHandler$2;

    invoke-direct {v0, p0}, Lo/setHandler$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2111
    monitor-enter v5

    .line 2153
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v3, v5, Lo/MediaMetadataCompatApi21;->onMessageChannelReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 2155
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2114
    :cond_0
    :try_start_2
    iget-object v3, v5, Lo/MediaMetadataCompatApi21;->extraCallback:Lo/MediaMetadataCompatApi21$extraCallback;

    if-ne v3, v0, :cond_1

    .line 2115
    monitor-exit v5

    goto :goto_1

    .line 2117
    :cond_1
    iput-object v0, v5, Lo/MediaMetadataCompatApi21;->extraCallback:Lo/MediaMetadataCompatApi21$extraCallback;

    .line 2118
    iget-boolean v3, v5, Lo/MediaMetadataCompatApi21;->onPostMessage:Z

    if-nez v3, :cond_2

    .line 2119
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2121
    :cond_2
    monitor-exit v5

    .line 2122
    invoke-interface {v0}, Lo/MediaMetadataCompatApi21$extraCallback;->onMessageChannelReady()V

    .line 155
    :goto_1
    invoke-interface {p2, p0, v5}, Lo/getAudioStream$ICustomTabsCallback;->extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    .line 156
    iget-object v0, p1, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 157
    new-instance v0, Lo/setHandler$onPostMessage;

    iget-object p1, p1, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    invoke-direct {v0, p1, v1, v2}, Lo/setHandler$onPostMessage;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 160
    new-instance p1, Lo/setHandler$5;

    invoke-direct {p1, v1, p0, p2, v5}, Lo/setHandler$5;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Lo/getAudioStream$ICustomTabsCallback;Lo/MediaMetadataCompatApi21;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 187
    :cond_3
    iget-object v6, p1, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    .line 188
    iget-object p1, p1, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 189
    new-instance p1, Lo/setHandler$4;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/setHandler$4;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lo/getAudioStream$ICustomTabsCallback;Lo/MediaMetadataCompatApi21;)V

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    return-void

    :catchall_0
    move-exception p0

    .line 2121
    monitor-exit v5

    throw p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 3288
    iget v0, p1, Lo/ActivityChooserView;->asInterface:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4477
    :cond_0
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    .line 4485
    iget-object v2, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v2}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4008
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result v2

    sub-int/2addr v0, v2

    .line 5288
    iget v2, p1, Lo/ActivityChooserView;->asInterface:I

    sub-int/2addr v2, v1

    .line 3015
    div-int/2addr v0, v2

    const/4 v1, 0x0

    .line 3018
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/databinding/ViewDataBinding$4;

    .line 6015
    iget-object v2, v2, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 3021
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 6485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 3024
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 7485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    sub-int/2addr v3, v4

    .line 8485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    .line 3026
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 3027
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    add-int/2addr v1, v0

    .line 3032
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3033
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    return-void
.end method
