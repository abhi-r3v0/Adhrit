.class Lo/getQueueTitle$onNavigationEvent;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getQueueTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/getQueueTitle;


# direct methods
.method constructor <init>(Lo/getQueueTitle;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 39
    iput-object p1, p0, Lo/getQueueTitle$onNavigationEvent;->onMessageChannelReady:Lo/getQueueTitle;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/getQueueTitle$onNavigationEvent;->onMessageChannelReady:Lo/getQueueTitle;

    .line 45
    invoke-virtual {v0, p1}, Lo/getQueueTitle;->onMessageChannelReady(I)Lo/getPlaybackState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lo/getPlaybackState;->onPostMessage()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/getQueueTitle$onNavigationEvent;->onMessageChannelReady:Lo/getQueueTitle;

    .line 57
    invoke-virtual {v0, p1, p2}, Lo/getQueueTitle;->onNavigationEvent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getPlaybackState;

    .line 65
    invoke-virtual {v2}, Lo/getPlaybackState;->onPostMessage()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lo/getQueueTitle$onNavigationEvent;->onMessageChannelReady:Lo/getQueueTitle;

    invoke-virtual {v0, p1, p2, p3}, Lo/getQueueTitle;->ICustomTabsCallback(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
