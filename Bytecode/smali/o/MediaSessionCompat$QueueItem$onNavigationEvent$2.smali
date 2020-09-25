.class final Lo/MediaSessionCompat$QueueItem$onNavigationEvent$2;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$QueueItem$onNavigationEvent;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaSessionCompat$QueueItem$onNavigationEvent;

.field final synthetic onPostMessage:Lo/postOrRun;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$QueueItem$onNavigationEvent;Lo/postOrRun;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lo/MediaSessionCompat$QueueItem$onNavigationEvent$2;->ICustomTabsCallback:Lo/MediaSessionCompat$QueueItem$onNavigationEvent;

    iput-object p2, p0, Lo/MediaSessionCompat$QueueItem$onNavigationEvent$2;->onPostMessage:Lo/postOrRun;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lo/MediaSessionCompat$QueueItem$onNavigationEvent$2;->onPostMessage:Lo/postOrRun;

    iget-object v1, p0, Lo/MediaSessionCompat$QueueItem$onNavigationEvent$2;->ICustomTabsCallback:Lo/MediaSessionCompat$QueueItem$onNavigationEvent;

    iget-object v1, v1, Lo/MediaSessionCompat$QueueItem$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method
