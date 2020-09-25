.class final Lo/setDefaultImpl$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Landroid/view/Menu;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:Ljava/lang/String;

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Ljava/lang/String;

.field final synthetic asBinder:Lo/setDefaultImpl;

.field asInterface:Z

.field private cancel:Ljava/lang/CharSequence;

.field private cancelAll:Ljava/lang/CharSequence;

.field extraCallback:I

.field private extraCommand:C

.field private getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private newSession:Ljava/lang/CharSequence;

.field private notify:Ljava/lang/String;

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I

.field onRelationshipValidationResult:Z

.field onTransact:Lo/IMediaControllerCallback;

.field private postMessage:C

.field private requestPostMessageChannel:I

.field private setDefaultImpl:Landroid/content/res/ColorStateList;

.field private updateVisuals:I

.field private validateRelationship:Z

.field private warmup:I


# direct methods
.method public constructor <init>(Lo/setDefaultImpl;Landroid/view/Menu;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lo/setDefaultImpl$extraCallback;->setDefaultImpl:Landroid/content/res/ColorStateList;

    .line 338
    iput-object p1, p0, Lo/setDefaultImpl$extraCallback;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback$Stub:Landroid/view/Menu;

    const/4 p1, 0x0

    .line 1356
    iput p1, p0, Lo/setDefaultImpl$extraCallback;->extraCallback:I

    .line 1357
    iput p1, p0, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady:I

    .line 1358
    iput p1, p0, Lo/setDefaultImpl$extraCallback;->onPostMessage:I

    .line 1359
    iput p1, p0, Lo/setDefaultImpl$extraCallback;->onNavigationEvent:I

    const/4 p1, 0x1

    .line 1360
    iput-boolean p1, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback:Z

    .line 1361
    iput-boolean p1, p0, Lo/setDefaultImpl$extraCallback;->asInterface:Z

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/MenuItem;)V
    .locals 7

    .line 467
    iget-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService$Stub:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lo/setDefaultImpl$extraCallback;->validateRelationship:Z

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->mayLaunchUrl:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->warmup:I

    .line 472
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    iget v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService:I

    if-ltz v0, :cond_1

    .line 475
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_1
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v0, v0, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 483
    new-instance v0, Lo/setDefaultImpl$onNavigationEvent;

    iget-object v1, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    .line 3224
    iget-object v4, v1, Lo/setDefaultImpl;->onRelationshipValidationResult:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 3225
    iget-object v4, v1, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    .line 3231
    instance-of v5, v4, Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 3234
    instance-of v5, v4, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_2

    .line 3235
    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/setDefaultImpl;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3225
    :cond_2
    iput-object v4, v1, Lo/setDefaultImpl;->onRelationshipValidationResult:Ljava/lang/Object;

    .line 3227
    :cond_3
    iget-object v1, v1, Lo/setDefaultImpl;->onRelationshipValidationResult:Ljava/lang/Object;

    .line 484
    iget-object v4, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lo/setDefaultImpl$onNavigationEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 480
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_5
    :goto_1
    iget v0, p0, Lo/setDefaultImpl$extraCallback;->mayLaunchUrl:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    .line 488
    instance-of v0, p1, Lo/MediaBrowserCompat;

    if-eqz v0, :cond_6

    .line 489
    move-object v0, p1

    check-cast v0, Lo/MediaBrowserCompat;

    .line 3605
    iget v1, v0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v1, v1, -0x5

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lo/MediaBrowserCompat;->onTransact:I

    goto :goto_2

    .line 490
    :cond_6
    instance-of v0, p1, Lo/isConnected;

    if-eqz v0, :cond_8

    .line 491
    move-object v0, p1

    check-cast v0, Lo/isConnected;

    .line 4387
    :try_start_0
    iget-object v1, v0, Lo/isConnected;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    if-nez v1, :cond_7

    .line 4388
    iget-object v1, v0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "setExclusiveCheckable"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 4389
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lo/isConnected;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    .line 4391
    :cond_7
    iget-object v1, v0, Lo/isConnected;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iget-object v0, v0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    .line 4393
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    :cond_8
    :goto_2
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->notify:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 497
    sget-object v1, Lo/setDefaultImpl;->ICustomTabsCallback:[Ljava/lang/Class;

    iget-object v3, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v3, v3, Lo/setDefaultImpl;->extraCallback:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v3}, Lo/setDefaultImpl$extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 499
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 502
    :goto_3
    iget v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService$Stub:I

    if-lez v0, :cond_b

    if-nez v2, :cond_a

    .line 504
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_a
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_b
    :goto_4
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->onTransact:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_c

    .line 512
    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->extraCallback(Landroid/view/MenuItem;Lo/IMediaControllerCallback;)Landroid/view/MenuItem;

    .line 515
    :cond_c
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->cancel:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->onNavigationEvent(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->cancelAll:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->onMessageChannelReady(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 517
    iget-char v0, p0, Lo/setDefaultImpl$extraCallback;->postMessage:C

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->requestPostMessageChannel:I

    invoke-static {p1, v0, v1}, Lo/onShuffleModeChangedRemoved;->extraCallback(Landroid/view/MenuItem;CI)V

    .line 519
    iget-char v0, p0, Lo/setDefaultImpl$extraCallback;->extraCommand:C

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->updateVisuals:I

    invoke-static {p1, v0, v1}, Lo/onShuffleModeChangedRemoved;->onPostMessage(Landroid/view/MenuItem;CI)V

    .line 521
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_d

    .line 522
    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->onMessageChannelReady(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 524
    :cond_d
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->setDefaultImpl:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_e

    .line 525
    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->onNavigationEvent(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_e
    return-void
.end method

.method private onNavigationEvent(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 549
    :try_start_0
    iget-object v1, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v1, v1, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 552
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 554
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/util/AttributeSet;)V
    .locals 6

    .line 386
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v0, v0, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    sget-object v1, Lo/extraCallback$asInterface;->MenuItem:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 390
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService:I

    .line 391
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_menuCategory:I

    iget v2, p0, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 392
    sget v2, Lo/extraCallback$asInterface;->MenuItem_android_orderInCategory:I

    iget v3, p0, Lo/setDefaultImpl$extraCallback;->onPostMessage:I

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 393
    iput v0, p0, Lo/setDefaultImpl$extraCallback;->getInterfaceDescriptor:I

    .line 395
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->newSession:Ljava/lang/CharSequence;

    .line 396
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

    .line 397
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->warmup:I

    .line 398
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_alphabeticShortcut:I

    .line 399
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    :goto_0
    iput-char v0, p0, Lo/setDefaultImpl$extraCallback;->postMessage:C

    .line 400
    sget v0, Lo/extraCallback$asInterface;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    .line 401
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->requestPostMessageChannel:I

    .line 402
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_numericShortcut:I

    .line 403
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2462
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 403
    :goto_1
    iput-char v0, p0, Lo/setDefaultImpl$extraCallback;->extraCommand:C

    .line 404
    sget v0, Lo/extraCallback$asInterface;->MenuItem_numericModifiers:I

    .line 405
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->updateVisuals:I

    .line 406
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->mayLaunchUrl:I

    goto :goto_2

    .line 412
    :cond_2
    iget v0, p0, Lo/setDefaultImpl$extraCallback;->onNavigationEvent:I

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->mayLaunchUrl:I

    .line 414
    :goto_2
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService$Stub:Z

    .line 415
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_visible:I

    iget-boolean v2, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 416
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Lo/setDefaultImpl$extraCallback;->asInterface:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->validateRelationship:Z

    .line 417
    sget v0, Lo/extraCallback$asInterface;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService:I

    .line 418
    sget v0, Lo/extraCallback$asInterface;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 419
    sget v0, Lo/extraCallback$asInterface;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService$Stub:I

    .line 420
    sget v0, Lo/extraCallback$asInterface;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->notify:Ljava/lang/String;

    .line 421
    sget v0, Lo/extraCallback$asInterface;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->INotificationSideChannel:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 424
    iget v4, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService$Stub:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lo/setDefaultImpl$extraCallback;->notify:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 425
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->INotificationSideChannel:Ljava/lang/String;

    sget-object v4, Lo/setDefaultImpl;->onNavigationEvent:[Ljava/lang/Class;

    iget-object v5, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v5, v5, Lo/setDefaultImpl;->onPostMessage:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lo/setDefaultImpl$extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IMediaControllerCallback;

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->onTransact:Lo/IMediaControllerCallback;

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 430
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_5
    iput-object v3, p0, Lo/setDefaultImpl$extraCallback;->onTransact:Lo/IMediaControllerCallback;

    .line 436
    :goto_4
    sget v0, Lo/extraCallback$asInterface;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->cancel:Ljava/lang/CharSequence;

    .line 437
    sget v0, Lo/extraCallback$asInterface;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->cancelAll:Ljava/lang/CharSequence;

    .line 438
    sget v0, Lo/extraCallback$asInterface;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 439
    sget v0, Lo/extraCallback$asInterface;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lo/setDefaultImpl$extraCallback;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    goto :goto_5

    .line 444
    :cond_6
    iput-object v3, p0, Lo/setDefaultImpl$extraCallback;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_5
    sget v0, Lo/extraCallback$asInterface;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    sget v0, Lo/extraCallback$asInterface;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lo/setDefaultImpl$extraCallback;->setDefaultImpl:Landroid/content/res/ColorStateList;

    goto :goto_6

    .line 450
    :cond_7
    iput-object v3, p0, Lo/setDefaultImpl$extraCallback;->setDefaultImpl:Landroid/content/res/ColorStateList;

    .line 453
    :goto_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 455
    iput-boolean v1, p0, Lo/setDefaultImpl$extraCallback;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final onMessageChannelReady()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->onRelationshipValidationResult:Z

    .line 536
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback$Stub:Landroid/view/Menu;

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->extraCallback:I

    iget v2, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService:I

    iget v3, p0, Lo/setDefaultImpl$extraCallback;->getInterfaceDescriptor:I

    iget-object v4, p0, Lo/setDefaultImpl$extraCallback;->newSession:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 5

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->onRelationshipValidationResult:Z

    .line 531
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback$Stub:Landroid/view/Menu;

    iget v1, p0, Lo/setDefaultImpl$extraCallback;->extraCallback:I

    iget v2, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsService:I

    iget v3, p0, Lo/setDefaultImpl$extraCallback;->getInterfaceDescriptor:I

    iget-object v4, p0, Lo/setDefaultImpl$extraCallback;->newSession:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback(Landroid/view/MenuItem;)V

    return-void
.end method

.method public final onPostMessage(Landroid/util/AttributeSet;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lo/setDefaultImpl$extraCallback;->asBinder:Lo/setDefaultImpl;

    iget-object v0, v0, Lo/setDefaultImpl;->onMessageChannelReady:Landroid/content/Context;

    sget-object v1, Lo/extraCallback$asInterface;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 370
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->extraCallback:I

    .line 371
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->onMessageChannelReady:I

    .line 373
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->onPostMessage:I

    .line 374
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/setDefaultImpl$extraCallback;->onNavigationEvent:I

    .line 376
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->ICustomTabsCallback:Z

    .line 377
    sget v0, Lo/extraCallback$asInterface;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDefaultImpl$extraCallback;->asInterface:Z

    .line 379
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
