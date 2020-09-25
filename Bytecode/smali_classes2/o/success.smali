.class public final Lo/success;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private onPostMessage:Lo/onPostMessage$extraCallback;


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lo/success;->onPostMessage:Lo/onPostMessage$extraCallback;

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onPreDraw()Z
    .locals 6

    const/4 v0, 0x0

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    .line 50
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v4, :cond_3

    if-gtz v5, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1219
    iget-object v3, v0, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    invoke-virtual {v3, v4, v5}, Lo/newRunLoop$onPostMessage;->onPostMessage(II)Lo/newRunLoop$onPostMessage;

    .line 59
    invoke-virtual {v0, v1, v0}, Lo/getPlatformVersion;->onNavigationEvent(Landroid/widget/ImageView;Lo/onPostMessage$extraCallback;)V

    :cond_3
    :goto_0
    return v2
.end method
