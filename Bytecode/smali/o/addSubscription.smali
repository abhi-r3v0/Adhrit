.class public final Lo/addSubscription;
.super Lo/getCallback;
.source ""


# instance fields
.field ICustomTabsCallback:I

.field MediaBrowserCompat$ConnectionCallback:I

.field MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

.field public MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Z

.field public MediaBrowserCompat$CustomActionCallback:I

.field private MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

.field public MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Z

.field handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

.field public onConnected:Z

.field public onConnectionFailed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/registerCallbackMessenger;",
            ">;"
        }
    .end annotation
.end field

.field public onConnectionSuspended:Z

.field public onError:Z

.field public onMessageChannelReady:Z

.field public onProgressUpdate:I

.field private onReceiveResult:Lo/getOptionsList;

.field public onResult:I

.field public setInternalConnectionCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lo/getCallback;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/addSubscription;->onMessageChannelReady:Z

    .line 47
    new-instance v1, Lo/isPlayable;

    invoke-direct {v1}, Lo/isPlayable;-><init>()V

    iput-object v1, p0, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    .line 56
    iput v0, p0, Lo/addSubscription;->ICustomTabsCallback:I

    .line 57
    iput v0, p0, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    const/4 v1, 0x4

    new-array v2, v1, [Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 59
    iput-object v2, p0, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    new-array v1, v1, [Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 60
    iput-object v1, p0, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    .line 63
    iput-boolean v0, p0, Lo/addSubscription;->setInternalConnectionCallback:Z

    .line 64
    iput-boolean v0, p0, Lo/addSubscription;->onConnected:Z

    .line 65
    iput-boolean v0, p0, Lo/addSubscription;->onConnectionSuspended:Z

    .line 66
    iput v0, p0, Lo/addSubscription;->MediaBrowserCompat$CustomActionCallback:I

    .line 67
    iput v0, p0, Lo/addSubscription;->onProgressUpdate:I

    const/4 v1, 0x7

    .line 69
    iput v1, p0, Lo/addSubscription;->onResult:I

    .line 70
    iput-boolean v0, p0, Lo/addSubscription;->onError:Z

    .line 72
    iput-boolean v0, p0, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Z

    .line 73
    iput-boolean v0, p0, Lo/addSubscription;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Z

    return-void
.end method

.method private IPostMessageService$Stub$Proxy()V
    .locals 3

    .line 613
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Lo/removeSubscription;->extraCallback()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 616
    iget-object v2, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    invoke-virtual {v2}, Lo/removeSubscription;->extraCallback()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extraCallback(Lo/isPlayable;[Z)V
    .locals 8

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 222
    aput-boolean v0, p2, p1

    .line 223
    invoke-virtual {p0}, Lo/removeSubscription;->ICustomTabsService$Stub()V

    .line 224
    iget-object v1, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 226
    iget-object v3, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeSubscription;

    .line 227
    invoke-virtual {v3}, Lo/removeSubscription;->ICustomTabsService$Stub()V

    .line 228
    iget-object v4, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v4, v4, v0

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    .line 1773
    iget v4, v3, Lo/removeSubscription;->getExtras:I

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 1776
    :cond_0
    iget v4, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1821
    :goto_1
    iget v5, v3, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    if-ge v4, v5, :cond_1

    .line 230
    aput-boolean v7, p2, p1

    .line 232
    :cond_1
    iget-object v4, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v4, v4, v7

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v4, v5, :cond_3

    .line 1830
    iget v4, v3, Lo/removeSubscription;->getExtras:I

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    .line 1833
    :cond_2
    iget v4, v3, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1842
    :goto_2
    iget v3, v3, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    if-ge v4, v3, :cond_3

    .line 234
    aput-boolean v7, p2, p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 280
    invoke-super {p0, p1}, Lo/getCallback;->ICustomTabsCallback(I)V

    .line 281
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v2, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    invoke-virtual {v2, p1}, Lo/removeSubscription;->ICustomTabsCallback(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    invoke-virtual {v0}, Lo/isPlayable;->ICustomTabsCallback()V

    .line 151
    iget-object v0, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lo/addSubscription;->onError:Z

    .line 153
    invoke-super {p0}, Lo/getCallback;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final ICustomTabsService$Stub$Proxy()V
    .locals 24

    move-object/from16 v1, p0

    .line 298
    iget v2, v1, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 299
    iget v3, v1, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 2773
    iget v0, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2776
    :cond_0
    iget v0, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 300
    :goto_0
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2830
    iget v0, v1, Lo/removeSubscription;->getExtras:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2833
    :cond_1
    iget v0, v1, Lo/removeSubscription;->INotificationSideChannel:I

    .line 301
    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 302
    iput-boolean v5, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Z

    .line 303
    iput-boolean v5, v1, Lo/addSubscription;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Z

    .line 305
    iget-object v0, v1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v0, :cond_7

    .line 306
    iget-object v0, v1, Lo/addSubscription;->onReceiveResult:Lo/getOptionsList;

    if-nez v0, :cond_2

    .line 307
    new-instance v0, Lo/getOptionsList;

    invoke-direct {v0, v1}, Lo/getOptionsList;-><init>(Lo/removeSubscription;)V

    iput-object v0, v1, Lo/addSubscription;->onReceiveResult:Lo/getOptionsList;

    .line 309
    :cond_2
    iget-object v0, v1, Lo/addSubscription;->onReceiveResult:Lo/getOptionsList;

    .line 3109
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->onRelationshipValidationResult()I

    move-result v8

    iput v8, v0, Lo/getOptionsList;->ICustomTabsCallback:I

    .line 3110
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->asInterface()I

    move-result v8

    iput v8, v0, Lo/getOptionsList;->onNavigationEvent:I

    .line 3773
    iget v8, v1, Lo/removeSubscription;->getExtras:I

    if-ne v8, v4, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    .line 3776
    :cond_3
    iget v8, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 3111
    :goto_2
    iput v8, v0, Lo/getOptionsList;->onPostMessage:I

    .line 3830
    iget v8, v1, Lo/removeSubscription;->getExtras:I

    if-ne v8, v4, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    .line 3833
    :cond_4
    iget v8, v1, Lo/removeSubscription;->INotificationSideChannel:I

    .line 3112
    :goto_3
    iput v8, v0, Lo/getOptionsList;->extraCallback:I

    .line 3113
    iget-object v8, v0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_6

    .line 3115
    iget-object v10, v0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/getOptionsList$ICustomTabsCallback;

    .line 4061
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4118
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 4061
    invoke-virtual {v1, v11}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v11

    iput-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4062
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v11, :cond_5

    .line 4063
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4144
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4063
    iput-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4064
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v11}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v11

    iput v11, v10, Lo/getOptionsList$ICustomTabsCallback;->onMessageChannelReady:I

    .line 4065
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5138
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 4065
    iput-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 4066
    iget-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5163
    iget v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    .line 4066
    iput v11, v10, Lo/getOptionsList$ICustomTabsCallback;->onPostMessage:I

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .line 4068
    iput-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4069
    iput v5, v10, Lo/getOptionsList$ICustomTabsCallback;->onMessageChannelReady:I

    .line 4070
    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    iput-object v11, v10, Lo/getOptionsList$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 4071
    iput v5, v10, Lo/getOptionsList$ICustomTabsCallback;->onPostMessage:I

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 314
    :cond_6
    invoke-virtual {v1, v5}, Lo/removeSubscription;->onMessageChannelReady(I)V

    .line 315
    invoke-virtual {v1, v5}, Lo/removeSubscription;->extraCallback(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->extraCommand()V

    .line 317
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    .line 5967
    iget-object v0, v0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    .line 317
    invoke-virtual {v1, v0}, Lo/removeSubscription;->onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V

    goto :goto_6

    .line 319
    :cond_7
    iput v5, v1, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 320
    iput v5, v1, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 323
    :goto_6
    iget v0, v1, Lo/addSubscription;->onResult:I

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-eqz v0, :cond_e

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_9

    .line 325
    invoke-direct/range {p0 .. p0}, Lo/addSubscription;->IPostMessageService$Stub$Proxy()V

    .line 7131
    :cond_9
    iget v0, v1, Lo/addSubscription;->onResult:I

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_d

    .line 8131
    iget v0, v1, Lo/addSubscription;->onResult:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_b

    const/4 v0, 0x1

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    .line 7631
    iget v0, v1, Lo/addSubscription;->onResult:I

    invoke-virtual {v1, v0}, Lo/removeSubscription;->ICustomTabsCallback(I)V

    .line 7643
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lo/addSubscription;->IPostMessageService$Stub()V

    .line 330
    :cond_d
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    iput-boolean v9, v0, Lo/isPlayable;->onPostMessage:Z

    goto :goto_a

    .line 332
    :cond_e
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    iput-boolean v5, v0, Lo/isPlayable;->onPostMessage:Z

    .line 336
    :goto_a
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v10, v0, v9

    .line 337
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v11, v0, v5

    .line 8718
    iput v5, v1, Lo/addSubscription;->ICustomTabsCallback:I

    .line 8719
    iput v5, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    .line 347
    iget-object v0, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 348
    iget-object v0, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    new-instance v12, Lo/registerCallbackMessenger;

    iget-object v13, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Lo/registerCallbackMessenger;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v5, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    :cond_f
    iget-object v0, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 354
    iget-object v13, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    .line 355
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v14, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v0, v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v14, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v14, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v14, 0x1

    :goto_c
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v12, :cond_41

    .line 357
    iget-boolean v4, v1, Lo/addSubscription;->onError:Z

    if-nez v4, :cond_41

    .line 358
    iget-object v4, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/registerCallbackMessenger;

    iget-boolean v4, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    if-nez v4, :cond_40

    .line 9131
    iget v4, v1, Lo/addSubscription;->onResult:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_12

    const/4 v4, 0x1

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_17

    .line 362
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v4

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v4, v8, :cond_16

    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v4

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v4, v8, :cond_16

    .line 363
    iget-object v4, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/registerCallbackMessenger;

    .line 10099
    iget-object v8, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 10100
    iget-object v4, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    goto :goto_10

    .line 10102
    :cond_13
    iget-object v8, v4, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_15

    .line 10104
    iget-object v5, v4, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeSubscription;

    move/from16 v18, v8

    .line 10105
    iget-boolean v8, v5, Lo/removeSubscription;->unsubscribe:Z

    if-nez v8, :cond_14

    .line 10106
    iget-object v8, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v5}, Lo/registerCallbackMessenger;->onMessageChannelReady(Ljava/util/ArrayList;Lo/removeSubscription;)V

    :cond_14
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v18

    const/4 v5, 0x0

    goto :goto_f

    .line 10109
    :cond_15
    iget-object v5, v4, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 10110
    iget-object v5, v4, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    iget-object v8, v4, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10111
    iget-object v5, v4, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    iget-object v8, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10112
    iget-object v4, v4, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 363
    :goto_10
    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    goto :goto_11

    .line 365
    :cond_16
    iget-object v4, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/registerCallbackMessenger;

    iget-object v4, v4, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    :cond_17
    :goto_11
    const/4 v4, 0x0

    .line 10718
    iput v4, v1, Lo/addSubscription;->ICustomTabsCallback:I

    .line 10719
    iput v4, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    .line 369
    iget-object v4, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_19

    .line 375
    iget-object v8, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/removeSubscription;

    .line 376
    instance-of v9, v8, Lo/getCallback;

    if-eqz v9, :cond_18

    .line 377
    check-cast v8, Lo/getCallback;

    invoke-virtual {v8}, Lo/getCallback;->ICustomTabsService$Stub$Proxy()V

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_19
    move v5, v0

    const/4 v0, 0x0

    const/4 v8, 0x1

    :goto_13
    if-eqz v8, :cond_3f

    move/from16 v18, v5

    const/4 v9, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 386
    :try_start_0
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    invoke-virtual {v0}, Lo/isPlayable;->ICustomTabsCallback()V

    const/4 v9, 0x0

    .line 11718
    iput v9, v1, Lo/addSubscription;->ICustomTabsCallback:I

    .line 11719
    iput v9, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    .line 397
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    invoke-virtual {v1, v0}, Lo/removeSubscription;->onNavigationEvent(Lo/isPlayable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v4, :cond_1a

    .line 399
    :try_start_1
    iget-object v9, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/removeSubscription;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v19, v8

    .line 400
    :try_start_2
    iget-object v8, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    invoke-virtual {v9, v8}, Lo/removeSubscription;->onNavigationEvent(Lo/isPlayable;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v19

    goto :goto_14

    :catch_0
    move-exception v0

    move/from16 v19, v8

    goto/16 :goto_1a

    :cond_1a
    move/from16 v19, v8

    .line 403
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    .line 12180
    invoke-virtual {v1, v0}, Lo/removeSubscription;->extraCallback(Lo/isPlayable;)V

    .line 12181
    iget-object v8, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v8, :cond_20

    move/from16 v20, v8

    .line 12184
    iget-object v8, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/removeSubscription;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v21, v12

    .line 12185
    :try_start_3
    instance-of v12, v8, Lo/addSubscription;

    if-eqz v12, :cond_1e

    .line 12186
    iget-object v12, v8, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/16 v17, 0x0

    aget-object v12, v12, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v22, v3

    .line 12187
    :try_start_4
    iget-object v3, v8, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/16 v16, 0x1

    aget-object v3, v3, v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v23, v2

    .line 12188
    :try_start_5
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v12, v2, :cond_1b

    .line 12189
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v8, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 12191
    :cond_1b
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v2, :cond_1c

    .line 12192
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v8, v2}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    .line 12194
    :cond_1c
    invoke-virtual {v8, v0}, Lo/removeSubscription;->extraCallback(Lo/isPlayable;)V

    .line 12195
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v12, v2, :cond_1d

    .line 12196
    invoke-virtual {v8, v12}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 12198
    :cond_1d
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v2, :cond_1f

    .line 12199
    invoke-virtual {v8, v3}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    goto :goto_16

    :catch_1
    move-exception v0

    move/from16 v23, v2

    goto/16 :goto_1c

    :cond_1e
    move/from16 v23, v2

    move/from16 v22, v3

    .line 12202
    invoke-static {v1, v0, v8}, Lo/sendRequest;->extraCallback(Lo/addSubscription;Lo/isPlayable;Lo/removeSubscription;)V

    .line 12203
    invoke-virtual {v8, v0}, Lo/removeSubscription;->extraCallback(Lo/isPlayable;)V

    :cond_1f
    :goto_16
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v20

    move/from16 v12, v21

    move/from16 v3, v22

    move/from16 v2, v23

    goto :goto_15

    :catch_2
    move-exception v0

    move/from16 v23, v2

    move/from16 v22, v3

    goto/16 :goto_1c

    :cond_20
    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v21, v12

    .line 12207
    iget v2, v1, Lo/addSubscription;->ICustomTabsCallback:I

    if-lez v2, :cond_21

    const/4 v2, 0x0

    .line 12208
    invoke-static {v1, v0, v2}, Lo/MediaBrowserCompat$MediaItem$Flags;->onMessageChannelReady(Lo/addSubscription;Lo/isPlayable;I)V

    .line 12210
    :cond_21
    iget v2, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    if-lez v2, :cond_22

    const/4 v2, 0x1

    .line 12211
    invoke-static {v1, v0, v2}, Lo/MediaBrowserCompat$MediaItem$Flags;->onMessageChannelReady(Lo/addSubscription;Lo/isPlayable;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 405
    :cond_22
    :try_start_6
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    .line 12383
    iget-boolean v2, v0, Lo/isPlayable;->onPostMessage:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    .line 12388
    :goto_17
    iget v3, v0, Lo/isPlayable;->onMessageChannelReady:I

    if-ge v2, v3, :cond_24

    .line 12389
    iget-object v3, v0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v3, v3, v2

    .line 12390
    iget-boolean v3, v3, Lo/getDescription;->onNavigationEvent:Z

    if-nez v3, :cond_23

    const/4 v2, 0x0

    goto :goto_18

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_24
    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_25

    .line 12396
    iget-object v2, v0, Lo/isPlayable;->ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

    .line 12426
    move-object v3, v2

    check-cast v3, Lo/getDescription;

    invoke-virtual {v0, v3}, Lo/isPlayable;->onNavigationEvent(Lo/getDescription;)V

    .line 12430
    invoke-virtual {v0}, Lo/isPlayable;->onNavigationEvent()I

    .line 12435
    invoke-virtual {v0, v2}, Lo/isPlayable;->extraCallback(Lo/isPlayable$onNavigationEvent;)I

    .line 12440
    invoke-virtual {v0}, Lo/isPlayable;->asInterface()V

    goto :goto_19

    .line 12401
    :cond_25
    invoke-virtual {v0}, Lo/isPlayable;->asInterface()V

    goto :goto_19

    .line 12404
    :cond_26
    iget-object v2, v0, Lo/isPlayable;->ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

    .line 13426
    move-object v3, v2

    check-cast v3, Lo/getDescription;

    invoke-virtual {v0, v3}, Lo/isPlayable;->onNavigationEvent(Lo/getDescription;)V

    .line 13430
    invoke-virtual {v0}, Lo/isPlayable;->onNavigationEvent()I

    .line 13435
    invoke-virtual {v0, v2}, Lo/isPlayable;->extraCallback(Lo/isPlayable$onNavigationEvent;)I

    .line 13440
    invoke-virtual {v0}, Lo/isPlayable;->asInterface()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_19
    const/16 v19, 0x1

    goto :goto_1d

    :catch_3
    move-exception v0

    const/16 v19, 0x1

    goto :goto_1c

    :catch_4
    move-exception v0

    goto :goto_1c

    :catch_5
    move-exception v0

    :goto_1a
    move/from16 v23, v2

    move/from16 v22, v3

    goto :goto_1b

    :catch_6
    move-exception v0

    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v19, v8

    :goto_1b
    move/from16 v21, v12

    .line 408
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "EXCEPTION : "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1d
    const/4 v0, 0x2

    if-eqz v19, :cond_27

    .line 412
    iget-object v2, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    sget-object v3, Lo/sendRequest;->ICustomTabsCallback:[Z

    invoke-direct {v1, v2, v3}, Lo/addSubscription;->extraCallback(Lo/isPlayable;[Z)V

    goto :goto_21

    .line 414
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->ICustomTabsService$Stub()V

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v4, :cond_2c

    .line 416
    iget-object v3, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeSubscription;

    .line 417
    iget-object v8, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v8, v9, :cond_29

    .line 13773
    iget v8, v3, Lo/removeSubscription;->getExtras:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_28

    const/4 v8, 0x0

    goto :goto_1f

    .line 13776
    :cond_28
    iget v8, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 13821
    :goto_1f
    iget v9, v3, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    if-ge v8, v9, :cond_29

    .line 420
    sget-object v2, Lo/sendRequest;->ICustomTabsCallback:[Z

    const/4 v8, 0x1

    aput-boolean v8, v2, v0

    goto :goto_21

    :cond_29
    const/4 v8, 0x1

    .line 423
    iget-object v9, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v9, v9, v8

    sget-object v12, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v9, v12, :cond_2b

    .line 13830
    iget v9, v3, Lo/removeSubscription;->getExtras:I

    const/16 v12, 0x8

    if-ne v9, v12, :cond_2a

    const/4 v9, 0x0

    goto :goto_20

    .line 13833
    :cond_2a
    iget v9, v3, Lo/removeSubscription;->INotificationSideChannel:I

    .line 13842
    :goto_20
    iget v3, v3, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    if-ge v9, v3, :cond_2b

    .line 426
    sget-object v2, Lo/sendRequest;->ICustomTabsCallback:[Z

    aput-boolean v8, v2, v0

    goto :goto_21

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    :goto_21
    if-eqz v14, :cond_33

    const/16 v2, 0x8

    if-ge v5, v2, :cond_33

    .line 433
    sget-object v3, Lo/sendRequest;->ICustomTabsCallback:[Z

    aget-boolean v0, v3, v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_22
    if-ge v0, v4, :cond_2f

    .line 439
    iget-object v9, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/removeSubscription;

    .line 440
    iget v12, v9, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    move/from16 v19, v4

    .line 14773
    iget v4, v9, Lo/removeSubscription;->getExtras:I

    if-ne v4, v2, :cond_2d

    const/4 v4, 0x0

    goto :goto_23

    .line 14776
    :cond_2d
    iget v4, v9, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_23
    add-int/2addr v12, v4

    .line 440
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 441
    iget v4, v9, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 14830
    iget v12, v9, Lo/removeSubscription;->getExtras:I

    if-ne v12, v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_24

    .line 14833
    :cond_2e
    iget v2, v9, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_24
    add-int/2addr v4, v2

    .line 441
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v19

    const/16 v2, 0x8

    goto :goto_22

    :cond_2f
    move/from16 v19, v4

    .line 443
    iget v0, v1, Lo/removeSubscription;->MediaBrowserCompat:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 444
    iget v2, v1, Lo/removeSubscription;->disconnect:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 445
    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v11, v3, :cond_31

    .line 15773
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_30

    const/4 v3, 0x0

    goto :goto_25

    .line 15776
    :cond_30
    iget v3, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_25
    if-ge v3, v0, :cond_31

    .line 451
    invoke-virtual {v1, v0}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 452
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_26

    :cond_31
    const/4 v0, 0x0

    .line 457
    :goto_26
    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v10, v3, :cond_34

    .line 15830
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_32

    const/4 v3, 0x0

    goto :goto_27

    .line 15833
    :cond_32
    iget v3, v1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_27
    if-ge v3, v2, :cond_34

    .line 463
    invoke-virtual {v1, v2}, Lo/removeSubscription;->onPostMessage(I)V

    .line 464
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_28

    :cond_33
    move/from16 v19, v4

    const/4 v0, 0x0

    .line 471
    :cond_34
    :goto_28
    iget v2, v1, Lo/removeSubscription;->MediaBrowserCompat:I

    .line 16773
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    const/4 v3, 0x0

    goto :goto_29

    .line 16776
    :cond_35
    iget v3, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 471
    :goto_29
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 17773
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    if-ne v3, v4, :cond_36

    const/4 v3, 0x0

    goto :goto_2a

    .line 17776
    :cond_36
    iget v3, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_2a
    if-le v2, v3, :cond_37

    .line 477
    invoke-virtual {v1, v2}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 478
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v0, 0x1

    const/16 v18, 0x1

    .line 482
    :cond_37
    iget v2, v1, Lo/removeSubscription;->disconnect:I

    .line 17830
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    const/4 v3, 0x0

    goto :goto_2b

    .line 17833
    :cond_38
    iget v3, v1, Lo/removeSubscription;->INotificationSideChannel:I

    .line 482
    :goto_2b
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 18830
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    if-ne v3, v4, :cond_39

    const/4 v3, 0x0

    goto :goto_2c

    .line 18833
    :cond_39
    iget v3, v1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_2c
    if-le v2, v3, :cond_3a

    .line 488
    invoke-virtual {v1, v2}, Lo/removeSubscription;->onPostMessage(I)V

    .line 489
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2d

    :cond_3a
    move/from16 v9, v18

    :goto_2d
    if-nez v9, :cond_3e

    .line 495
    iget-object v2, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v2, v3, :cond_3c

    if-lez v6, :cond_3c

    .line 19773
    iget v2, v1, Lo/removeSubscription;->getExtras:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x0

    goto :goto_2e

    .line 19776
    :cond_3b
    iget v2, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_2e
    if-le v2, v6, :cond_3c

    const/4 v2, 0x1

    .line 503
    iput-boolean v2, v1, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Z

    .line 505
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 506
    invoke-virtual {v1, v6}, Lo/removeSubscription;->onNavigationEvent(I)V

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2f

    :cond_3c
    const/4 v2, 0x1

    .line 510
    :goto_2f
    iget-object v3, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v3, v3, v2

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v4, :cond_3e

    if-lez v7, :cond_3e

    .line 19830
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3d

    const/4 v4, 0x0

    goto :goto_30

    .line 19833
    :cond_3d
    iget v4, v1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_30
    if-le v4, v7, :cond_3e

    .line 518
    iput-boolean v2, v1, Lo/addSubscription;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Z

    .line 520
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v3, v0, v2

    .line 521
    invoke-virtual {v1, v7}, Lo/removeSubscription;->onPostMessage(I)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_31

    :cond_3e
    move v8, v0

    :goto_31
    move v0, v5

    move v5, v9

    move/from16 v4, v19

    move/from16 v12, v21

    move/from16 v3, v22

    move/from16 v2, v23

    goto/16 :goto_13

    :cond_3f
    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v18, v5

    move/from16 v21, v12

    .line 534
    iget-object v0, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/registerCallbackMessenger;

    invoke-virtual {v0}, Lo/registerCallbackMessenger;->onPostMessage()V

    move/from16 v0, v18

    goto :goto_32

    :cond_40
    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v21, v12

    :goto_32
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v21

    move/from16 v3, v22

    move/from16 v2, v23

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x1

    goto/16 :goto_d

    :cond_41
    move/from16 v23, v2

    move/from16 v22, v3

    .line 536
    check-cast v13, Ljava/util/ArrayList;

    iput-object v13, v1, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    .line 538
    iget-object v2, v1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v2, :cond_44

    .line 539
    iget v2, v1, Lo/removeSubscription;->MediaBrowserCompat:I

    .line 20773
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_42

    const/4 v3, 0x0

    goto :goto_33

    .line 20776
    :cond_42
    iget v3, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 539
    :goto_33
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 540
    iget v3, v1, Lo/removeSubscription;->disconnect:I

    .line 20830
    iget v5, v1, Lo/removeSubscription;->getExtras:I

    if-ne v5, v4, :cond_43

    const/4 v4, 0x0

    goto :goto_34

    .line 20833
    :cond_43
    iget v4, v1, Lo/removeSubscription;->INotificationSideChannel:I

    .line 540
    :goto_34
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 542
    iget-object v4, v1, Lo/addSubscription;->onReceiveResult:Lo/getOptionsList;

    invoke-virtual {v4, v1}, Lo/getOptionsList;->onPostMessage(Lo/removeSubscription;)V

    .line 543
    invoke-virtual {v1, v2}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 544
    invoke-virtual {v1, v3}, Lo/removeSubscription;->onPostMessage(I)V

    goto :goto_35

    :cond_44
    move/from16 v2, v23

    .line 546
    iput v2, v1, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    move/from16 v2, v22

    .line 547
    iput v2, v1, Lo/removeSubscription;->INotificationSideChannel$Default:I

    :goto_35
    if-eqz v0, :cond_45

    .line 550
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    .line 551
    iget-object v0, v1, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x1

    aput-object v10, v0, v2

    .line 566
    :cond_45
    iget-object v0, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isPlayable;

    .line 20967
    iget-object v0, v0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    .line 566
    invoke-virtual {v1, v0}, Lo/removeSubscription;->onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lo/getCallback;->cancelAll()Lo/addSubscription;

    move-result-object v0

    if-ne v1, v0, :cond_46

    .line 568
    invoke-virtual/range {p0 .. p0}, Lo/removeSubscription;->updateVisuals()V

    :cond_46
    return-void
.end method

.method public final IPostMessageService$Stub()V
    .locals 4

    .line 578
    sget-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {p0, v0}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v0

    .line 21058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 579
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {p0, v1}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v1

    .line 22058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 585
    invoke-virtual {v0, v3, v2}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 586
    invoke-virtual {v1, v3, v2}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 2

    .line 604
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    invoke-virtual {v0, p1}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    .line 607
    :cond_0
    iget-object p1, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sget-object v0, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-eqz p1, :cond_1

    .line 608
    iget-object p1, p0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    invoke-virtual {p1, p2}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    :cond_1
    return-void
.end method

.method public final validateRelationship()V
    .locals 1

    .line 573
    invoke-direct {p0}, Lo/addSubscription;->IPostMessageService$Stub$Proxy()V

    .line 574
    iget v0, p0, Lo/addSubscription;->onResult:I

    invoke-virtual {p0, v0}, Lo/removeSubscription;->ICustomTabsCallback(I)V

    return-void
.end method
