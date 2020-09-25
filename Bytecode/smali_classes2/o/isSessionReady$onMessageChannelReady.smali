.class final Lo/isSessionReady$onMessageChannelReady;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSessionReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field final synthetic onMessageChannelReady:Lo/isSessionReady;


# direct methods
.method constructor <init>(Lo/isSessionReady;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Lo/isSessionReady$onMessageChannelReady;->onMessageChannelReady:Lo/isSessionReady;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    .line 2350
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/isSessionReady$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2399
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 2400
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 2401
    iget-object p2, p0, Lo/isSessionReady$onMessageChannelReady;->onMessageChannelReady:Lo/isSessionReady;

    invoke-virtual {p2}, Lo/isSessionReady;->ICustomTabsCallback()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2403
    iget-object v0, p0, Lo/isSessionReady$onMessageChannelReady;->onMessageChannelReady:Lo/isSessionReady;

    .line 4945
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lo/isSessionReady$onNavigationEvent;

    iget p2, p2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 4946
    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p2

    .line 2404
    iget-object v0, p0, Lo/isSessionReady$onMessageChannelReady;->onMessageChannelReady:Lo/isSessionReady;

    .line 5747
    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v1

    .line 5746
    invoke-static {p2, v1}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 5749
    iget-object p2, v0, Lo/isSessionReady;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 5751
    iget-object p2, v0, Lo/isSessionReady;->asInterface:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 2406
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 2413
    :cond_3
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2387
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2389
    const-class p1, Lo/isSessionReady;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 5

    .line 2354
    sget-boolean v0, Lo/isSessionReady;->onNavigationEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2355
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    goto/16 :goto_1

    .line 2360
    :cond_0
    invoke-static {p2}, Lo/getPlaybackState;->onNavigationEvent(Lo/getPlaybackState;)Lo/getPlaybackState;

    move-result-object v0

    .line 2361
    invoke-super {p0, p1, v0}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 2363
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onMessageChannelReady(Landroid/view/View;)V

    .line 2364
    invoke-static {p1}, Lo/unregisterCallbackListener;->onRelationshipValidationResult(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v2

    .line 2365
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2366
    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->extraCallback(Landroid/view/View;)V

    .line 3442
    :cond_1
    iget-object v2, p0, Lo/isSessionReady$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 3444
    invoke-virtual {v0, v2}, Lo/getPlaybackState;->onMessageChannelReady(Landroid/graphics/Rect;)V

    .line 3445
    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onPostMessage(Landroid/graphics/Rect;)V

    .line 3447
    invoke-virtual {v0, v2}, Lo/getPlaybackState;->extraCallback(Landroid/graphics/Rect;)V

    .line 3448
    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onNavigationEvent(Landroid/graphics/Rect;)V

    .line 3450
    invoke-virtual {v0}, Lo/getPlaybackState;->asBinder()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->ICustomTabsCallback(Z)V

    .line 3451
    invoke-virtual {v0}, Lo/getPlaybackState;->requestPostMessageChannel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onPostMessage(Ljava/lang/CharSequence;)V

    .line 3452
    invoke-virtual {v0}, Lo/getPlaybackState;->postMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 3453
    invoke-virtual {v0}, Lo/getPlaybackState;->extraCommand()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 3455
    invoke-virtual {v0}, Lo/getPlaybackState;->newSession()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->asInterface(Z)V

    .line 3456
    invoke-virtual {v0}, Lo/getPlaybackState;->getInterfaceDescriptor()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onTransact(Z)V

    .line 3457
    invoke-virtual {v0}, Lo/getPlaybackState;->ICustomTabsCallback$Stub()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onNavigationEvent(Z)V

    .line 3458
    invoke-virtual {v0}, Lo/getPlaybackState;->onRelationshipValidationResult()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onPostMessage(Z)V

    .line 3459
    invoke-virtual {v0}, Lo/getPlaybackState;->onTransact()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->asBinder(Z)V

    .line 3460
    invoke-virtual {v0}, Lo/getPlaybackState;->ICustomTabsService()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->onRelationshipValidationResult(Z)V

    .line 3461
    invoke-virtual {v0}, Lo/getPlaybackState;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->ICustomTabsCallback$Stub(Z)V

    .line 3463
    invoke-virtual {v0}, Lo/getPlaybackState;->onMessageChannelReady()I

    move-result v2

    invoke-virtual {p2, v2}, Lo/getPlaybackState;->ICustomTabsCallback(I)V

    .line 2369
    invoke-virtual {v0}, Lo/getPlaybackState;->IPostMessageService()V

    .line 2371
    check-cast p1, Landroid/view/ViewGroup;

    .line 4426
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4428
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4429
    invoke-static {v3}, Lo/isSessionReady;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4430
    invoke-virtual {p2, v3}, Lo/getPlaybackState;->onPostMessage(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2374
    :cond_3
    :goto_1
    const-class p1, Lo/isSessionReady;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 2379
    invoke-virtual {p2, v1}, Lo/getPlaybackState;->onNavigationEvent(Z)V

    .line 2380
    invoke-virtual {p2, v1}, Lo/getPlaybackState;->onPostMessage(Z)V

    .line 2381
    sget-object p1, Lo/getPlaybackState$extraCallback;->onNavigationEvent:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->extraCallback(Lo/getPlaybackState$extraCallback;)Z

    .line 2382
    sget-object p1, Lo/getPlaybackState$extraCallback;->extraCallback:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->extraCallback(Lo/getPlaybackState$extraCallback;)Z

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2419
    sget-boolean v0, Lo/isSessionReady;->onNavigationEvent:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lo/isSessionReady;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2420
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lo/onSessionDestroyed;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
