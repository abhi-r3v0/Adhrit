.class final Lo/Settings$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/app/Activity;

.field private synthetic onMessageChannelReady:Lo/AppRequestData;

.field private synthetic onPostMessage:Lo/Settings$extraCallback;


# direct methods
.method constructor <init>(Lo/Settings$extraCallback;Lo/AppRequestData;Landroid/app/Activity;)V
    .locals 0

    .line 2482
    iput-object p1, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    iput-object p2, p0, Lo/Settings$extraCallback$1;->onMessageChannelReady:Lo/AppRequestData;

    iput-object p3, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2486
    invoke-static {}, Lo/SettingsSpiCall;->onMessageChannelReady()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 2487
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2489
    :try_start_0
    invoke-static {}, Lo/SettingsSpiCall;->extraCallback()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MixpanelAPI.API"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "DisplayState is locked, will not show notifications."

    .line 2490
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2494
    :cond_0
    :try_start_2
    iget-object v1, p0, Lo/Settings$extraCallback$1;->onMessageChannelReady:Lo/AppRequestData;

    if-nez v1, :cond_1

    .line 2496
    iget-object v1, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    .line 3257
    iget-object v3, v1, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v3}, Lo/Settings;->onPostMessage(Lo/Settings;)Lo/parseSettingsJson;

    move-result-object v3

    iget-object v1, v1, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->asBinder(Lo/Settings;)Lo/SessionSettingsData;

    move-result-object v1

    .line 3369
    iget-boolean v1, v1, Lo/SessionSettingsData;->onRelationshipValidationResult:Z

    .line 3257
    invoke-virtual {v3, v1}, Lo/parseSettingsJson;->onNavigationEvent(Z)Lo/AppRequestData;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "No notification available, will not show."

    .line 2499
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2503
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lo/AppRequestData;->extraCallback()Lo/AppRequestData$onMessageChannelReady;

    move-result-object v3

    .line 2504
    sget-object v4, Lo/AppRequestData$onMessageChannelReady;->onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/SettingsJsonTransform;->extraCallback(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v1, "Application is not configured to show takeover notifications, none will be shown."

    .line 2505
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2509
    :cond_3
    :try_start_4
    iget-object v4, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    const/high16 v5, -0x1000000

    .line 4043
    invoke-static {v4}, Lo/RemoveRepeatsStrategy;->extraCallback(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 4045
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    :cond_4
    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 4062
    invoke-static {v5, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v5, 0x3e99999a    # 0.3f

    const/4 v7, 0x2

    aput v5, v4, v7

    const/16 v5, 0xf2

    .line 4065
    invoke-static {v5, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    .line 2510
    new-instance v5, Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    invoke-direct {v5, v1, v4}, Lo/SettingsSpiCall$onPostMessage$onPostMessage;-><init>(Lo/AppRequestData;I)V

    .line 2512
    iget-object v4, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    invoke-virtual {v4}, Lo/Settings$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    iget-object v8, v8, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v8}, Lo/Settings;->ICustomTabsCallback(Lo/Settings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v4, v8}, Lo/SettingsSpiCall;->onPostMessage(Lo/SettingsSpiCall$onPostMessage;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_5

    const-string v1, "DisplayState Lock in inconsistent state! Please report this issue to Mixpanel"

    .line 2514
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2518
    :cond_5
    :try_start_5
    sget-object v5, Lo/Settings$2;->ICustomTabsCallback:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v5, v5, v8

    const/4 v8, 0x1

    if-eq v5, v8, :cond_7

    if-eq v5, v7, :cond_6

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized notification type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be shown"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "Sending intent for takeover notification."

    .line 2549
    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lo/MiddleOutStrategy;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 2552
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x20000

    .line 2553
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.INTENT_ID_KEY"

    .line 2554
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2555
    iget-object v3, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2520
    :cond_7
    invoke-static {v4}, Lo/SettingsSpiCall;->onMessageChannelReady(I)Lo/SettingsSpiCall;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v1, "Notification\'s display proposal was already consumed, no notification will be shown."

    .line 2522
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2525
    :cond_8
    :try_start_6
    new-instance v5, Lo/AppSettingsData;

    invoke-direct {v5}, Lo/AppSettingsData;-><init>()V

    .line 2526
    iget-object v7, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    iget-object v7, v7, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 4290
    iget-object v3, v3, Lo/SettingsSpiCall;->ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

    .line 2529
    check-cast v3, Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 5057
    iput-object v7, v5, Lo/AppSettingsData;->ICustomTabsCallback:Lo/Settings;

    .line 5058
    iput v4, v5, Lo/AppSettingsData;->onNavigationEvent:I

    .line 5059
    iput-object v3, v5, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 2531
    invoke-virtual {v5, v8}, Lo/AppSettingsData;->setRetainInstance(Z)V

    const-string v3, "Attempting to show mini notification."

    .line 2533
    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    iget-object v3, p0, Lo/Settings$extraCallback$1;->extraCallback:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 2535
    sget v4, Lo/writeCachedSettings$extraCallback;->com_mixpanel_android_slide_down:I

    invoke-virtual {v3, v6, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    const v4, 0x1020002

    .line 2536
    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2539
    :try_start_7
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_8
    const-string v3, "Unable to show notification."

    .line 2543
    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    iget-object v2, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    iget-object v2, v2, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v2}, Lo/Settings;->onPostMessage(Lo/Settings;)Lo/parseSettingsJson;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/parseSettingsJson;->onMessageChannelReady(Lo/AppRequestData;)V

    .line 2561
    :goto_0
    iget-object v2, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    iget-object v2, v2, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v2}, Lo/Settings;->asBinder(Lo/Settings;)Lo/SessionSettingsData;

    move-result-object v2

    .line 5369
    iget-boolean v2, v2, Lo/SessionSettingsData;->onRelationshipValidationResult:Z

    if-nez v2, :cond_9

    .line 2562
    iget-object v2, p0, Lo/Settings$extraCallback$1;->onPostMessage:Lo/Settings$extraCallback;

    invoke-virtual {v2, v1}, Lo/Settings$extraCallback;->ICustomTabsCallback(Lo/AppRequestData;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2565
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2566
    throw v1
.end method
