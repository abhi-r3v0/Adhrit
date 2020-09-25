.class final Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$ResultReceiverWrapper$1;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

.field final synthetic extraCallback:Lo/fromQueueItem;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$ResultReceiverWrapper$1;Lo/fromQueueItem;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;->ICustomTabsCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    iput-object p2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;->extraCallback:Lo/fromQueueItem;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 1

    .line 506
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;->extraCallback:Lo/fromQueueItem;

    invoke-virtual {v0}, Lo/fromQueueItem;->extraCallback()V

    .line 507
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method
