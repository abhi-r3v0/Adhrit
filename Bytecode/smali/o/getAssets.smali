.class public final Lo/getAssets;
.super Lo/TintTypedArray;
.source ""


# static fields
.field private static final onPostMessage:Landroid/util/SparseIntArray;


# instance fields
.field private final onMessageChannelReady:Lo/onChildrenLoaded;

.field private onRelationshipValidationResult:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b08ed

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0893

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b032b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b04c4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b066b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0920

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b066c

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0921

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b066d

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0110

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lo/rateWithExtras;Landroid/view/View;)V
    .locals 3

    .line 37
    sget-object v0, Lo/getAssets;->onPostMessage:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lo/getAssets;->ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/getAssets;-><init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 40
    aget-object v0, p3, v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, p2, v0}, Lo/TintTypedArray;-><init>(Ljava/lang/Object;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;)V

    const-wide/16 v0, -0x1

    .line 153
    iput-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    const/4 p1, 0x0

    .line 52
    aget-object p1, p3, p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getAssets;->onMessageChannelReady:Lo/onChildrenLoaded;

    const/4 p3, 0x0

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1324
    sget p1, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2061
    monitor-enter p0

    const-wide/16 p1, 0x4

    .line 2062
    :try_start_0
    iput-wide p1, p0, Lo/getAssets;->onRelationshipValidationResult:J

    .line 2063
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception p1

    .line 2063
    monitor-exit p0

    throw p1
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    .line 110
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
    .locals 0

    .line 81
    check-cast p1, Lo/setStateAfterAnimating;

    invoke-virtual {p0, p1}, Lo/TintTypedArray;->extraCallback(Lo/setStateAfterAnimating;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Lo/setStateAfterAnimating;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lo/TintTypedArray;->extraCallback:Lo/setStateAfterAnimating;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p0}, Lo/rewind;->ICustomTabsCallback()V

    .line 95
    invoke-super {p0}, Lo/TintTypedArray;->asBinder()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 8

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x0

    .line 121
    iput-wide v2, p0, Lo/getAssets;->onRelationshipValidationResult:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 125
    iget-object v5, p0, Lo/TintTypedArray;->extraCallback:Lo/setStateAfterAnimating;

    const-wide/16 v6, 0x7

    and-long/2addr v0, v6

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 2091
    iget-object v4, v5, Lo/setStateAfterAnimating;->INotificationSideChannel$Default:Lo/IMediaSession$Stub$Proxy;

    .line 135
    :cond_0
    invoke-virtual {p0, v6, v4}, Lo/getAssets;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v4, :cond_1

    .line 3077
    iget-boolean v6, v4, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    :cond_1
    if-eqz v7, :cond_2

    .line 147
    iget-object v0, p0, Lo/getAssets;->onMessageChannelReady:Lo/onChildrenLoaded;

    invoke-static {v0, v6}, Lo/extraCallback;->extraCallback(Landroid/view/View;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(II)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    invoke-direct {p0, p2}, Lo/getAssets;->ICustomTabsCallback(I)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 62
    :try_start_0
    iput-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    throw v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lo/getAssets;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 73
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
