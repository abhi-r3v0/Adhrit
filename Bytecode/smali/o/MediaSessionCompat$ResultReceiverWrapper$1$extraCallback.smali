.class final Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$ResultReceiverWrapper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$ResultReceiverWrapper$1;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    .line 434
    iput-object p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    iget v1, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asInterface:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asInterface:I

    .line 448
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    iget v0, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asInterface:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult:Z

    .line 451
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-virtual {v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult()V

    .line 453
    :cond_0
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 1

    .line 439
    iget-object p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    iget-boolean p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult:Z

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-virtual {p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady()V

    .line 441
    iget-object p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult:Z

    :cond_0
    return-void
.end method
