.class public final Lo/ι;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private INotificationSideChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private IPostMessageService:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final asBinder:Z

.field private final asInterface:Z

.field private cancelAll:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Z

.field private extraCommand:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Z

.field private mayLaunchUrl:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final newSession:Z

.field final onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/enableFacebookDeferredApplinks;

.field private final onPostMessage:Landroid/content/ContentResolver;

.field private final onRelationshipValidationResult:Lo/isTrackingStopped;

.field private final onTransact:Z

.field private postMessage:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private requestPostMessageChannel:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private updateVisuals:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private validateRelationship:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final warmup:Lo/handleDeepLinkCallback;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lo/isLayoutRtl$onMessageChannelReady;Lo/enableFacebookDeferredApplinks;ZZLo/isTrackingStopped;ZZZZLo/handleDeepLinkCallback;ZZ)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/ι;->onPostMessage:Landroid/content/ContentResolver;

    .line 128
    iput-object p2, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 129
    iput-object p3, p0, Lo/ι;->onNavigationEvent:Lo/enableFacebookDeferredApplinks;

    .line 130
    iput-boolean p4, p0, Lo/ι;->extraCallback:Z

    .line 131
    iput-boolean p5, p0, Lo/ι;->asBinder:Z

    .line 132
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/ι;->INotificationSideChannel:Ljava/util/Map;

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/ι;->cancelAll:Ljava/util/Map;

    .line 135
    iput-object p6, p0, Lo/ι;->onRelationshipValidationResult:Lo/isTrackingStopped;

    .line 136
    iput-boolean p7, p0, Lo/ι;->asInterface:Z

    .line 137
    iput-boolean p8, p0, Lo/ι;->onMessageChannelReady:Z

    .line 138
    iput-boolean p9, p0, Lo/ι;->ICustomTabsCallback$Stub:Z

    .line 139
    iput-boolean p10, p0, Lo/ι;->onTransact:Z

    .line 140
    iput-object p11, p0, Lo/ι;->warmup:Lo/handleDeepLinkCallback;

    .line 141
    iput-boolean p12, p0, Lo/ι;->getInterfaceDescriptor:Z

    .line 142
    iput-boolean p13, p0, Lo/ι;->newSession:Z

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback()Lo/setDeviceTrackingDisabled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 466
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 470
    iget-object v0, p0, Lo/ι;->extraCommand:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_1

    .line 471
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 475
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    iget-object v1, p0, Lo/ι;->onNavigationEvent:Lo/enableFacebookDeferredApplinks;

    .line 6313
    new-instance v2, Lo/setIsUpdate;

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->extraCallback:Lo/getTranslateY;

    invoke-direct {v2, v3, v0, v1}, Lo/setIsUpdate;-><init>(Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/enableFacebookDeferredApplinks;)V

    .line 476
    invoke-direct {p0, v2}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 7171
    new-instance v4, Lo/onValidateInApp;

    invoke-direct {v4, v0}, Lo/onValidateInApp;-><init>(Lo/setDeviceTrackingDisabled;)V

    .line 479
    iput-object v4, p0, Lo/ι;->extraCommand:Lo/setDeviceTrackingDisabled;

    .line 481
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    iget-boolean v1, p0, Lo/ι;->extraCallback:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lo/ι;->asInterface:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lo/ι;->warmup:Lo/handleDeepLinkCallback;

    .line 7336
    new-instance v7, Lo/setConsumeAFDeepLinks;

    iget-object v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 7337
    invoke-interface {v1}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/setConsumeAFDeepLinks;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;ZLo/handleDeepLinkCallback;)V

    .line 482
    iput-object v7, p0, Lo/ι;->extraCommand:Lo/setDeviceTrackingDisabled;

    .line 486
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 490
    :cond_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 493
    iget-object v0, p0, Lo/ι;->extraCommand:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;[",
            "Lo/setHost<",
            "Lo/getCardBackgroundColor;",
            ">;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    .line 34171
    new-instance v3, Lo/onValidateInApp;

    invoke-direct {v3, p1}, Lo/onValidateInApp;-><init>(Lo/setDeviceTrackingDisabled;)V

    .line 838
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    iget-object v5, p0, Lo/ι;->warmup:Lo/handleDeepLinkCallback;

    .line 34336
    new-instance v6, Lo/setConsumeAFDeepLinks;

    iget-object v0, p1, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 34337
    invoke-interface {v0}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/setConsumeAFDeepLinks;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;ZLo/handleDeepLinkCallback;)V

    .line 841
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 34354
    new-instance v0, Lo/getHostName;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 34356
    invoke-interface {p1}, Lo/urlString;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1, v6}, Lo/getHostName;-><init>(Ljava/util/concurrent/Executor;Lo/setDeviceTrackingDisabled;)V

    .line 35289
    new-instance v10, Lo/setMinTimeBetweenSessions;

    invoke-direct {v10, p2}, Lo/setMinTimeBetweenSessions;-><init>([Lo/setHost;)V

    .line 34851
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    iget-object v12, p0, Lo/ι;->warmup:Lo/handleDeepLinkCallback;

    .line 35336
    new-instance p2, Lo/setConsumeAFDeepLinks;

    iget-object v1, p1, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 35337
    invoke-interface {v1}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v9, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    const/4 v11, 0x1

    move-object v7, p2

    invoke-direct/range {v7 .. v12}, Lo/setConsumeAFDeepLinks;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;ZLo/handleDeepLinkCallback;)V

    .line 36191
    new-instance p1, Lo/setCustomerIdAndTrack;

    invoke-direct {p1, p2, v0}, Lo/setCustomerIdAndTrack;-><init>(Lo/setDeviceTrackingDisabled;Lo/setDeviceTrackingDisabled;)V

    return-object p1
