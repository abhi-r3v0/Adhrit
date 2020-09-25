.class public final Lo/unregisterCallbackMessenger;
.super Lo/extraCallback$onMessageChannelReady;
.source ""


# instance fields
.field onNavigationEvent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/extraCallback$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lo/unregisterCallbackMessenger;->onNavigationEvent:F

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 31
    iget v0, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    iget v0, p0, Lo/unregisterCallbackMessenger;->onNavigationEvent:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float p1, p1

    .line 32
    iput p1, p0, Lo/unregisterCallbackMessenger;->onNavigationEvent:F

    .line 33
    iget p1, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    .line 36
    :cond_1
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    :cond_2
    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 26
    invoke-super {p0}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/unregisterCallbackMessenger;->onNavigationEvent:F

    return-void
.end method
