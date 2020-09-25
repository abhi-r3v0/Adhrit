.class final Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;
.super Lo/onCacheHost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->onPostMessage(Lo/rotateRight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/rotateRight;

.field private synthetic onMessageChannelReady:Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;Lo/rotateRight;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;->extraCallback:Lo/rotateRight;

    invoke-direct {p0}, Lo/onCacheHost;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

    .line 1618
    iget-object v0, v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onMessageChannelReady:Lo/moveRedLeft;

    .line 2516
    sget-object v1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v2, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3045
    iget-object v0, v0, Lo/moveRedLeft;->onMessageChannelReady:Lo/listen;

    invoke-interface {v0}, Lo/listen;->onPostMessage()V

    goto :goto_1

    .line 3047
    :cond_1
    iget-object v0, v0, Lo/moveRedLeft;->onNavigationEvent:Lo/listen;

    invoke-interface {v0}, Lo/listen;->onPostMessage()V

    .line 654
    :goto_1
    invoke-super {p0, p1, p2}, Lo/onCacheHost;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 3

    .line 660
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

    .line 3618
    iget-object v0, v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onMessageChannelReady:Lo/moveRedLeft;

    .line 4516
    sget-object v1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v2, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5045
    iget-object v0, v0, Lo/moveRedLeft;->onMessageChannelReady:Lo/listen;

    invoke-interface {v0}, Lo/listen;->onPostMessage()V

    goto :goto_1

    .line 5047
    :cond_1
    iget-object v0, v0, Lo/moveRedLeft;->onNavigationEvent:Lo/listen;

    invoke-interface {v0}, Lo/listen;->onPostMessage()V

    .line 661
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lo/onCacheHost;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method

.method protected final onPostMessage()Lo/rotateRight;
    .locals 1

    .line 648
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;->extraCallback:Lo/rotateRight;

    return-object v0
.end method