.end method

.method private declared-synchronized ICustomTabsCallback$Stub()Lo/setDeviceTrackingDisabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 528
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 532
    iget-object v0, p0, Lo/ι;->ICustomTabsService:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 533
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 537
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 8293
    new-instance v1, Lo/setCurrencyCode;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 8294
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    invoke-direct {v1, v2, v0}, Lo/setCurrencyCode;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    .line 541
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lo/ι;->onRelationshipValidationResult:Lo/isTrackingStopped;

    .line 8350
    new-instance v2, Lo/getAttributionId;

    invoke-direct {v2, v0, v1}, Lo/getAttributionId;-><init>(Lo/setDeviceTrackingDisabled;Lo/isTrackingStopped;)V

    .line 544
    iput-object v2, p0, Lo/ι;->ICustomTabsService:Lo/setDeviceTrackingDisabled;

    .line 546
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 550
    :cond_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 553
    iget-object v0, p0, Lo/ι;->ICustomTabsService:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ICustomTabsService()Lo/setDeviceTrackingDisabled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lo/ι;->IPostMessageService:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 15303
    new-instance v1, Lo/setPluginDeepLinkData;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 15304
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->onMessageChannelReady:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3, v0}, Lo/setPluginDeepLinkData;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setHost;

    const/4 v2, 0x0

    .line 15718
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 16283
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 16284
    invoke-interface {v5}, Lo/urlString;->asInterface()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 16732
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 16734
    invoke-direct {p0, v1, v0}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 16746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 16749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 16751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 16752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 670
    iput-object v0, p0, Lo/ι;->IPostMessageService:Lo/setDeviceTrackingDisabled;

    .line 672
    :cond_0
    iget-object v0, p0, Lo/ι;->IPostMessageService:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized asBinder()Lo/setDeviceTrackingDisabled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lo/ι;->ICustomTabsService$Stub:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 12273
    new-instance v1, Lo/setExtension;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 12274
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, v0}, Lo/setExtension;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lo/setHost;

    const/4 v2, 0x0

    .line 631
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 12278
    new-instance v4, Lo/setAppId;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 12279
    invoke-interface {v5}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lo/setAppId;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    const/4 v2, 0x1

    .line 632
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 12283
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 12284
    invoke-interface {v5}, Lo/urlString;->asInterface()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 12732
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 12734
    invoke-direct {p0, v1, v0}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 12746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 12749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 12751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 12752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 635
    iput-object v0, p0, Lo/ι;->ICustomTabsService$Stub:Lo/setDeviceTrackingDisabled;

    .line 638
    :cond_0
    iget-object v0, p0, Lo/ι;->ICustomTabsService$Stub:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized asInterface()Lo/setDeviceTrackingDisabled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, p0, Lo/ι;->updateVisuals:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 9293
    new-instance v1, Lo/setCurrencyCode;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 9294
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    invoke-direct {v1, v2, v0}, Lo/setCurrencyCode;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setHost;

    const/4 v2, 0x0

    .line 9718
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 10283
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 10284
    invoke-interface {v5}, Lo/urlString;->asInterface()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 10732
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 10734
    invoke-direct {p0, v1, v0}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 10746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 10749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 10751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 10752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 601
    iput-object v0, p0, Lo/ι;->updateVisuals:Lo/setDeviceTrackingDisabled;

    .line 603
    :cond_0
    iget-object v0, p0, Lo/ι;->updateVisuals:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized extraCallback()Lo/setDeviceTrackingDisabled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 390
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 393
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 394
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 398
    invoke-direct {p0}, Lo/ι;->ICustomTabsCallback()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 3746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 3751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 3752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 398
    iput-object v0, p0, Lo/ι;->ICustomTabsCallback$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    .line 399
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 403
    :cond_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 406
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    .line 766
    sget-boolean v0, Lo/ListenableWorker;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/ι;->asBinder:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/ListenableWorker;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    if-nez v0, :cond_1

    .line 768
    :cond_0
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 21361
    new-instance v1, Lo/setLogLevel;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 21362
    invoke-interface {v2}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    invoke-direct {v1, v2, v0, p1}, Lo/setLogLevel;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;)V

    move-object p1, v1

    .line 770
    :cond_1
    iget-boolean v0, p0, Lo/ι;->onTransact:Z

    if-eqz v0, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lo/ι;->onMessageChannelReady(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object p1

    .line 773
    :cond_2
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 22264
    new-instance v7, Lo/setCollectIMEI;

    iget-object v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v7, v1, v0, p1}, Lo/setCollectIMEI;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 775
    iget-boolean p1, p0, Lo/ι;->newSession:Z

    if-eqz p1, :cond_3

    .line 776
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 23253
    new-instance v0, Lo/setCollectAndroidID;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v3, p1, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    iget-object v4, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    iget-object v5, p1, Lo/isLayoutRtl$onMessageChannelReady;->getInterfaceDescriptor:Lo/isReady;

    iget-object v6, p1, Lo/isLayoutRtl$onMessageChannelReady;->warmup:Lo/isReady;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/setCollectAndroidID;-><init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;Lo/setDeviceTrackingDisabled;)V

    .line 778
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 24236
    new-instance v1, Lo/setCollectOaid;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    iget-boolean p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->mayLaunchUrl:Z

    invoke-direct {v1, v2, p1, v0}, Lo/setCollectOaid;-><init>(Lo/endConnection;ZLo/setDeviceTrackingDisabled;)V

    return-object v1

    .line 780
    :cond_3
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 25236
    new-instance v0, Lo/setCollectOaid;

    iget-object v1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    iget-boolean p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->mayLaunchUrl:Z

    invoke-direct {v0, v1, p1, v7}, Lo/setCollectOaid;-><init>(Lo/endConnection;ZLo/setDeviceTrackingDisabled;)V

    return-object v0
