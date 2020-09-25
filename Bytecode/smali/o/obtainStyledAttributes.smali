.class public final Lo/obtainStyledAttributes;
.super Lo/wrap;
.source ""


# instance fields
.field private asInterface:J

.field private final extraCallback:Landroid/widget/FrameLayout;

.field private final onMessageChannelReady:Lo/onPrimaryNavigationFragmentChanged;

.field private final onPostMessage:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Lo/rateWithExtras;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 31
    invoke-static {p1, p2, v1, v0, v0}, Lo/obtainStyledAttributes;->ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/obtainStyledAttributes;-><init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Lo/wrap;-><init>(Ljava/lang/Object;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 175
    iput-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lo/obtainStyledAttributes;->extraCallback:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lo/obtainStyledAttributes;->onPostMessage:Landroidx/cardview/widget/CardView;

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Lo/onPrimaryNavigationFragmentChanged;

    iput-object p1, p0, Lo/obtainStyledAttributes;->onMessageChannelReady:Lo/onPrimaryNavigationFragmentChanged;

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1324
    sget p1, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2049
    monitor-enter p0

    const-wide/16 p1, 0x8

    .line 2050
    :try_start_0
    iput-wide p1, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 2051
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2052
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception p1

    .line 2051
    monitor-exit p0

    throw p1
.end method

.method private extraCallback(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 4

    .line 69
    check-cast p1, Lo/setStateAfterAnimating;

    .line 2078
    iput-object p1, p0, Lo/wrap;->onNavigationEvent:Lo/setStateAfterAnimating;

    .line 2079
    monitor-enter p0

    .line 2080
    :try_start_0
    iget-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 2081
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    invoke-virtual {p0}, Lo/rewind;->ICustomTabsCallback()V

    .line 2083
    invoke-super {p0}, Lo/wrap;->asBinder()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 2081
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 14

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const-wide/16 v2, 0x0

    .line 120
    iput-wide v2, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v4, p0, Lo/wrap;->onNavigationEvent:Lo/setStateAfterAnimating;

    const-wide/16 v5, 0xf

    and-long/2addr v5, v0

    const-wide/16 v7, 0xe

    const-wide/16 v9, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_3

    and-long v5, v0, v9

    cmp-long v13, v5, v2

    if-eqz v13, :cond_1

    if-eqz v4, :cond_0

    .line 3059
    iget-object v5, v4, Lo/setStateAfterAnimating;->warmup:Lo/IMediaSession$Stub;

    goto :goto_0

    :cond_0
    move-object v5, v12

    .line 137
    :goto_0
    invoke-virtual {p0, v11, v5}, Lo/obtainStyledAttributes;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v5, :cond_1

    .line 3078
    iget v11, v5, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    :cond_1
    and-long v5, v0, v7

    cmp-long v13, v5, v2

    if-eqz v13, :cond_3

    if-eqz v4, :cond_2

    .line 4055
    iget-object v4, v4, Lo/setStateAfterAnimating;->ICustomTabsService:Lo/getMediaController;

    goto :goto_1

    :cond_2
    move-object v4, v12

    :goto_1
    const/4 v5, 0x1

    .line 151
    invoke-virtual {p0, v5, v4}, Lo/obtainStyledAttributes;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v4, :cond_3

    .line 4081
    iget-object v4, v4, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 156
    move-object v12, v4

    check-cast v12, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    :cond_3
    and-long v4, v0, v9

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    .line 164
    iget-object v4, p0, Lo/obtainStyledAttributes;->onPostMessage:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v11}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_4
    and-long/2addr v0, v7

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 169
    iget-object v0, p0, Lo/obtainStyledAttributes;->onMessageChannelReady:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v0, v12}, Lo/onPrimaryNavigationFragmentChanged;->setCardTemplate(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(II)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    invoke-direct {p0, p2}, Lo/obtainStyledAttributes;->extraCallback(I)Z

    move-result p1

    return p1

    .line 90
    :cond_1
    invoke-direct {p0, p2}, Lo/obtainStyledAttributes;->onMessageChannelReady(I)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 50
    :try_start_0
    iput-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lo/obtainStyledAttributes;->asInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 61
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
