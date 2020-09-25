.class public final Lo/sendQueue;
.super Lo/MediaSessionCompat$ResultReceiverWrapper$1;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    .line 38
    invoke-direct {p0}, Lo/sendQueue;->onTransact()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lo/sendQueue;->onTransact()V

    return-void
.end method

.method private onTransact()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(I)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 48
    new-instance v1, Lo/sendMetadata;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lo/sendMetadata;-><init>(I)V

    invoke-virtual {p0, v1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object v1

    new-instance v2, Lo/sendQueueTitle;

    invoke-direct {v2}, Lo/sendQueueTitle;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object v1

    new-instance v2, Lo/sendMetadata;

    invoke-direct {v2, v0}, Lo/sendMetadata;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-void
.end method