.end method

.method private declared-synchronized newSession()Lo/setDeviceTrackingDisabled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Lo/ι;->validateRelationship:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 17268
    new-instance v1, Lo/setOneLinkCustomDomain;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 17269
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    invoke-direct {v1, v2, v3, v0}, Lo/setOneLinkCustomDomain;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/res/AssetManager;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setHost;

    const/4 v2, 0x0

    .line 17718
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 18283
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 18284
    invoke-interface {v5}, Lo/urlString;->asInterface()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 18732
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 18734
    invoke-direct {p0, v1, v0}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 18746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 18749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 18751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 18752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 685
    iput-object v0, p0, Lo/ι;->validateRelationship:Lo/setDeviceTrackingDisabled;

    .line 687
    :cond_0
    iget-object v0, p0, Lo/ι;->validateRelationship:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static onMessageChannelReady(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 894
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private onMessageChannelReady(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    .line 785
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 788
    iget-boolean v0, p0, Lo/ι;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 26226
    new-instance v7, Lo/reportTrackSession;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    iget-object v4, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v5, v0, Lo/isLayoutRtl$onMessageChannelReady;->extraCallback:Lo/getTranslateY;

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/reportTrackSession;-><init>(Lo/getInstallReferrer;Lo/endConnection;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/setDeviceTrackingDisabled;)V

    .line 791
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 27220
    new-instance v0, Lo/sendDeepLinkData;

    iget-object v1, p1, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v0, v1, v2, p1, v7}, Lo/sendDeepLinkData;-><init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 28220
    new-instance v1, Lo/sendDeepLinkData;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v1, v2, v3, v0, p1}, Lo/sendDeepLinkData;-><init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    move-object v0, v1

    .line 795
    :goto_0
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 29215
    new-instance v1, Lo/setOutOfStore;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v3, p1, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v1, v2, v3, p1, v0}, Lo/setOutOfStore;-><init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 796
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v1
.end method

