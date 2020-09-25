.class public final Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public AudioAttributesCompatParcelizer:I

.field public AudioAttributesImplApi21Parcelizer:I

.field public AudioAttributesImplBaseParcelizer:F

.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:I

.field public ICustomTabsService$Stub:I

.field public ICustomTabsService$Stub$Proxy:I

.field public INotificationSideChannel:I

.field public INotificationSideChannel$Default:I

.field public INotificationSideChannel$Stub:I

.field public INotificationSideChannel$Stub$Proxy:I

.field public IPostMessageService:F

.field public IPostMessageService$Stub:F

.field public IPostMessageService$Stub$Proxy:I

.field public IconCompatParcelizer:I

.field public MediaBrowserCompat:F

.field public MediaBrowserCompat$CallbackHandler:F

.field public MediaBrowserCompat$ConnectionCallback:F

.field public MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

.field private MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

.field public MediaBrowserCompat$CustomActionCallback:Ljava/lang/String;

.field private MediaBrowserCompat$CustomActionResultReceiver:I

.field private MediaBrowserCompat$ItemCallback:I

.field public RemoteActionCompatParcelizer:I

.field public asBinder:I

.field public asInterface:F

.field public cancel:I

.field public cancelAll:I

.field public connect:I

.field public disconnect:I

.field extraCallback:Z

.field public extraCommand:I

.field public getDefaultImpl:I

.field public getExtras:F

.field public getInterfaceDescriptor:I

.field public getItem:F

.field public getNotifyChildrenChangedOptions:F

.field public getRoot:Z

.field public getServiceComponent:I

.field public getSessionToken:F

.field public handleMessage:F

.field public isConnected:F

.field public mayLaunchUrl:I

.field public newSession:I

.field public notify:F

.field public onConnected:Z

.field public onConnectionFailed:I

.field public onConnectionSuspended:I

.field private onError:Z

.field private onItemLoaded:I

.field onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I

.field private onProgressUpdate:I

.field private onReceiveResult:I

.field public onRelationshipValidationResult:I

.field private onResult:Z

.field public onTransact:I

.field public postMessage:I

.field public read:I

.field public requestPostMessageChannel:I

.field public search:F

.field public sendCustomAction:F

.field public setCallbacksMessenger:F

.field public setDefaultImpl:I

.field public setInternalConnectionCallback:F

.field public subscribe:F

.field public unsubscribe:F

.field public updateVisuals:I

.field public validateRelationship:Ljava/lang/String;

.field public warmup:I

