.class Lo/getQueueTitle$onMessageChannelReady;
.super Lo/getQueueTitle$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getQueueTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method constructor <init>(Lo/getQueueTitle;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lo/getQueueTitle$onNavigationEvent;-><init>(Lo/getQueueTitle;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/getQueueTitle$onNavigationEvent;->onMessageChannelReady:Lo/getQueueTitle;

    invoke-virtual {v0, p1}, Lo/getQueueTitle;->ICustomTabsCallback(I)Lo/getPlaybackState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lo/getPlaybackState;->onPostMessage()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
