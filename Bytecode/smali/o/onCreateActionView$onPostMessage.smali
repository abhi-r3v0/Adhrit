.class public final Lo/onCreateActionView$onPostMessage;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onCreateActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dodola/bubblecloud/BubbleCloudView$adapterDataObserver$1",
        "Landroid/database/DataSetObserver;",
        "onChanged",
        "",
        "onInvalidated",
        "bubblecloud_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onCreateActionView;


# direct methods
.method constructor <init>(Lo/onCreateActionView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 5

    .line 68
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    iget-object v2, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    .line 1101
    iget-object v2, v2, Lo/onCreateActionView;->onPostMessage:Lo/setShareHistoryFileName;

    .line 69
    iget-object v3, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(i)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "view"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    iget-object v2, v2, Lo/setShareHistoryFileName;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-static {v0}, Lo/onCreateActionView;->asBinder(Lo/onCreateActionView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 73
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-static {v0}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;)F

    move-result v1

    iget-object v2, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-static {v2}, Lo/onCreateActionView;->ICustomTabsCallback(Lo/onCreateActionView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-static {v3}, Lo/onCreateActionView;->onMessageChannelReady(Lo/onCreateActionView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;FFF)V

    .line 74
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 5

    .line 78
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    .line 2101
    iget-object v2, v2, Lo/onCreateActionView;->onPostMessage:Lo/setShareHistoryFileName;

    .line 79
    iget-object v3, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(i)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "view"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    iget-object v2, v2, Lo/setShareHistoryFileName;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-static {v0}, Lo/onCreateActionView;->asBinder(Lo/onCreateActionView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 82
    iget-object v0, p0, Lo/onCreateActionView$onPostMessage;->ICustomTabsCallback:Lo/onCreateActionView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method
