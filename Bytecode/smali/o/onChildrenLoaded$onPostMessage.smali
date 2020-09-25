.class public Lo/onChildrenLoaded$onPostMessage;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onChildrenLoaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onChildrenLoaded$onPostMessage$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public AudioAttributesCompatParcelizer:I

.field public AudioAttributesImplApi21Parcelizer:Z

.field public AudioAttributesImplBaseParcelizer:I

.field public ICustomTabsCallback:F

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:I

.field public ICustomTabsService$Stub:I

.field public ICustomTabsService$Stub$Proxy:I

.field public INotificationSideChannel:F

.field public INotificationSideChannel$Default:I

.field public INotificationSideChannel$Stub:I

.field public INotificationSideChannel$Stub$Proxy:I

.field public IPostMessageService:I

.field public IPostMessageService$Stub:I

.field public IPostMessageService$Stub$Proxy:Ljava/lang/String;

.field public IconCompatParcelizer:F

.field public MediaBrowserCompat:I

.field MediaBrowserCompat$CallbackHandler:I

.field MediaBrowserCompat$ConnectionCallback:I

.field public RemoteActionCompatParcelizer:F

.field public asBinder:I

.field public asInterface:I

.field public cancel:F

.field public cancelAll:F

.field public connect:Z

.field public disconnect:I

.field public extraCallback:I

.field public extraCommand:I

.field public getDefaultImpl:I

.field getExtras:Z

.field public getInterfaceDescriptor:F

.field getItem:I

.field getNotifyChildrenChangedOptions:F

.field getRoot:Z

.field getServiceComponent:Z

.field getSessionToken:Z

.field handleMessage:I

.field isConnected:Z

.field public mayLaunchUrl:I

.field public newSession:I

.field public notify:F

.field onConnectionSuspended:Lo/removeSubscription;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I

.field public onRelationshipValidationResult:I

.field public onTransact:I

.field public postMessage:I

.field public read:I

.field public requestPostMessageChannel:I

.field search:Z

.field sendCustomAction:I

.field setCallbacksMessenger:I

.field public setDefaultImpl:I

.field setInternalConnectionCallback:F

.field subscribe:I

.field unsubscribe:I

.field public updateVisuals:I

.field public validateRelationship:I

.field public warmup:I

