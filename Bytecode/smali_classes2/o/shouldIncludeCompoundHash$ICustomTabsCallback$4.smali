.class final Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;
.super Lo/injectConnectionFailure;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

.field private synthetic extraCallback:Lo/colorFlip;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash$ICustomTabsCallback;Lo/colorFlip;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->extraCallback:Lo/colorFlip;

    invoke-direct {p0}, Lo/injectConnectionFailure;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Lo/colorFlip;
    .locals 1

    .line 639
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->extraCallback:Lo/colorFlip;

    return-object v0
.end method

.method public final onPostMessage(Lo/rotateRight;)V
    .locals 3

    .line 644
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

    .line 1618
    iget-object v0, v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onMessageChannelReady:Lo/moveRedLeft;

    .line 2039
    iget-object v1, v0, Lo/moveRedLeft;->ICustomTabsCallback:Lo/listen;

    invoke-interface {v1}, Lo/listen;->onPostMessage()V

    .line 2040
    iget-object v1, v0, Lo/moveRedLeft;->onPostMessage:Lo/sendUnauth;

    invoke-interface {v1}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v1

    iput-wide v1, v0, Lo/moveRedLeft;->extraCallback:J

    .line 645
    new-instance v0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;

    invoke-direct {v0, p0, p1}, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4$1;-><init>(Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;Lo/rotateRight;)V

    invoke-super {p0, v0}, Lo/injectConnectionFailure;->onPostMessage(Lo/rotateRight;)V

    return-void
.end method
