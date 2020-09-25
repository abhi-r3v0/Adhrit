.class public Lo/registerAnalyticsConnectorListener;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/unregisterEventNames;


# instance fields
.field private final ICustomTabsCallback:Lo/getFirebaseInstanceId;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lo/registerAnalyticsConnectorListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Lo/getFirebaseInstanceId;

    invoke-direct {p1, p0}, Lo/getFirebaseInstanceId;-><init>(Lo/getFirebaseInstanceId$ICustomTabsCallback;)V

    iput-object p1, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/unregisterEventNames$onMessageChannelReady;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    invoke-virtual {v0}, Lo/getFirebaseInstanceId;->onMessageChannelReady()Lo/unregisterEventNames$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Canvas;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lo/getFirebaseInstanceId;->extraCallback(Landroid/graphics/Canvas;)V

    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    if-eqz v0, :cond_1

    .line 2316
    iget-object v1, v0, Lo/getFirebaseInstanceId;->ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

    invoke-interface {v1}, Lo/getFirebaseInstanceId$ICustomTabsCallback;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/getFirebaseInstanceId;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 65
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    .line 1228
    iget-object v0, v0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    invoke-virtual {v0}, Lo/getFirebaseInstanceId;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    invoke-virtual {v0}, Lo/getFirebaseInstanceId;->extraCallback()V

    return-void
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    .line 2237
    iput-object p1, v0, Lo/getFirebaseInstanceId;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 2238
    iget-object p1, v0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    .line 2222
    iget-object v1, v0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2223
    iget-object p1, v0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Lo/unregisterEventNames$onMessageChannelReady;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/registerAnalyticsConnectorListener;->ICustomTabsCallback:Lo/getFirebaseInstanceId;

    invoke-virtual {v0, p1}, Lo/getFirebaseInstanceId;->extraCallback(Lo/unregisterEventNames$onMessageChannelReady;)V

    return-void
.end method
