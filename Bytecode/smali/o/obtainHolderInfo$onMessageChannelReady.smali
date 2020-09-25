.class final Lo/obtainHolderInfo$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainHolderInfo;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onScrollChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/obtainHolderInfo;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/obtainHolderInfo;Lo/toDebugString$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/obtainHolderInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/obtainHolderInfo;

    iput-object p2, p0, Lo/obtainHolderInfo$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 4

    .line 93
    iget-object v0, p0, Lo/obtainHolderInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/obtainHolderInfo;

    .line 1050
    iget-object v0, v0, Lo/obtainHolderInfo;->onPostMessage:Lo/prepareFromUri;

    const-string/jumbo v1, "root"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "root.getChildAt(0)"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 94
    iget-object v2, p0, Lo/obtainHolderInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/obtainHolderInfo;

    .line 2050
    iget-object v2, v2, Lo/obtainHolderInfo;->onPostMessage:Lo/prepareFromUri;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lo/obtainHolderInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/obtainHolderInfo;

    .line 3050
    iget-object v3, v3, Lo/obtainHolderInfo;->onPostMessage:Lo/prepareFromUri;

    if-nez v3, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 94
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lo/obtainHolderInfo$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v0, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v0, :cond_3

    const-string v0, "remote_control_scroll"

    .line 95
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 96
    iget-object v0, p0, Lo/obtainHolderInfo$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    :cond_3
    return-void
.end method