.field public write:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback:Z

    const/4 v1, -0x1

    .line 364
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    .line 365
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 366
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    .line 368
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 369
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 370
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 371
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 372
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 373
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 374
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 375
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 376
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 378
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 379
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 380
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 381
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 383
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 384
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    const/4 v2, 0x0

    .line 385
    iput-object v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    .line 387
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 388
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    const/4 v2, 0x0

    .line 389
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    .line 391
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    .line 392
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    .line 394
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    .line 395
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    .line 396
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    .line 397
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    .line 398
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    .line 399
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    .line 400
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 401
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 402
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    .line 403
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    .line 404
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    .line 405
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    .line 406
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    .line 407
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    .line 408
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    .line 409
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    .line 410
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    .line 411
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 412
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 413
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    .line 414
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    .line 415
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    .line 416
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    .line 417
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    .line 418
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    .line 419
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 420
    iput v4, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    .line 421
    iput v4, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 422
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    .line 423
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    .line 424
    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    .line 425
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    .line 426
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onResult:Z

    .line 427
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    .line 428
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onProgressUpdate:I

    .line 429
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionResultReceiver:I

    .line 430
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ItemCallback:I

    .line 431
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onItemLoaded:I

    .line 432
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onReceiveResult:I

    .line 433
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    .line 434
    iput v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    .line 435
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    .line 436
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    .line 437
    iput v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;
    .locals 3

    .line 442
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>()V

    .line 443
    iget-boolean v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback:Z

    iput-boolean v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback:Z

    .line 444
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    .line 445
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    .line 446
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    .line 447
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 448
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    .line 449
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 450
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 451
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 452
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 453
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 454
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 455
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 456
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 457
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 458
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 459
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 460
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 461
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 462
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 463
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    .line 464
    iget-object v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    iput-object v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    .line 465
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    .line 466
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    .line 467
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 468
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 469
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 470
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 471
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 472
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    .line 473
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    .line 474
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    .line 475
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    .line 476
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    .line 477
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    .line 478
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 479
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 480
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->write:I

    .line 481
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->read:I

    .line 482
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IconCompatParcelizer:I

    .line 483
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesCompatParcelizer:I

    .line 484
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    .line 485
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    .line 486
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    .line 487
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    .line 488
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    .line 489
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    .line 490
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 491
    iget-boolean v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    iput-boolean v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    .line 492
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    .line 493
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    .line 494
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    .line 495
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    .line 496
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    .line 497
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    .line 498
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    .line 499
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 500
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    .line 501
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    .line 502
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    .line 503
    iget-boolean v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    iput-boolean v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    .line 504
    iget-boolean v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onResult:Z

    iput-boolean v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onResult:Z

    .line 505
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    .line 506
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onProgressUpdate:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onProgressUpdate:I

    .line 507
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionResultReceiver:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionResultReceiver:I

    .line 508
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ItemCallback:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ItemCallback:I

    .line 509
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onItemLoaded:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onItemLoaded:I

    .line 510
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onReceiveResult:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onReceiveResult:I

    .line 511
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    .line 512
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    .line 513
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    .line 514
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    .line 515
    iget-object v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    if-eqz v1, :cond_0

    .line 516
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    .line 518
    :cond_0
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 519
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    .line 520
    iget v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    .line 521
    iget-boolean v1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    iput-boolean v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnected:Z

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback()Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method final extraCallback(ILo/setSubscription$ICustomTabsCallback;)V
    .locals 0

    .line 536
    invoke-virtual {p0, p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady(ILo/onChildrenLoaded$onPostMessage;)V

    .line 537
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 538
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->isConnected:F

    .line 539
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onProgressUpdate:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->sendCustomAction:F

    .line 540
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionCallback:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->search:F

    .line 541
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onError:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->unsubscribe:F

    .line 542
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onResult:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getItem:F

    .line 543
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionResultReceiver:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->subscribe:F

    .line 544
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 545
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setCallbacksMessenger:F

    .line 546
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onReceiveResult:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->handleMessage:F

    const/4 p1, 0x0

    .line 547
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback:F

    .line 548
    iget p1, p2, Lo/setSubscription$ICustomTabsCallback;->onConnectionFailed:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getExtras:F

    .line 549
    iget-boolean p1, p2, Lo/setSubscription$ICustomTabsCallback;->onConnected:Z

    iput-boolean p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getRoot:Z

    return-void
.end method

.method final onMessageChannelReady(ILo/onChildrenLoaded$onPostMessage;)V
    .locals 1

    .line 553
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady:I

    .line 554
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    .line 555
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    .line 556
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    .line 557
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 558
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    .line 559
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    .line 560
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    .line 561
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    .line 562
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    .line 563
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    .line 564
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    .line 565
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    .line 566
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    .line 568
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 569
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    .line 570
    iget-object p1, p2, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    iput-object p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    .line 572
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 573
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    .line 574
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    .line 576
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    .line 577
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    .line 578
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    .line 579
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    .line 580
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    .line 581
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 582
    iget p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    .line 583
    iget p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    .line 584
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    .line 585
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    .line 586
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    .line 587
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    .line 588
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    .line 589
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->notify:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    .line 590
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    .line 591
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    .line 592
    iget-boolean p1, p2, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    iput-boolean p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    .line 593
    iget-boolean p1, p2, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    iput-boolean p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onResult:Z

    .line 594
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    .line 595
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onProgressUpdate:I

    .line 596
    iget-boolean p1, p2, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    iput-boolean p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    .line 597
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->read:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionResultReceiver:I

    .line 598
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ItemCallback:I

    .line 599
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onItemLoaded:I

    .line 600
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->write:I

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onReceiveResult:I

    .line 601
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    .line 602
    iget p1, p2, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    .line 604
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 606
    invoke-virtual {p2}, Lo/onChildrenLoaded$onPostMessage;->getMarginEnd()I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    .line 607
    invoke-virtual {p2}, Lo/onChildrenLoaded$onPostMessage;->getMarginStart()I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/onChildrenLoaded$onPostMessage;)V
    .locals 2

    .line 612
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asBinder:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 613
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onTransact:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    .line 614
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onRelationshipValidationResult:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    .line 615
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 617
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    .line 618
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->newSession:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    .line 619
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getInterfaceDescriptor:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    .line 620
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->warmup:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 622
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->postMessage:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    .line 624
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCommand:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    .line 625
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->mayLaunchUrl:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    .line 626
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->requestPostMessageChannel:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    .line 627
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->updateVisuals:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    .line 629
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub$Proxy:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 630
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getDefaultImpl:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 631
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setDefaultImpl:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 632
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Default:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 633
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->disconnect:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub:I

    .line 634
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplApi21Parcelizer:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub:I

    .line 636
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 637
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    .line 639
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    .line 640
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsService$Stub:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    .line 641
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->notify:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    .line 643
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    iput-object v0, p1, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 644
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancel:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    .line 645
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->cancelAll:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    .line 646
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->AudioAttributesImplBaseParcelizer:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 647
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->notify:F

    .line 648
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    .line 649
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->connect:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    .line 650
    iget-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onError:Z

    iput-boolean v0, p1, Lo/onChildrenLoaded$onPostMessage;->connect:Z

    .line 651
    iget-boolean v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onResult:Z

    iput-boolean v0, p1, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplApi21Parcelizer:Z

    .line 652
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    .line 653
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onProgressUpdate:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    .line 654
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CustomActionResultReceiver:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->read:I

    .line 655
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ItemCallback:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    .line 656
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onItemLoaded:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    .line 657
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onReceiveResult:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->write:I

    .line 658
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$CallbackHandler:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 659
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->setInternalConnectionCallback:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    .line 660
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    .line 661
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->asInterface:F

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    .line 662
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onNavigationEvent:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    .line 663
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback$Stub:I

    iput v0, p1, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    .line 664
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 665
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 669
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    invoke-virtual {p1, v0}, Lo/onChildrenLoaded$onPostMessage;->setMarginStart(I)V

    .line 670
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->INotificationSideChannel$Stub:I

    invoke-virtual {p1, v0}, Lo/onChildrenLoaded$onPostMessage;->setMarginEnd(I)V

    .line 673
    :cond_0
    invoke-virtual {p1}, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent()V

    return-void
.end method
