.class public Lo/MediaBrowserCompat$Subscription;
.super Lo/removeSubscription;
.source ""


# instance fields
.field protected MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

.field protected handleMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/removeSubscription;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lo/removeSubscription;

    .line 9
    iput-object v0, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    return-void
.end method


# virtual methods
.method public final IPostMessageService$Stub()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    return-void
.end method

.method public final extraCallback(Lo/removeSubscription;)V
    .locals 3

    .line 18
    iget v0, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 19
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/removeSubscription;

    iput-object v0, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    .line 21
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    iget v1, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    return-void
.end method
