.class Lo/IPostMessageService$Stub;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IPostMessageService$Stub$onMessageChannelReady;,
        Lo/IPostMessageService$Stub$onNavigationEvent;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:Landroid/graphics/Rect;

.field private getInterfaceDescriptor:J

.field private onMessageChannelReady:Landroid/graphics/drawable/Drawable;

.field private onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

.field private onPostMessage:Landroid/graphics/drawable/Drawable;

.field private onRelationshipValidationResult:J

.field private onTransact:Ljava/lang/Runnable;

.field private warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 71
    iput v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private extraCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 490
    iget-object v0, p0, Lo/IPostMessageService$Stub;->warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lo/IPostMessageService$Stub$onMessageChannelReady;

    invoke-direct {v0}, Lo/IPostMessageService$Stub$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/IPostMessageService$Stub;->warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;

    .line 496
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 2171
    iput-object v1, v0, Lo/IPostMessageService$Stub$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 496
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    .line 498
    :try_start_0
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lo/IPostMessageService$Stub;->asBinder:Z

    if-eqz v1, :cond_1

    .line 499
    iget v1, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 501
    :cond_1
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub$Proxy:Z

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->RemoteActionCompatParcelizer:Z

    if-eqz v1, :cond_3

    .line 506
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->setDefaultImpl:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 508
    :cond_3
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->AudioAttributesCompatParcelizer:Z

    if-eqz v1, :cond_4

    .line 509
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 512
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 513
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 514
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 516
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 517
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 518
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 520
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6

    .line 521
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v1, v1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 523
    :cond_6
    iget-object v1, p0, Lo/IPostMessageService$Stub;->extraCallback:Landroid/graphics/Rect;

    .line 524
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    if-eqz v1, :cond_7

    .line 525
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_7
    iget-object v1, p0, Lo/IPostMessageService$Stub;->warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;

    .line 2176
    iget-object v2, v1, Lo/IPostMessageService$Stub$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 2177
    iput-object v0, v1, Lo/IPostMessageService$Stub$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 529
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lo/IPostMessageService$Stub;->warmup:Lo/IPostMessageService$Stub$onMessageChannelReady;

    .line 3176
    iget-object v3, v2, Lo/IPostMessageService$Stub$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 3177
    iput-object v0, v2, Lo/IPostMessageService$Stub$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 529
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 530
    throw v1
.end method