.field public write:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 p1, -0x2

    .line 3040
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    .line 2171
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 2176
    iput p2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    .line 2181
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 2186
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    .line 2191
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    .line 2196
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2201
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    .line 2206
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    .line 2211
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    .line 2216
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 2221
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    .line 2226
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    const/4 v0, 0x0

    .line 2231
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    const/4 v1, 0x0

    .line 2236
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    .line 2241
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    .line 2246
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    .line 2251
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    .line 2256
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    .line 2261
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    .line 2266
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    .line 2271
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 2276
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    .line 2281
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    .line 2286
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2291
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 2296
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    const/4 v2, 0x0

    .line 2301
    iput-object v2, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 2317
    iput p2, p0, Lo/onChildrenLoaded$onPostMessage;->notify:F

    .line 2323
    iput p2, p0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 2335
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    .line 2347
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    .line 2360
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    .line 2373
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    .line 2379
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 2385
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    .line 2391
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    .line 2397
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2402
    iput p2, p0, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 2407
    iput p2, p0, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    .line 2413
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    .line 2419
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    .line 2421
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    .line 2430
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    .line 2439
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    const/4 p2, 0x1

    .line 2442
    iput-boolean p2, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 2443
    iput-boolean p2, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 2445
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    .line 2446
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    .line 2447
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    .line 2448
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->search:Z

    .line 2450
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 2451
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 2452
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 2453
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 2454
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 2455
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 2456
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 2462
    new-instance p1, Lo/removeSubscription;

    invoke-direct {p1}, Lo/removeSubscription;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2649
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2166
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    .line 2171
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2176
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    .line 2181
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 2186
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    .line 2191
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    .line 2196
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2201
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    .line 2206
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    .line 2211
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    .line 2216
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 2221
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    .line 2226
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    const/4 v2, 0x0

    .line 2231
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    const/4 v3, 0x0

    .line 2236
    iput v3, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    .line 2241
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    .line 2246
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    .line 2251
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    .line 2256
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    .line 2261
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    .line 2266
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    .line 2271
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 2276
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    .line 2281
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    .line 2286
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2291
    iput v4, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 2296
    iput v4, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    const/4 v5, 0x0

    .line 2301
    iput-object v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 2317
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->notify:F

    .line 2323
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 2335
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    .line 2347
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    .line 2360
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    .line 2373
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    .line 2379
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 2385
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    .line 2391
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    .line 2397
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2402
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 2407
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    .line 2413
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    .line 2419
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    .line 2421
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    .line 2430
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    .line 2439
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    const/4 v1, 0x1

    .line 2442
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 2443
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 2445
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    .line 2446
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    .line 2447
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    .line 2448
    iput-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->search:Z

    .line 2450
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 2451
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 2452
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 2453
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 2454
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 2455
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 2456
    iput v4, p0, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 2462
    new-instance v4, Lo/removeSubscription;

    invoke-direct {v4}, Lo/removeSubscription;-><init>()V

    iput-object v4, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 2650
    sget-object v4, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_3

    .line 2653
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 2654
    sget-object v6, Lo/onChildrenLoaded$onPostMessage$ICustomTabsCallback;->extraCallback:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, -0x2

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_2

    .line 2746
    :pswitch_0
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    goto/16 :goto_2

    .line 2742
    :pswitch_1
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    goto/16 :goto_2

    .line 2892
    :pswitch_2
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    goto/16 :goto_2

    .line 2888
    :pswitch_3
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    goto/16 :goto_2

    .line 2884
    :pswitch_4
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    goto/16 :goto_2

    .line 2880
    :pswitch_5
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->notify:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->notify:F

    goto/16 :goto_2

    .line 2830
    :pswitch_6
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2834
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2835
    iget-object v6, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 2847
    :goto_1
    iget-object v7, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_1

    .line 2849
    iget-object v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2850
    iget-object v6, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2851
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2853
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2854
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_2

    .line 2867
    :cond_1
    iget-object v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2868
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 2870
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_2

    .line 2968
    :pswitch_7
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    goto/16 :goto_2

    .line 2958
    :pswitch_8
    :try_start_2
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    nop

    .line 2960
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2962
    iput v8, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    goto/16 :goto_2

    .line 2947
    :pswitch_9
    :try_start_3
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->write:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    nop

    .line 2949
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2951
    iput v8, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    goto/16 :goto_2

    .line 2942
    :pswitch_a
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    goto/16 :goto_2

    .line 2932
    :pswitch_b
    :try_start_4
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->read:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    nop

    .line 2934
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2936
    iput v8, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    goto/16 :goto_2

    .line 2921
    :pswitch_c
    :try_start_5
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    nop

    .line 2923
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2925
    iput v8, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    goto/16 :goto_2

    .line 2912
    :pswitch_d
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    if-ne v5, v1, :cond_2

    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 2914
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2904
    :pswitch_e
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    if-ne v5, v1, :cond_2

    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 2906
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2826
    :pswitch_f
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    goto/16 :goto_2

    .line 2822
    :pswitch_10
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    goto/16 :goto_2

    .line 2900
    :pswitch_11
    iget-boolean v6, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    goto/16 :goto_2

    .line 2896
    :pswitch_12
    iget-boolean v6, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    goto/16 :goto_2

    .line 2818
    :pswitch_13
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    goto/16 :goto_2

    .line 2814
    :pswitch_14
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    goto/16 :goto_2

    .line 2810
    :pswitch_15
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    goto/16 :goto_2

    .line 2806
    :pswitch_16
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    goto/16 :goto_2

    .line 2802
    :pswitch_17
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    goto/16 :goto_2

    .line 2798
    :pswitch_18
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    goto/16 :goto_2

    .line 2791
    :pswitch_19
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-ne v6, v0, :cond_2

    .line 2793
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    goto/16 :goto_2

    .line 2784
    :pswitch_1a
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-ne v6, v0, :cond_2

    .line 2786
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    goto/16 :goto_2

    .line 2777
    :pswitch_1b
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-ne v6, v0, :cond_2

    .line 2779
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    goto/16 :goto_2

    .line 2770
    :pswitch_1c
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-ne v6, v0, :cond_2

    .line 2772
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    goto/16 :goto_2

    .line 2717
    :pswitch_1d
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    if-ne v6, v0, :cond_2

    .line 2719
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    goto/16 :goto_2

    .line 2710
    :pswitch_1e
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v6, v0, :cond_2

    .line 2712
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    goto/16 :goto_2

    .line 2703
    :pswitch_1f
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    if-ne v6, v0, :cond_2

    .line 2705
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    goto/16 :goto_2

    .line 2696
    :pswitch_20
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    if-ne v6, v0, :cond_2

    .line 2698
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    goto/16 :goto_2

    .line 2689
    :pswitch_21
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    if-ne v6, v0, :cond_2

    .line 2691
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    goto/16 :goto_2

    .line 2682
    :pswitch_22
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v6, v0, :cond_2

    .line 2684
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    goto/16 :goto_2

    .line 2675
    :pswitch_23
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    if-ne v6, v0, :cond_2

    .line 2677
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    goto/16 :goto_2

    .line 2668
    :pswitch_24
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    if-ne v6, v0, :cond_2

    .line 2670
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    goto :goto_2

    .line 2661
    :pswitch_25
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    if-ne v6, v0, :cond_2

    .line 2663
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    goto :goto_2

    .line 2760
    :pswitch_26
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    goto :goto_2

    .line 2755
    :pswitch_27
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 2750
    :pswitch_28
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    goto :goto_2

    .line 2735
    :pswitch_29
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    cmpg-float v7, v5, v3

    if-gez v7, :cond_2

    sub-float v5, v6, v5

    rem-float/2addr v5, v6

    .line 2737
    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    goto :goto_2

    .line 2731
    :pswitch_2a
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    goto :goto_2

    .line 2724
    :pswitch_2b
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    if-ne v6, v0, :cond_2

    .line 2726
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    goto :goto_2

    .line 2765
    :pswitch_2c
    iget v6, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    :catch_4
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2993
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2994
    invoke-virtual {p0}, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 3044
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    .line 2171
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2176
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    .line 2181
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 2186
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    .line 2191
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    .line 2196
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2201
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    .line 2206
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    .line 2211
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    .line 2216
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 2221
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    .line 2226
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    const/4 v1, 0x0

    .line 2231
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    const/4 v2, 0x0

    .line 2236
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    .line 2241
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    .line 2246
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    .line 2251
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    .line 2256
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    .line 2261
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    .line 2266
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    .line 2271
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 2276
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    .line 2281
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    .line 2286
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2291
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 2296
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    const/4 v3, 0x0

    .line 2301
    iput-object v3, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 2317
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->notify:F

    .line 2323
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 2335
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    .line 2347
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    .line 2360
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    .line 2373
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    .line 2379
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 2385
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->write:I

    .line 2391
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->read:I

    .line 2397
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2402
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 2407
    iput v0, p0, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    .line 2413
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    .line 2419
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    .line 2421
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    .line 2430
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    .line 2439
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    const/4 v0, 0x1

    .line 2442
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 2443
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 2445
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    .line 2446
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    .line 2447
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    .line 2448
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->search:Z

    .line 2450
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 2451
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 2452
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 2453
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 2454
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 2455
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 2456
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 2462
    new-instance p1, Lo/removeSubscription;

    invoke-direct {p1}, Lo/removeSubscription;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 5

    const/4 v0, 0x0

    .line 2998
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    const/4 v1, 0x1

    .line 2999
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 3000
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 3001
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    if-eqz v2, :cond_0

    .line 3002
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 3003
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    .line 3005
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v2, :cond_1

    .line 3006
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 3007
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    .line 3009
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v4, :cond_3

    .line 3010
    :cond_2
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 3014
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v2, :cond_3

    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    if-ne v2, v1, :cond_3

    .line 3015
    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3016
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    .line 3019
    :cond_3
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v4, :cond_5

    .line 3020
    :cond_4
    iput-boolean v0, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 3024
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    if-ne v0, v1, :cond_5

    .line 3025
    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3026
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    .line 3029
    :cond_5
    iget v0, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    if-eq v0, v4, :cond_8

    .line 3030
    :cond_6
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    .line 3031
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    .line 3032
    iput-boolean v1, p0, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    .line 3033
    iget-object v0, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    instance-of v0, v0, Lo/getMediaItem;

    if-nez v0, :cond_7

    .line 3034
    new-instance v0, Lo/getMediaItem;

    invoke-direct {v0}, Lo/getMediaItem;-><init>()V

    iput-object v0, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 3036
    :cond_7
    iget-object v0, p0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    check-cast v0, Lo/getMediaItem;

    iget v1, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    invoke-virtual {v0, v1}, Lo/getMediaItem;->onRelationshipValidationResult(I)V

    :cond_8
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 6

    .line 3053
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3054
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3056
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 p1, -0x1

    .line 3058
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 3059
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 3060
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 3061
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 3063
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 3064
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 3065
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 3066
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 3067
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 3069
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->setCallbacksMessenger:I

    .line 3070
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->handleMessage:I

    .line 3071
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->setInternalConnectionCallback:F

    .line 3073
    invoke-virtual {p0}, Lo/onChildrenLoaded$onPostMessage;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 3077
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-eq v2, p1, :cond_1

    .line 3078
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 3080
    :cond_1
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-eq v2, p1, :cond_2

    .line 3081
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    goto :goto_1

    .line 3084
    :cond_2
    :goto_2
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-eq v2, p1, :cond_3

    .line 3085
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    const/4 v3, 0x1

    .line 3088
    :cond_3
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-eq v2, p1, :cond_4

    .line 3089
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    const/4 v3, 0x1

    .line 3092
    :cond_4
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    if-eq v2, p1, :cond_5

    .line 3093
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 3095
    :cond_5
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    if-eq v2, p1, :cond_6

    .line 3096
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    .line 3099
    iget v3, p0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    sub-float v3, v2, v3

    iput v3, p0, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 3103
    :cond_7
    iget-boolean v3, p0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    if-ne v3, v4, :cond_10

    .line 3104
    iget v3, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_8

    sub-float/2addr v2, v3

    .line 3105
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->setInternalConnectionCallback:F

    .line 3106
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->setCallbacksMessenger:I

    .line 3107
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->handleMessage:I

    goto :goto_3

    .line 3108
    :cond_8
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    if-eq v2, p1, :cond_9

    .line 3109
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->handleMessage:I

    .line 3110
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->setCallbacksMessenger:I

    .line 3111
    iput v4, p0, Lo/onChildrenLoaded$onPostMessage;->setInternalConnectionCallback:F

    goto :goto_3

    .line 3112
    :cond_9
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    if-eq v2, p1, :cond_10

    .line 3113
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->setCallbacksMessenger:I

    .line 3114
    iput p1, p0, Lo/onChildrenLoaded$onPostMessage;->handleMessage:I

    .line 3115
    iput v4, p0, Lo/onChildrenLoaded$onPostMessage;->setInternalConnectionCallback:F

    goto :goto_3

    .line 3119
    :cond_a
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-eq v2, p1, :cond_b

    .line 3120
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 3122
    :cond_b
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-eq v2, p1, :cond_c

    .line 3123
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 3125
    :cond_c
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-eq v2, p1, :cond_d

    .line 3126
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 3128
    :cond_d
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-eq v2, p1, :cond_e

    .line 3129
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 3131
    :cond_e
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    if-eq v2, p1, :cond_f

    .line 3132
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 3134
    :cond_f
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    if-eq v2, p1, :cond_10

    .line 3135
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 3139
    :cond_10
    :goto_3
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-ne v2, p1, :cond_14

    .line 3141
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    if-eq v2, p1, :cond_11

    .line 3142
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 3143
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3144
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 3146
    :cond_11
    iget v2, p0, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    if-eq v2, p1, :cond_12

    .line 3147
    iput v2, p0, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 3148
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3149
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3152
    :cond_12
    :goto_4
    iget v1, p0, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    if-eq v1, p1, :cond_13

    .line 3153
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 3154
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3155
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    .line 3157
    :cond_13
    iget v1, p0, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    if-eq v1, p1, :cond_14

    .line 3158
    iput v1, p0, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 3159
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3160
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    return-void
.end method