.method private declared-synchronized onPostMessage()Lo/setDeviceTrackingDisabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 414
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 418
    iget-object v0, p0, Lo/ι;->requestPostMessageChannel:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 426
    invoke-direct {p0}, Lo/ι;->ICustomTabsCallback()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    iget-object v1, p0, Lo/ι;->onRelationshipValidationResult:Lo/isTrackingStopped;

    .line 4350
    new-instance v2, Lo/getAttributionId;

    invoke-direct {v2, v0, v1}, Lo/getAttributionId;-><init>(Lo/setDeviceTrackingDisabled;Lo/isTrackingStopped;)V

    .line 425
    iput-object v2, p0, Lo/ι;->requestPostMessageChannel:Lo/setDeviceTrackingDisabled;

    .line 427
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 431
    :cond_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 434
    iget-object v0, p0, Lo/ι;->requestPostMessageChannel:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 30186
    new-instance v1, Lo/enableLocationCollection;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->asInterface:Lo/getReferrerClickTimestampSeconds;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v1, v2, v0, p1}, Lo/enableLocationCollection;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 812
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 31181
    new-instance v0, Lo/setOaidData;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v0, p1, v1}, Lo/setOaidData;-><init>(Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 814
    iget-object p1, p0, Lo/ι;->onRelationshipValidationResult:Lo/isTrackingStopped;

    .line 31350
    new-instance v1, Lo/getAttributionId;

    invoke-direct {v1, v0, p1}, Lo/getAttributionId;-><init>(Lo/setDeviceTrackingDisabled;Lo/isTrackingStopped;)V

    .line 817
    iget-boolean p1, p0, Lo/ι;->getInterfaceDescriptor:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/ι;->newSession:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 33176
    new-instance v0, Lo/updateServerUninstallToken;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->asInterface:Lo/getReferrerClickTimestampSeconds;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v0, v2, p1, v1}, Lo/updateServerUninstallToken;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    return-object v0

    .line 818
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 32176
    new-instance v0, Lo/updateServerUninstallToken;

    iget-object v2, p1, Lo/isLayoutRtl$onMessageChannelReady;->asInterface:Lo/getReferrerClickTimestampSeconds;

    iget-object p1, p1, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v0, v2, p1, v1}, Lo/updateServerUninstallToken;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 820
    iget-object p1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {p1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setPhoneNumber;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized onRelationshipValidationResult()Lo/setDeviceTrackingDisabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 609
    :try_start_0
    iget-object v0, p0, Lo/ι;->ICustomTabsService$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 11308
    new-instance v1, Lo/trackLocation;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 11309
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v0}, Lo/trackLocation;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 613
    invoke-direct {p0, v1}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    iput-object v0, p0, Lo/ι;->ICustomTabsService$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    .line 615
    :cond_0
    iget-object v0, p0, Lo/ι;->ICustomTabsService$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onTransact()Lo/setDeviceTrackingDisabled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lo/ι;->IPostMessageService$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 13298
    new-instance v1, Lo/registerValidatorListener;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 13299
    invoke-interface {v2}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, v0}, Lo/registerValidatorListener;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setHost;

    const/4 v2, 0x0

    .line 13718
    iget-object v3, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 14283
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 14284
    invoke-interface {v5}, Lo/urlString;->asInterface()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    iget-object v3, v3, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 14732
    invoke-direct {p0, v1}, Lo/ι;->extraCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 14734
    invoke-direct {p0, v1, v0}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;[Lo/setHost;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 14746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 14749
    iget-object v1, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 14751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 14752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 653
    iput-object v0, p0, Lo/ι;->IPostMessageService$Stub$Proxy:Lo/setDeviceTrackingDisabled;

    .line 655
    :cond_0
    iget-object v0, p0, Lo/ι;->IPostMessageService$Stub$Proxy:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized warmup()Lo/setDeviceTrackingDisabled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lo/ι;->IPostMessageService$Stub:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 19195
    new-instance v1, Lo/setAppInviteOneLink;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    invoke-direct {v1, v0}, Lo/setAppInviteOneLink;-><init>(Lo/CustomVersionedParcelable;)V

    .line 697
    sget-boolean v0, Lo/ListenableWorker;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/ι;->asBinder:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/ListenableWorker;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    if-nez v0, :cond_1

    .line 699
    :cond_0
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 19361
    new-instance v2, Lo/setLogLevel;

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 19362
    invoke-interface {v3}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    invoke-direct {v2, v3, v0, v1}, Lo/setLogLevel;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;)V

    move-object v1, v2

    .line 20171
    :cond_1
    new-instance v5, Lo/onValidateInApp;

    invoke-direct {v5, v1}, Lo/onValidateInApp;-><init>(Lo/setDeviceTrackingDisabled;)V

    .line 702
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    const/4 v6, 0x1

    iget-object v7, p0, Lo/ι;->warmup:Lo/handleDeepLinkCallback;

    .line 20336
    new-instance v1, Lo/setConsumeAFDeepLinks;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 20337
    invoke-interface {v2}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/setConsumeAFDeepLinks;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;ZLo/handleDeepLinkCallback;)V

    .line 20746
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 20749
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;

    move-result-object v0

    .line 20751
    invoke-direct {p0, v0}, Lo/ι;->onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 20752
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 704
    iput-object v0, p0, Lo/ι;->IPostMessageService$Stub:Lo/setDeviceTrackingDisabled;

    .line 706
    :cond_2
    iget-object v0, p0, Lo/ι;->IPostMessageService$Stub:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 858
    :try_start_0
    iget-object v0, p0, Lo/ι;->INotificationSideChannel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 36328
    new-instance v1, Lo/sendAdRevenue;

    iget-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->newSession:Lo/setPosition;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 36329
    invoke-interface {v0}, Lo/urlString;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lo/sendAdRevenue;-><init>(Lo/setDeviceTrackingDisabled;Lo/setPosition;Ljava/util/concurrent/Executor;)V

    .line 861
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 37322
    new-instance v2, Lo/trackEvent;

    iget-object v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->asInterface:Lo/getReferrerClickTimestampSeconds;

    iget-object v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    invoke-direct {v2, v3, v0, v1}, Lo/trackEvent;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    .line 863
    iget-object v0, p0, Lo/ι;->INotificationSideChannel:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_0
    iget-object v0, p0, Lo/ι;->INotificationSideChannel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onMessageChannelReady()Lo/setDeviceTrackingDisabled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 446
    iget-object v0, p0, Lo/ι;->mayLaunchUrl:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 447
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 453
    invoke-direct {p0}, Lo/ι;->onPostMessage()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 5345
    new-instance v1, Lo/getAppsFlyerUID;

    invoke-direct {v1, v0}, Lo/getAppsFlyerUID;-><init>(Lo/setDeviceTrackingDisabled;)V

    .line 452
    iput-object v1, p0, Lo/ι;->mayLaunchUrl:Lo/setDeviceTrackingDisabled;

    .line 454
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 458
    :cond_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 461
    iget-object v0, p0, Lo/ι;->mayLaunchUrl:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final onMessageChannelReady(Lo/getHostPrefix;)Lo/setDeviceTrackingDisabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getHostPrefix;",
            ")",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p1, :cond_3

    .line 2150
    iget-object v0, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    const-string v1, "Uri is null."

    if-eqz v0, :cond_2

    .line 3154
    iget p1, p1, Lo/getHostPrefix;->onMessageChannelReady:I

    if-eqz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 374
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported uri scheme! Uri is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Lo/ι;->onMessageChannelReady(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :pswitch_0
    invoke-direct {p0}, Lo/ι;->onTransact()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 372
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lo/ι;->warmup()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 368
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lo/ι;->ICustomTabsService()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 366
    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lo/ι;->newSession()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 361
    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lo/ι;->onPostMessage:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/setScaleY;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    invoke-direct {p0}, Lo/ι;->onRelationshipValidationResult()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 364
    :cond_0
    :try_start_5
    invoke-direct {p0}, Lo/ι;->asBinder()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 359
    :pswitch_5
    :try_start_6
    invoke-direct {p0}, Lo/ι;->asInterface()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 357
    :pswitch_6
    :try_start_7
    invoke-direct {p0}, Lo/ι;->onRelationshipValidationResult()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 355
    :cond_1
    :try_start_8
    invoke-direct {p0}, Lo/ι;->extraCallback()Lo/setDeviceTrackingDisabled;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 2231
    :cond_2
    :try_start_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1215
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception p1

    .line 378
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 379
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final declared-synchronized onNavigationEvent()Lo/setDeviceTrackingDisabled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setDeviceTrackingDisabled<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 501
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 505
    iget-object v0, p0, Lo/ι;->postMessage:Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 512
    invoke-direct {p0}, Lo/ι;->ICustomTabsCallback$Stub()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    .line 7345
    new-instance v1, Lo/getAppsFlyerUID;

    invoke-direct {v1, v0}, Lo/getAppsFlyerUID;-><init>(Lo/setDeviceTrackingDisabled;)V

    .line 511
    iput-object v1, p0, Lo/ι;->postMessage:Lo/setDeviceTrackingDisabled;

    .line 513
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 517
    :cond_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 520
    iget-object v0, p0, Lo/ι;->postMessage:Lo/setDeviceTrackingDisabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onNavigationEvent(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 882
    :try_start_0
    iget-object v0, p0, Lo/ι;->cancelAll:Ljava/util/Map;

    .line 883
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDeviceTrackingDisabled;

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lo/ι;->ICustomTabsCallback:Lo/isLayoutRtl$onMessageChannelReady;

    .line 37367
    new-instance v1, Lo/setCustomerUserId;

    iget v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    iget v3, v0, Lo/isLayoutRtl$onMessageChannelReady;->updateVisuals:I

    iget-boolean v0, v0, Lo/isLayoutRtl$onMessageChannelReady;->extraCommand:Z

    invoke-direct {v1, p1, v2, v3, v0}, Lo/setCustomerUserId;-><init>(Lo/setDeviceTrackingDisabled;IIZ)V

    .line 887
    iget-object v0, p0, Lo/ι;->cancelAll:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 890
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