.method private onNavigationEvent()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static onPostMessage(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1202
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p0, 0xa0

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method ICustomTabsCallback()I
    .locals 1

    .line 414
    iget v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V
    .locals 1

    .line 1151
    iput-object p1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    .line 1153
    iget v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    if-ltz v0, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1156
    invoke-direct {p0, p1}, Lo/IPostMessageService$Stub;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    .line 1161
    iput-object p1, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method ICustomTabsCallback(I)Z
    .locals 9

    .line 427
    iget v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 437
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 440
    :cond_1
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 441
    iput-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 442
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    goto :goto_0

    .line 444
    :cond_2
    iput-object v4, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 445
    iput-wide v5, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    goto :goto_0

    .line 447
    :cond_3
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 450
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    if-ge p1, v0, :cond_6

    .line 451
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    iput-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 453
    iput p1, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_7

    .line 455
    iget-object p1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget p1, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    if-lez p1, :cond_5

    .line 456
    iget-object p1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget p1, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    .line 458
    :cond_5
    invoke-direct {p0, v0}, Lo/IPostMessageService$Stub;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 461
    :cond_6
    iput-object v4, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 462
    iput p1, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback$Stub:I

    .line 464
    :cond_7
    :goto_1
    iget-wide v0, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    const/4 p1, 0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_8

    iget-wide v0, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_a

    .line 465
    :cond_8
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onTransact:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 466
    iput-object p0, p0, Lo/IPostMessageService$Stub;->onTransact:Ljava/lang/Runnable;

    goto :goto_2

    .line 474
    :cond_9
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 477
    :goto_2
    invoke-virtual {p0, p1}, Lo/IPostMessageService$Stub;->onMessageChannelReady(Z)V

    .line 479
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 153
    iget v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 604
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    .line 606
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 576
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lo/IPostMessageService$Stub;->extraCallback:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 341
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface()I

    move-result v0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 333
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 357
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 349
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 405
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 107
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 119
    :goto_0
    invoke-direct {p0}, Lo/IPostMessageService$Stub;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 122
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 123
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onPostMessage()V

    .line 371
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 7

    .line 250
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v2, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 257
    iget-boolean v2, p0, Lo/IPostMessageService$Stub;->asBinder:Z

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    :cond_1
    iget-wide v2, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 262
    iput-wide v4, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    const/4 v0, 0x1

    .line 265
    :cond_2
    iget-wide v2, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 266
    iput-wide v4, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 614
    iget-boolean v0, p0, Lo/IPostMessageService$Stub;->asInterface:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 615
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->onMessageChannelReady()Lo/IPostMessageService$Stub$onNavigationEvent;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent()V

    .line 617
    invoke-virtual {p0, v0}, Lo/IPostMessageService$Stub;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lo/IPostMessageService$Stub;->asInterface:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 328
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->ICustomTabsCallback()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(II)Z

    move-result p1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 318
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onMessageChannelReady()Lo/IPostMessageService$Stub$onNavigationEvent;
    .locals 1

    .line 630
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    return-object v0
.end method

.method onMessageChannelReady(Z)V
    .locals 13

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lo/IPostMessageService$Stub;->asBinder:Z

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 537
    iget-object v3, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_1

    .line 538
    iget-wide v9, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    .line 540
    iget v9, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v3, v9

    .line 543
    iget-object v9, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v9, v9, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    div-int/2addr v3, v9

    .line 545
    iget-object v9, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v3, 0xff

    iget v10, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    mul-int v3, v3, v10

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_1

    .line 550
    :cond_1
    :goto_0
    iput-wide v7, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    :cond_2
    const/4 v3, 0x0

    .line 552
    :goto_1
    iget-object v9, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 553
    iget-wide v10, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    .line 555
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    .line 559
    iget-object v4, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget v4, v4, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    div-int/2addr v3, v4

    .line 561
    iget-object v4, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    mul-int v3, v3, v5

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 566
    :cond_4
    :goto_2
    iput-wide v7, p0, Lo/IPostMessageService$Stub;->getInterfaceDescriptor:J

    :cond_5
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 569
    iget-object p1, p0, Lo/IPostMessageService$Stub;->onTransact:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method final onNavigationEvent(Landroid/content/res/Resources;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 307
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 3469
    invoke-virtual {p0, v0}, Lo/IPostMessageService$Stub;->onMessageChannelReady(Z)V

    .line 3470
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 378
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 6

    .line 138
    iget-boolean v0, p0, Lo/IPostMessageService$Stub;->asBinder:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lo/IPostMessageService$Stub;->asBinder:Z

    .line 140
    iput p1, p0, Lo/IPostMessageService$Stub;->ICustomTabsCallback:I

    .line 141
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 142
    iget-wide v1, p0, Lo/IPostMessageService$Stub;->onRelationshipValidationResult:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lo/IPostMessageService$Stub;->onMessageChannelReady(Z)V

    :cond_2
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iput-boolean p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    .line 235
    iget-object p1, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub$Proxy:Z

    .line 170
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 171
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iput-object p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    if-eq v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iput-boolean p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    .line 161
    iget-object p1, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 276
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0, p1, p2}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/IPostMessageService$Stub;->extraCallback:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lo/IPostMessageService$Stub;->extraCallback:Landroid/graphics/Rect;

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    :goto_0
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 289
    invoke-static {v0, p1, p2, p3, p4}, Lo/MediaMetadataCompat$BitmapKey;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->RemoteActionCompatParcelizer:Z

    .line 181
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->setDefaultImpl:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iput-object p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->setDefaultImpl:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->AudioAttributesCompatParcelizer:Z

    .line 190
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iget-object v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onNavigationEvent:Lo/IPostMessageService$Stub$onNavigationEvent;

    iput-object p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 392
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 393
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 396
    :cond_0
    iget-object v1, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lo/IPostMessageService$Stub;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lo/IPostMessageService$Stub;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
