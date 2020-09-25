.class public Lo/removeSubscription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeSubscription$onNavigationEvent;
    }
.end annotation


# static fields
.field private static onConnectionFailed:F = 0.5f


# instance fields
.field public AudioAttributesCompatParcelizer:I

.field public AudioAttributesImplApi21Parcelizer:I

.field public AudioAttributesImplBaseParcelizer:I

.field private ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:F

.field public ICustomTabsService:I

.field ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public INotificationSideChannel:I

.field protected INotificationSideChannel$Default:I

.field protected INotificationSideChannel$Stub:I

.field protected INotificationSideChannel$Stub$Proxy:I

.field IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public IPostMessageService$Stub$Proxy:I

.field public IconCompatParcelizer:I

.field protected MediaBrowserCompat:I

.field protected MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

.field private MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public RemoteActionCompatParcelizer:I

.field public asBinder:I

.field public asInterface:I

.field protected cancel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat$ServiceBinderWrapper;",
            ">;"
        }
    .end annotation
.end field

.field cancelAll:Lo/removeSubscription;

.field public connect:I

.field protected disconnect:I

.field public extraCallback:I

.field extraCommand:Lo/registerCallbackMessenger;

.field getDefaultImpl:I

.field public getExtras:I

.field public getInterfaceDescriptor:I

.field public getItem:I

.field public getNotifyChildrenChangedOptions:[F

.field public getRoot:Ljava/lang/Object;

.field public getServiceComponent:F

.field public getSessionToken:Ljava/lang/String;

.field private handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public isConnected:F

.field public mayLaunchUrl:F

.field public newSession:I

.field protected notify:[Lo/removeSubscription$onNavigationEvent;

.field private onMessageChannelReady:F

.field public onNavigationEvent:Lo/unregisterCallbackMessenger;

.field public onPostMessage:I

.field onRelationshipValidationResult:[I

.field public onTransact:Lo/unregisterCallbackMessenger;

.field postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public read:I

.field requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field search:Z

.field sendCustomAction:Z

.field protected setCallbacksMessenger:[Lo/removeSubscription;

.field protected setDefaultImpl:F

.field public subscribe:I

.field unsubscribe:Z

.field public updateVisuals:[I

.field protected validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public warmup:F

.field write:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lo/removeSubscription;->extraCallback:I

    .line 69
    iput v0, p0, Lo/removeSubscription;->onPostMessage:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lo/removeSubscription;->asBinder:I

    .line 77
    iput v1, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 78
    iput-object v3, p0, Lo/removeSubscription;->onRelationshipValidationResult:[I

    .line 80
    iput v1, p0, Lo/removeSubscription;->asInterface:I

    .line 81
    iput v1, p0, Lo/removeSubscription;->getInterfaceDescriptor:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Lo/removeSubscription;->warmup:F

    .line 83
    iput v1, p0, Lo/removeSubscription;->ICustomTabsService:I

    .line 84
    iput v1, p0, Lo/removeSubscription;->newSession:I

    .line 85
    iput v3, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub$Proxy:F

    .line 89
    iput v0, p0, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 90
    iput v3, p0, Lo/removeSubscription;->onMessageChannelReady:F

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    new-array v4, v2, [I

    .line 97
    fill-array-data v4, :array_0

    iput-object v4, p0, Lo/removeSubscription;->updateVisuals:[I

    const/4 v4, 0x0

    .line 98
    iput v4, p0, Lo/removeSubscription;->mayLaunchUrl:F

    .line 148
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 149
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 150
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 151
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 152
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 153
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 154
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 155
    new-instance v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-direct {v5, p0, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V

    iput-object v5, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v6, 0x6

    new-array v6, v6, [Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 163
    iget-object v7, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aput-object v7, v6, v1

    iget-object v7, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aput-object v7, v6, v2

    iget-object v7, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    iget-object v7, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v9, 0x4

    aput-object v7, v6, v9

    const/4 v7, 0x5

    aput-object v5, v6, v7

    iput-object v6, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    new-array v5, v2, [Lo/removeSubscription$onNavigationEvent;

    .line 169
    sget-object v6, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v6, v5, v1

    sget-object v6, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v6, v5, v8

    iput-object v5, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    .line 172
    iput-object v3, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 175
    iput v1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 176
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 177
    iput v4, p0, Lo/removeSubscription;->setDefaultImpl:F

    .line 178
    iput v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    .line 181
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 182
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 183
    iput v1, p0, Lo/removeSubscription;->getDefaultImpl:I

    .line 184
    iput v1, p0, Lo/removeSubscription;->write:I

    .line 187
    iput v1, p0, Lo/removeSubscription;->RemoteActionCompatParcelizer:I

    .line 188
    iput v1, p0, Lo/removeSubscription;->IconCompatParcelizer:I

    .line 193
    iput v1, p0, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    .line 194
    iput v1, p0, Lo/removeSubscription;->read:I

    .line 197
    iput v1, p0, Lo/removeSubscription;->connect:I

    .line 210
    sget v0, Lo/removeSubscription;->onConnectionFailed:F

    iput v0, p0, Lo/removeSubscription;->getServiceComponent:F

    .line 211
    iput v0, p0, Lo/removeSubscription;->isConnected:F

    .line 222
    iput v1, p0, Lo/removeSubscription;->getExtras:I

    .line 224
    iput-object v3, p0, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    .line 238
    iput-boolean v1, p0, Lo/removeSubscription;->search:Z

    .line 239
    iput-boolean v1, p0, Lo/removeSubscription;->sendCustomAction:Z

    .line 242
    iput v1, p0, Lo/removeSubscription;->getItem:I

    .line 243
    iput v1, p0, Lo/removeSubscription;->subscribe:I

    new-array v0, v2, [F

    .line 247
    fill-array-data v0, :array_1

    iput-object v0, p0, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    new-array v0, v2, [Lo/removeSubscription;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 249
    iput-object v0, p0, Lo/removeSubscription;->setCallbacksMessenger:[Lo/removeSubscription;

    new-array v0, v2, [Lo/removeSubscription;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 250
    iput-object v0, p0, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    .line 12456
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12457
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12458
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12459
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12460
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12461
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12462
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12463
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private onPostMessage(Lo/isPlayable;ZLo/onSearchResult;Lo/onSearchResult;Lo/removeSubscription$onNavigationEvent;ZLo/MediaBrowserCompat$ServiceBinderWrapper;Lo/MediaBrowserCompat$ServiceBinderWrapper;IIIIFZZIIIFZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v1, p11

    move/from16 v2, p12

    .line 2612
    invoke-virtual {v10, v13}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v15

    .line 2613
    invoke-virtual {v10, v14}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v9

    .line 46144
    iget-object v3, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2614
    invoke-virtual {v10, v3}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v8

    .line 47144
    iget-object v3, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2615
    invoke-virtual {v10, v3}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v7

    .line 2617
    iget-boolean v3, v10, Lo/isPlayable;->onPostMessage:Z

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 48058
    iget-object v3, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 2618
    iget v3, v3, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v3, v5, :cond_1

    .line 49058
    iget-object v3, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 2619
    iget v3, v3, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v3, v5, :cond_1

    .line 2620
    invoke-static {}, Lo/isPlayable;->onPostMessage()Lo/extraCallback$onNavigationEvent;

    .line 50058
    iget-object v1, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 2623
    invoke-virtual {v1, v10}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 50059
    iget-object v1, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 2624
    invoke-virtual {v1, v10}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    if-nez p15, :cond_0

    if-eqz p2, :cond_0

    .line 2626
    invoke-virtual {v10, v12, v9, v4, v6}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_0
    return-void

    .line 2631
    :cond_1
    invoke-static {}, Lo/isPlayable;->onPostMessage()Lo/extraCallback$onNavigationEvent;

    .line 50060
    iget-object v3, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 50061
    :goto_0
    iget-object v3, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_3

    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    .line 2637
    :goto_1
    iget-object v3, v0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50062
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_4

    const/16 v18, 0x1

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    :goto_2
    if-eqz v16, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v17, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    if-eqz v18, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    if-eqz p14, :cond_8

    const/4 v6, 0x3

    goto :goto_4

    :cond_8
    move/from16 v6, p16

    .line 2649
    :goto_4
    sget-object v21, Lo/removeSubscription$5;->onPostMessage:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v4, v21, v22

    const/4 v14, 0x2

    const/4 v11, 0x4

    if-eq v4, v5, :cond_9

    if-eq v4, v14, :cond_9

    const/4 v14, 0x3

    if-eq v4, v14, :cond_9

    if-eq v4, v11, :cond_a

    :cond_9
    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    if-ne v6, v11, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    .line 2667
    :goto_6
    iget v14, v0, Lo/removeSubscription;->getExtras:I

    const/16 v11, 0x8

    if-ne v14, v11, :cond_c

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    move v11, v4

    move/from16 v4, p10

    :goto_7
    if-eqz p20, :cond_e

    if-nez v16, :cond_d

    if-nez v17, :cond_d

    if-nez v18, :cond_d

    move/from16 v14, p9

    .line 2675
    invoke-virtual {v10, v15, v14}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    goto :goto_8

    :cond_d
    if-eqz v16, :cond_e

    if-nez v17, :cond_e

    .line 2677
    invoke-virtual/range {p7 .. p7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v14

    const/4 v5, 0x6

    invoke-virtual {v10, v15, v8, v14, v5}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v5, 0x6

    :goto_9
    if-nez v11, :cond_12

    if-eqz p6, :cond_11

    const/4 v5, 0x0

    const/4 v14, 0x3

    .line 2684
    invoke-virtual {v10, v9, v15, v5, v14}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    const/4 v4, 0x6

    if-lez v1, :cond_f

    .line 2686
    invoke-virtual {v10, v9, v15, v1, v4}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_f
    const v5, 0x7fffffff

    if-ge v2, v5, :cond_10

    .line 2689
    invoke-virtual {v10, v9, v15, v2, v4}, Lo/isPlayable;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_10
    const/4 v5, 0x6

    goto :goto_a

    :cond_11
    const/4 v14, 0x3

    .line 2692
    invoke-virtual {v10, v9, v15, v4, v5}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    :goto_a
    move/from16 v14, p17

    move v13, v3

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v20, v8

    move v0, v11

    const/4 v2, 0x2

    const/4 v11, 0x6

    move/from16 v8, p18

    goto/16 :goto_10

    :cond_12
    const/4 v14, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    move/from16 v5, p18

    if-ne v14, v2, :cond_13

    move v14, v4

    :cond_13
    if-ne v5, v2, :cond_14

    move v5, v4

    :cond_14
    const/4 v2, 0x6

    if-lez v14, :cond_15

    .line 2703
    invoke-virtual {v10, v9, v15, v14, v2}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 2704
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_15
    if-lez v5, :cond_16

    .line 2707
    invoke-virtual {v10, v9, v15, v5, v2}, Lo/isPlayable;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 2708
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_16
    const/4 v2, 0x1

    if-ne v6, v2, :cond_19

    if-eqz p2, :cond_17

    const/4 v2, 0x6

    .line 2712
    invoke-virtual {v10, v9, v15, v4, v2}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    move v13, v3

    move v0, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v20, v8

    move/from16 p10, v11

    goto/16 :goto_e

    :cond_17
    const/4 v2, 0x6

    if-eqz p15, :cond_18

    move/from16 p10, v11

    const/4 v11, 0x4

    .line 2714
    invoke-virtual {v10, v9, v15, v4, v11}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    goto/16 :goto_d

    :cond_18
    move/from16 p10, v11

    const/4 v2, 0x1

    const/4 v11, 0x4

    .line 2716
    invoke-virtual {v10, v9, v15, v4, v2}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    goto/16 :goto_d

    :cond_19
    move/from16 p10, v11

    const/4 v2, 0x2

    const/4 v11, 0x4

    if-ne v6, v2, :cond_1c

    .line 50063
    iget-object v2, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 2721
    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq v2, v11, :cond_1b

    .line 50064
    iget-object v2, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 2721
    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v2, v11, :cond_1a

    goto :goto_b

    .line 2726
    :cond_1a
    iget-object v2, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v2, v11}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    .line 2727
    iget-object v11, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    move-object/from16 p6, v2

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v11, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    goto :goto_c

    .line 2723
    :cond_1b
    :goto_b
    iget-object v2, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v2, v11}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    .line 2724
    iget-object v11, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    move-object/from16 p6, v2

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v11, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    :goto_c
    move-object/from16 v22, p6

    move-object v11, v2

    .line 2729
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v2

    const/16 v20, 0x6

    const/16 v21, 0x1

    move v13, v3

    move-object v3, v9

    move v0, v4

    move-object v4, v15

    move-object/from16 v20, v8

    const/16 v21, 0x6

    move v8, v5

    move-object v5, v11

    move/from16 v23, v6

    const/4 v11, 0x6

    move-object/from16 v6, v22

    move-object/from16 v24, v7

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Lo/getDescription;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;F)Lo/getDescription;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    const/4 v4, 0x0

    goto :goto_f

    :cond_1c
    :goto_d
    move v13, v3

    move v0, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v20, v8

    :goto_e
    const/4 v11, 0x6

    move v8, v5

    move/from16 v4, p10

    :goto_f
    const/4 v2, 0x2

    if-eqz v4, :cond_1e

    if-eq v13, v2, :cond_1e

    if-nez p14, :cond_1e

    .line 2735
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v8, :cond_1d

    .line 2737
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2739
    :cond_1d
    invoke-virtual {v10, v9, v15, v0, v11}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    const/4 v0, 0x0

    goto :goto_10

    :cond_1e
    move v0, v4

    :goto_10
    if-eqz p20, :cond_3a

    if-eqz p15, :cond_1f

    goto/16 :goto_1d

    :cond_1f
    const/4 v13, 0x5

    if-nez v16, :cond_20

    if-nez v17, :cond_20

    if-nez v18, :cond_20

    if-eqz p2, :cond_37

    const/4 v2, 0x0

    .line 2761
    invoke-virtual {v10, v12, v9, v2, v13}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto/16 :goto_1b

    :cond_20
    const/4 v2, 0x0

    if-eqz v16, :cond_21

    if-nez v17, :cond_21

    if-eqz p2, :cond_37

    .line 2766
    invoke-virtual {v10, v12, v9, v2, v13}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto/16 :goto_1b

    :cond_21
    if-nez v16, :cond_22

    if-eqz v17, :cond_22

    .line 2769
    invoke-virtual/range {p8 .. p8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v7, v24

    invoke-virtual {v10, v9, v7, v0, v11}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-eqz p2, :cond_37

    move-object/from16 v6, p3

    .line 2771
    invoke-virtual {v10, v15, v6, v2, v13}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto/16 :goto_1b

    :cond_22
    move-object/from16 v6, p3

    move-object/from16 v7, v24

    const/4 v3, 0x4

    if-eqz v16, :cond_37

    if-eqz v17, :cond_37

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_23

    if-nez v1, :cond_23

    .line 2784
    invoke-virtual {v10, v9, v15, v2, v11}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_23
    move/from16 v4, v23

    if-nez v4, :cond_28

    if-gtz v8, :cond_25

    if-lez v14, :cond_24

    goto :goto_11

    :cond_24
    const/4 v3, 0x6

    const/4 v5, 0x0

    goto :goto_12

    :cond_25
    :goto_11
    const/4 v5, 0x1

    .line 2793
    :goto_12
    invoke-virtual/range {p7 .. p7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    move-object/from16 v4, v20

    invoke-virtual {v10, v15, v4, v1, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    .line 2794
    invoke-virtual/range {p8 .. p8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v9, v7, v1, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-gtz v8, :cond_27

    if-lez v14, :cond_26

    goto :goto_13

    :cond_26
    const/4 v1, 0x0

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v1, 0x1

    :goto_14
    const/16 v17, 0x5

    move-object v14, v4

    move/from16 v16, v5

    const/4 v5, 0x1

    goto :goto_15

    :cond_28
    move-object/from16 v14, v20

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const/4 v1, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x6

    :goto_15
    move-object/from16 v4, p0

    goto :goto_18

    :cond_29
    const/4 v1, 0x3

    if-ne v4, v1, :cond_2b

    move-object/from16 v4, p0

    if-nez p14, :cond_2a

    .line 2806
    iget v1, v4, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    if-gtz v8, :cond_2a

    const/4 v3, 0x6

    .line 2811
    :cond_2a
    invoke-virtual/range {p7 .. p7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    invoke-virtual {v10, v15, v14, v1, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    .line 2812
    invoke-virtual/range {p8 .. p8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v9, v7, v1, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_17

    :cond_2b
    move-object/from16 v4, p0

    const/4 v1, 0x0

    goto :goto_16

    :cond_2c
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move-object/from16 v14, v20

    const/4 v1, 0x1

    :goto_16
    const/16 v16, 0x0

    :goto_17
    const/16 v17, 0x5

    :goto_18
    if-eqz v1, :cond_2e

    .line 2824
    invoke-virtual/range {p7 .. p7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v8

    .line 2825
    invoke-virtual/range {p8 .. p8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v18

    move-object/from16 v1, p1

    const/4 v3, 0x0

    move-object v2, v15

    const/4 v13, 0x0

    move-object v3, v14

    move v4, v8

    const/16 v19, 0x1

    move/from16 v5, p13

    move-object v8, v6

    move-object v6, v7

    move-object v11, v7

    move-object v7, v9

    move-object v13, v14

    move-object v14, v8

    move/from16 v8, v18

    move-object v12, v9

    move/from16 v9, v17

    .line 2824
    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    move-object/from16 v1, p7

    .line 2826
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    instance-of v2, v2, Lo/MediaBrowserCompat$SearchCallback;

    move-object/from16 v3, p8

    .line 2827
    iget-object v4, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    instance-of v4, v4, Lo/MediaBrowserCompat$SearchCallback;

    if-eqz v2, :cond_2d

    if-nez v4, :cond_2d

    move/from16 v5, p2

    const/4 v2, 0x6

    goto :goto_19

    :cond_2d
    if-nez v2, :cond_2f

    if-eqz v4, :cond_2f

    move/from16 v19, p2

    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x6

    goto :goto_1a

    :cond_2e
    move-object/from16 v1, p7

    move-object/from16 v3, p8

    move-object v11, v7

    move-object v12, v9

    move-object v13, v14

    move-object v14, v6

    :cond_2f
    move/from16 v5, p2

    move/from16 v19, v5

    const/4 v2, 0x5

    :goto_19
    const/4 v6, 0x5

    :goto_1a
    if-eqz v16, :cond_30

    const/4 v2, 0x6

    const/4 v6, 0x6

    :cond_30
    if-nez v0, :cond_31

    if-nez v5, :cond_32

    :cond_31
    if-eqz v16, :cond_33

    .line 2843
    :cond_32
    invoke-virtual/range {p7 .. p7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    invoke-virtual {v10, v15, v13, v1, v6}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_33
    if-nez v0, :cond_34

    if-nez v19, :cond_35

    :cond_34
    if-eqz v16, :cond_36

    .line 2846
    :cond_35
    invoke-virtual/range {p8 .. p8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v12, v11, v0, v2}, Lo/isPlayable;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_36
    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p2, :cond_38

    .line 2850
    invoke-virtual {v10, v15, v14, v1, v0}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_1c

    :cond_37
    :goto_1b
    move-object v12, v9

    const/4 v0, 0x6

    const/4 v1, 0x0

    :cond_38
    :goto_1c
    if-eqz p2, :cond_39

    move-object/from16 v2, p4

    move-object v3, v12

    .line 2855
    invoke-virtual {v10, v2, v3, v1, v0}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_39
    return-void

    :cond_3a
    :goto_1d
    move-object/from16 v14, p3

    move-object v3, v9

    move-object v2, v12

    move v4, v13

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3b

    if-eqz p2, :cond_3b

    .line 2750
    invoke-virtual {v10, v15, v14, v1, v0}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 2751
    invoke-virtual {v10, v2, v3, v1, v0}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_3b
    return-void
.end method

.method private onRelationshipValidationResult(I)Z
    .locals 4

    const/4 v0, 0x1

    shl-int/2addr p1, v0

    .line 2314
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, p1

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, p1

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v2, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v0

    aget-object v1, v2, p1

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, p1

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object p1, v2, p1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;
    .locals 2

    .line 2132
    sget-object v0, Lo/removeSubscription$5;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2160
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2152
    :pswitch_1
    iget-object p1, p0, Lo/removeSubscription;->handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2149
    :pswitch_2
    iget-object p1, p0, Lo/removeSubscription;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2155
    :pswitch_3
    iget-object p1, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2146
    :pswitch_4
    iget-object p1, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2143
    :pswitch_5
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2140
    :pswitch_6
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2137
    :pswitch_7
    iget-object p1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 2134
    :pswitch_8
    iget-object p1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ICustomTabsCallback(I)V
    .locals 0

    .line 353
    invoke-static {p1, p0}, Lo/sendRequest;->onMessageChannelReady(ILo/removeSubscription;)V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 0

    .line 1078
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 1079
    iput p2, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    return-void
.end method

.method public final ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V
    .locals 2

    .line 2203
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2204
    sget-object v0, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne p1, v0, :cond_0

    .line 2205
    iget p1, p0, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    .line 23213
    iput p1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 23214
    iget v0, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge p1, v0, :cond_0

    .line 23215
    iput v0, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback()Z
    .locals 2

    .line 1677
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ICustomTabsCallback$Stub()V
    .locals 6

    .line 257
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 258
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 259
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 260
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 261
    iget-object v0, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 262
    iget-object v0, p0, Lo/removeSubscription;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 263
    iget-object v0, p0, Lo/removeSubscription;->handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 264
    iget-object v0, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    const/4 v1, 0x0

    .line 266
    iput v1, p0, Lo/removeSubscription;->mayLaunchUrl:F

    const/4 v2, 0x0

    .line 267
    iput v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 268
    iput v2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 269
    iput v1, p0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v1, -0x1

    .line 270
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    .line 271
    iput v2, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 272
    iput v2, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 273
    iput v2, p0, Lo/removeSubscription;->RemoteActionCompatParcelizer:I

    .line 274
    iput v2, p0, Lo/removeSubscription;->IconCompatParcelizer:I

    .line 277
    iput v2, p0, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    .line 278
    iput v2, p0, Lo/removeSubscription;->read:I

    .line 279
    iput v2, p0, Lo/removeSubscription;->connect:I

    .line 280
    iput v2, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    .line 281
    iput v2, p0, Lo/removeSubscription;->disconnect:I

    .line 282
    iput v2, p0, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    .line 283
    iput v2, p0, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    .line 284
    sget v3, Lo/removeSubscription;->onConnectionFailed:F

    iput v3, p0, Lo/removeSubscription;->getServiceComponent:F

    .line 285
    iput v3, p0, Lo/removeSubscription;->isConnected:F

    .line 286
    iget-object v3, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v4, v3, v2

    .line 287
    iget-object v3, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 288
    iput-object v0, p0, Lo/removeSubscription;->getRoot:Ljava/lang/Object;

    .line 290
    iput v2, p0, Lo/removeSubscription;->getExtras:I

    .line 294
    iput v2, p0, Lo/removeSubscription;->getItem:I

    .line 295
    iput v2, p0, Lo/removeSubscription;->subscribe:I

    .line 298
    iget-object v3, p0, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v3, v2

    .line 299
    aput v4, v3, v5

    .line 300
    iput v1, p0, Lo/removeSubscription;->extraCallback:I

    .line 301
    iput v1, p0, Lo/removeSubscription;->onPostMessage:I

    .line 302
    iget-object v3, p0, Lo/removeSubscription;->updateVisuals:[I

    const v4, 0x7fffffff

    aput v4, v3, v2

    .line 303
    aput v4, v3, v5

    .line 304
    iput v2, p0, Lo/removeSubscription;->asBinder:I

    .line 305
    iput v2, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 306
    iput v3, p0, Lo/removeSubscription;->warmup:F

    .line 307
    iput v3, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub$Proxy:F

    .line 308
    iput v4, p0, Lo/removeSubscription;->getInterfaceDescriptor:I

    .line 309
    iput v4, p0, Lo/removeSubscription;->newSession:I

    .line 310
    iput v2, p0, Lo/removeSubscription;->asInterface:I

    .line 311
    iput v2, p0, Lo/removeSubscription;->ICustomTabsService:I

    .line 312
    iput v1, p0, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 313
    iput v3, p0, Lo/removeSubscription;->onMessageChannelReady:F

    .line 314
    iget-object v1, p0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v1}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    .line 317
    :cond_0
    iget-object v1, p0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    .line 320
    :cond_1
    iput-object v0, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    .line 321
    iput-boolean v2, p0, Lo/removeSubscription;->unsubscribe:Z

    .line 322
    iput-boolean v2, p0, Lo/removeSubscription;->search:Z

    .line 323
    iput-boolean v2, p0, Lo/removeSubscription;->sendCustomAction:Z

    return-void
.end method

.method public final ICustomTabsCallback$Stub(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1411
    iput p1, p0, Lo/removeSubscription;->disconnect:I

    return-void

    .line 1413
    :cond_0
    iput p1, p0, Lo/removeSubscription;->disconnect:I

    return-void
.end method

.method protected final ICustomTabsCallback$Stub$Proxy()I
    .locals 2

    .line 912
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    iget v1, p0, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ICustomTabsService()I
    .locals 2

    .line 876
    iget v0, p0, Lo/removeSubscription;->IconCompatParcelizer:I

    iget v1, p0, Lo/removeSubscription;->read:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ICustomTabsService$Stub()V
    .locals 7

    .line 2865
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {v0}, Lo/isPlayable;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    .line 2866
    iget-object v1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {v1}, Lo/isPlayable;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v1

    .line 2867
    iget-object v2, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {v2}, Lo/isPlayable;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v2

    .line 2868
    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {v3}, Lo/isPlayable;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v3

    sub-int v4, v2, v0

    sub-int v5, v3, v1

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    .line 50068
    iput v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 50069
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 50071
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 50072
    iput v6, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 50073
    iput v6, p0, Lo/removeSubscription;->INotificationSideChannel:I

    return-void

    .line 50078
    :cond_2
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v6

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    if-ge v2, v0, :cond_3

    move v2, v0

    .line 50081
    :cond_3
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v4, :cond_4

    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel:I

    if-ge v3, v0, :cond_4

    move v3, v0

    .line 50085
    :cond_4
    iput v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 50086
    iput v3, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 50088
    iget v0, p0, Lo/removeSubscription;->disconnect:I

    if-ge v3, v0, :cond_5

    .line 50089
    iput v0, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 50091
    :cond_5
    iget v0, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    iget v2, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge v0, v2, :cond_6

    .line 50092
    iput v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 50098
    :cond_6
    iput-boolean v1, p0, Lo/removeSubscription;->search:Z

    return-void
.end method

.method public final IPostMessageService()Lo/removeSubscription$onNavigationEvent;
    .locals 2

    .line 2178
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final asBinder()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 344
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v0

    .line 4058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 4245
    iget-object v2, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5144
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_3

    .line 6144
    iget-object v3, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4249
    iget-object v4, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    .line 4250
    iput v3, v1, Lo/isEmpty;->asBinder:I

    .line 7058
    iget-object v4, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 4251
    iput v3, v4, Lo/isEmpty;->asBinder:I

    .line 4253
    :cond_0
    iget-object v3, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v3

    .line 4254
    iget-object v4, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v4, v5, :cond_2

    :cond_1
    neg-int v3, v3

    .line 8058
    :cond_2
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 8272
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v2, v3

    .line 8273
    iput v2, v1, Lo/isEmpty;->asInterface:F

    .line 8274
    iget-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 9038
    iget-object v2, v2, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final asBinder(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1398
    iput p1, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    return-void

    .line 1400
    :cond_0
    iput p1, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    return-void
.end method

.method public final asInterface()I
    .locals 1

    .line 764
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    return v0
.end method

.method public final asInterface(I)Lo/removeSubscription$onNavigationEvent;
    .locals 1

    if-nez p1, :cond_0

    .line 23169
    iget-object p1, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 23178
    iget-object p1, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public extraCallback()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v0

    .line 3058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 335
    invoke-virtual {v1}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(I)V
    .locals 0

    .line 1068
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    return-void
.end method

.method public final extraCallback(II)V
    .locals 0

    .line 1520
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    sub-int/2addr p2, p1

    .line 1521
    iput p2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1522
    iget p1, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge p2, p1, :cond_0

    .line 1523
    iput p1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method public extraCallback(Lo/isPlayable;)V
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2337
    iget-object v0, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v21

    .line 2338
    iget-object v0, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v10

    .line 2339
    iget-object v0, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    .line 2340
    iget-object v0, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v4

    .line 2341
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v3

    .line 2348
    iget-object v0, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_e

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v2

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2350
    :goto_0
    iget-object v5, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v5, v5, v13

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2353
    :goto_1
    invoke-direct {v15, v2}, Lo/removeSubscription;->onRelationshipValidationResult(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2354
    iget-object v7, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    check-cast v7, Lo/addSubscription;

    .line 23744
    iget v8, v7, Lo/addSubscription;->ICustomTabsCallback:I

    add-int/2addr v8, v13

    iget-object v9, v7, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 23745
    iget-object v8, v7, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    iget-object v9, v7, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    array-length v9, v9

    shl-int/2addr v9, v13

    .line 23746
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lo/MediaBrowserCompat$SearchResultReceiver;

    iput-object v8, v7, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 23748
    :cond_2
    iget-object v8, v7, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    iget v9, v7, Lo/addSubscription;->ICustomTabsCallback:I

    new-instance v11, Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 24267
    iget-boolean v12, v7, Lo/addSubscription;->onMessageChannelReady:Z

    .line 23748
    invoke-direct {v11, v15, v2, v12}, Lo/MediaBrowserCompat$SearchResultReceiver;-><init>(Lo/removeSubscription;IZ)V

    aput-object v11, v8, v9

    .line 23749
    iget v8, v7, Lo/addSubscription;->ICustomTabsCallback:I

    add-int/2addr v8, v13

    iput v8, v7, Lo/addSubscription;->ICustomTabsCallback:I

    :cond_3
    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    .line 25227
    :cond_4
    iget-object v7, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_5

    iget-object v7, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eq v7, v8, :cond_3

    :cond_5
    iget-object v7, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_6

    iget-object v7, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 2361
    :goto_3
    invoke-direct {v15, v13}, Lo/removeSubscription;->onRelationshipValidationResult(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2362
    iget-object v8, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    check-cast v8, Lo/addSubscription;

    .line 25759
    iget v9, v8, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    add-int/2addr v9, v13

    iget-object v11, v8, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    array-length v11, v11

    if-lt v9, v11, :cond_7

    .line 25760
    iget-object v9, v8, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    iget-object v11, v8, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    array-length v11, v11

    shl-int/2addr v11, v13

    .line 25761
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lo/MediaBrowserCompat$SearchResultReceiver;

    iput-object v9, v8, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 25763
    :cond_7
    iget-object v9, v8, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    iget v11, v8, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    new-instance v12, Lo/MediaBrowserCompat$SearchResultReceiver;

    .line 26267
    iget-boolean v2, v8, Lo/addSubscription;->onMessageChannelReady:Z

    .line 25763
    invoke-direct {v12, v15, v13, v2}, Lo/MediaBrowserCompat$SearchResultReceiver;-><init>(Lo/removeSubscription;IZ)V

    aput-object v12, v9, v11

    .line 25764
    iget v2, v8, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    add-int/2addr v2, v13

    iput v2, v8, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    :cond_8
    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    .line 26270
    :cond_9
    iget-object v2, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_a

    iget-object v2, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eq v2, v8, :cond_8

    :cond_a
    iget-object v2, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_b

    iget-object v2, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-ne v2, v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-eqz v0, :cond_c

    .line 2368
    iget v8, v15, Lo/removeSubscription;->getExtras:I

    if-eq v8, v1, :cond_c

    iget-object v8, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v8, :cond_c

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v8, :cond_c

    .line 2370
    iget-object v8, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v8, v8, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v8}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v8

    const/4 v9, 0x0

    .line 2371
    invoke-virtual {v14, v8, v10, v9, v13}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_c
    if-eqz v5, :cond_d

    .line 2374
    iget v8, v15, Lo/removeSubscription;->getExtras:I

    if-eq v8, v1, :cond_d

    iget-object v8, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v8, :cond_d

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v8, :cond_d

    iget-object v8, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v8, :cond_d

    .line 2376
    iget-object v8, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v8, v8, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v8}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v8

    const/4 v9, 0x0

    .line 2377
    invoke-virtual {v14, v8, v4, v9, v13}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_d
    move/from16 v23, v2

    move/from16 v22, v5

    move/from16 v20, v7

    move v2, v0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 2381
    :goto_6
    iget v0, v15, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 2382
    iget v5, v15, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge v0, v5, :cond_f

    move v0, v5

    .line 2385
    :cond_f
    iget v5, v15, Lo/removeSubscription;->INotificationSideChannel:I

    .line 2386
    iget v7, v15, Lo/removeSubscription;->disconnect:I

    if-ge v5, v7, :cond_10

    move v5, v7

    .line 2391
    :cond_10
    iget-object v7, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-eq v7, v8, :cond_11

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    .line 2393
    :goto_7
    iget-object v8, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v8, v8, v13

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-eq v8, v9, :cond_12

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    const/4 v8, 0x0

    .line 2399
    :goto_8
    iget v9, v15, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    iput v9, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 2400
    iget v9, v15, Lo/removeSubscription;->setDefaultImpl:F

    iput v9, v15, Lo/removeSubscription;->onMessageChannelReady:F

    .line 2402
    iget v11, v15, Lo/removeSubscription;->asBinder:I

    .line 2403
    iget v12, v15, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    const/16 v17, 0x0

    const/16 v18, 0x4

    cmpl-float v9, v9, v17

    if-lez v9, :cond_33

    .line 2405
    iget v9, v15, Lo/removeSubscription;->getExtras:I

    if-eq v9, v1, :cond_33

    .line 2407
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    const/4 v13, 0x3

    if-ne v1, v9, :cond_13

    if-nez v11, :cond_13

    const/4 v11, 0x3

    .line 2411
    :cond_13
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v9, 0x1

    aget-object v1, v1, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v1, v9, :cond_14

    if-nez v12, :cond_14

    const/4 v12, 0x3

    .line 2416
    :cond_14
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    const/high16 v24, 0x3f800000    # 1.0f

    if-ne v1, v9, :cond_2e

    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v9, 0x1

    aget-object v1, v1, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v1, v9, :cond_2e

    if-ne v11, v13, :cond_2e

    if-ne v12, v13, :cond_2e

    .line 26534
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_16

    if-eqz v7, :cond_15

    if-nez v8, :cond_15

    const/4 v1, 0x0

    .line 26536
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_9

    :cond_15
    if-nez v7, :cond_16

    if-eqz v8, :cond_16

    const/4 v1, 0x1

    .line 26538
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 26539
    iget v1, v15, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    if-ne v1, v9, :cond_16

    .line 26541
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    .line 26546
    :cond_16
    :goto_9
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    if-nez v1, :cond_1a

    iget-object v1, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 27259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_19

    .line 26546
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 28259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_1a

    :cond_19
    const/4 v1, 0x1

    .line 26547
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_e

    :cond_1a
    const/4 v1, 0x1

    .line 26548
    iget v7, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    if-ne v7, v1, :cond_1e

    iget-object v1, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 29259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_1d

    .line 26548
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 30259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_d

    :cond_1c
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_1e

    :cond_1d
    const/4 v1, 0x0

    .line 26549
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 26553
    :cond_1e
    :goto_e
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_29

    .line 26554
    iget-object v1, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 31259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_f

    :cond_1f
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_23

    .line 26554
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 32259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_10

    :cond_20
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_23

    .line 26554
    iget-object v1, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 33259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_11

    :cond_21
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_23

    .line 26555
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 34259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_12

    :cond_22
    const/4 v1, 0x0

    :goto_12
    if-nez v1, :cond_29

    .line 26557
    :cond_23
    iget-object v1, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 35259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_13

    :cond_24
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_26

    .line 26557
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 36259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_14

    :cond_25
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 26558
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_17

    .line 26559
    :cond_26
    iget-object v1, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 37259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_15

    :cond_27
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_29

    .line 26559
    iget-object v1, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 38259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_29

    .line 26560
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    const/4 v1, 0x1

    .line 26561
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 26566
    :cond_29
    :goto_17
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2b

    if-eqz v2, :cond_2a

    if-nez v22, :cond_2a

    const/4 v1, 0x0

    .line 26568
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_18

    :cond_2a
    if-nez v2, :cond_2b

    if-eqz v22, :cond_2b

    .line 26570
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    const/4 v1, 0x1

    .line 26571
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 26575
    :cond_2b
    :goto_18
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2d

    .line 26576
    iget v1, v15, Lo/removeSubscription;->asInterface:I

    if-lez v1, :cond_2c

    iget v1, v15, Lo/removeSubscription;->ICustomTabsService:I

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    .line 26577
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_19

    .line 26578
    :cond_2c
    iget v1, v15, Lo/removeSubscription;->asInterface:I

    if-nez v1, :cond_2d

    iget v1, v15, Lo/removeSubscription;->ICustomTabsService:I

    if-lez v1, :cond_2d

    .line 26579
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    const/4 v1, 0x1

    .line 26580
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 26584
    :cond_2d
    :goto_19
    iget v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_31

    if-eqz v2, :cond_31

    if-eqz v22, :cond_31

    .line 26585
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    const/4 v1, 0x1

    .line 26586
    iput v1, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    goto :goto_1a

    .line 2421
    :cond_2e
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v7, 0x0

    aget-object v1, v1, v7

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v1, v8, :cond_2f

    if-ne v11, v13, :cond_2f

    .line 2423
    iput v7, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 2424
    iget v0, v15, Lo/removeSubscription;->onMessageChannelReady:F

    iget v1, v15, Lo/removeSubscription;->INotificationSideChannel:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2425
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v7, 0x1

    aget-object v1, v1, v7

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-eq v1, v8, :cond_31

    move/from16 v25, v0

    move/from16 v26, v5

    move/from16 v28, v12

    const/16 v24, 0x0

    const/16 v27, 0x4

    goto :goto_1b

    :cond_2f
    const/4 v7, 0x1

    .line 2429
    iget-object v1, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v1, v1, v7

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v1, v8, :cond_31

    if-ne v12, v13, :cond_31

    .line 2431
    iput v7, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    .line 2432
    iget v1, v15, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_30

    .line 2434
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    div-float v1, v24, v1

    iput v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    .line 2436
    :cond_30
    iget v1, v15, Lo/removeSubscription;->onMessageChannelReady:F

    iget v5, v15, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    int-to-float v5, v5

    mul-float v1, v1, v5

    float-to-int v1, v1

    .line 2437
    iget-object v5, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v11

    if-eq v5, v7, :cond_32

    const/16 v24, 0x0

    const/16 v28, 0x4

    goto :goto_1b

    :cond_31
    :goto_1a
    move/from16 v25, v0

    move/from16 v26, v5

    move/from16 v27, v11

    :cond_32
    move/from16 v28, v12

    const/16 v24, 0x1

    goto :goto_1b

    :cond_33
    move/from16 v25, v0

    move/from16 v26, v5

    move/from16 v27, v11

    move/from16 v28, v12

    const/16 v24, 0x0

    .line 2444
    :goto_1b
    iget-object v0, v15, Lo/removeSubscription;->onRelationshipValidationResult:[I

    const/4 v1, 0x0

    aput v27, v0, v1

    const/4 v1, 0x1

    .line 2445
    aput v28, v0, v1

    if-eqz v24, :cond_35

    .line 2447
    iget v0, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-eqz v0, :cond_34

    if-ne v0, v1, :cond_36

    :cond_34
    const/16 v29, 0x1

    goto :goto_1c

    :cond_35
    const/4 v1, -0x1

    :cond_36
    const/16 v29, 0x0

    .line 2451
    :goto_1c
    iget-object v0, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v5, :cond_37

    instance-of v0, v15, Lo/addSubscription;

    if-eqz v0, :cond_37

    const/16 v30, 0x1

    goto :goto_1d

    :cond_37
    const/16 v30, 0x0

    .line 2455
    :goto_1d
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 39259
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_38

    const/4 v9, 0x1

    goto :goto_1e

    :cond_38
    const/4 v9, 0x0

    :goto_1e
    const/4 v0, 0x1

    xor-int/lit8 v31, v9, 0x1

    .line 2459
    iget v5, v15, Lo/removeSubscription;->extraCallback:I

    const/4 v13, 0x2

    const/16 v32, 0x0

    if-eq v5, v13, :cond_3b

    .line 2460
    iget-object v5, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v5, :cond_39

    iget-object v5, v5, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v5}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v5

    move-object/from16 v33, v5

    goto :goto_1f

    :cond_39
    move-object/from16 v33, v32

    .line 2461
    :goto_1f
    iget-object v5, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v5, :cond_3a

    iget-object v5, v5, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v14, v5}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v5

    move-object/from16 v34, v5

    goto :goto_20

    :cond_3a
    move-object/from16 v34, v32

    .line 2462
    :goto_20
    iget-object v5, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/16 v16, 0x0

    aget-object v5, v5, v16

    iget-object v7, v15, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v9, v15, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    iget v11, v15, Lo/removeSubscription;->MediaBrowserCompat:I

    iget-object v12, v15, Lo/removeSubscription;->updateVisuals:[I

    aget v12, v12, v16

    iget v0, v15, Lo/removeSubscription;->getServiceComponent:F

    const/4 v1, 0x2

    move v13, v0

    iget v0, v15, Lo/removeSubscription;->asInterface:I

    move/from16 v17, v0

    iget v0, v15, Lo/removeSubscription;->getInterfaceDescriptor:I

    move/from16 v18, v0

    iget v0, v15, Lo/removeSubscription;->warmup:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v35, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v4

    move-object/from16 v4, v33

    move-object/from16 v36, v6

    move/from16 v6, v30

    move-object/from16 v30, v10

    move/from16 v10, v25

    move/from16 v14, v29

    move/from16 v15, v20

    move/from16 v16, v27

    move/from16 v20, v31

    invoke-direct/range {v0 .. v20}, Lo/removeSubscription;->onPostMessage(Lo/isPlayable;ZLo/onSearchResult;Lo/onSearchResult;Lo/removeSubscription$onNavigationEvent;ZLo/MediaBrowserCompat$ServiceBinderWrapper;Lo/MediaBrowserCompat$ServiceBinderWrapper;IIIIFZZIIIFZ)V

    goto :goto_21

    :cond_3b
    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v6

    move-object/from16 v30, v10

    :goto_21
    move-object/from16 v15, p0

    .line 2468
    iget v0, v15, Lo/removeSubscription;->onPostMessage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    return-void

    .line 2478
    :cond_3c
    iget-object v0, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v1, :cond_3d

    instance-of v0, v15, Lo/addSubscription;

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    goto :goto_22

    :cond_3d
    const/4 v6, 0x0

    :goto_22
    if-eqz v24, :cond_3f

    .line 2481
    iget v0, v15, Lo/removeSubscription;->ICustomTabsCallback:I

    if-eq v0, v14, :cond_3e

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3f

    :cond_3e
    const/16 v16, 0x1

    goto :goto_23

    :cond_3f
    const/16 v16, 0x0

    .line 2484
    :goto_23
    iget v0, v15, Lo/removeSubscription;->connect:I

    if-lez v0, :cond_41

    .line 2485
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 40058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 2485
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v14, :cond_40

    .line 2486
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 41058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    move-object/from16 v10, p1

    .line 2486
    invoke-virtual {v0, v10}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    goto :goto_24

    :cond_40
    move-object/from16 v10, p1

    .line 42031
    iget v0, v15, Lo/removeSubscription;->connect:I

    const/4 v1, 0x6

    move-object/from16 v2, v35

    move-object/from16 v4, v36

    .line 2488
    invoke-virtual {v10, v2, v4, v0, v1}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    .line 2489
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_42

    .line 2490
    iget-object v0, v15, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v10, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v0

    const/4 v3, 0x0

    .line 2492
    invoke-virtual {v10, v2, v0, v3, v1}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    const/16 v20, 0x0

    goto :goto_25

    :cond_41
    move-object/from16 v10, p1

    :goto_24
    move-object/from16 v4, v36

    :cond_42
    const/4 v3, 0x0

    move/from16 v20, v31

    .line 2497
    :goto_25
    iget-object v0, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v10, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_26

    :cond_43
    move-object/from16 v25, v32

    .line 2498
    :goto_26
    iget-object v0, v15, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v10, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v0

    move-object/from16 v32, v0

    .line 2499
    :cond_44
    iget-object v0, v15, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v5, v0, v14

    iget-object v7, v15, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, v15, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v9, v15, Lo/removeSubscription;->INotificationSideChannel$Default:I

    iget v11, v15, Lo/removeSubscription;->disconnect:I

    iget-object v0, v15, Lo/removeSubscription;->updateVisuals:[I

    aget v12, v0, v14

    iget v13, v15, Lo/removeSubscription;->isConnected:F

    iget v0, v15, Lo/removeSubscription;->ICustomTabsService:I

    move/from16 v17, v0

    iget v0, v15, Lo/removeSubscription;->newSession:I

    move/from16 v18, v0

    iget v0, v15, Lo/removeSubscription;->ICustomTabsCallback$Stub$Proxy:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    const/16 v22, 0x0

    move-object/from16 v3, v32

    move-object/from16 v27, v4

    move-object/from16 v4, v25

    move/from16 v10, v26

    move/from16 v14, v16

    move/from16 v15, v23

    move/from16 v16, v28

    invoke-direct/range {v0 .. v20}, Lo/removeSubscription;->onPostMessage(Lo/isPlayable;ZLo/onSearchResult;Lo/onSearchResult;Lo/removeSubscription$onNavigationEvent;ZLo/MediaBrowserCompat$ServiceBinderWrapper;Lo/MediaBrowserCompat$ServiceBinderWrapper;IIIIFZZIIIFZ)V

    if-eqz v24, :cond_46

    move-object/from16 v0, p0

    .line 2506
    iget v1, v0, Lo/removeSubscription;->ICustomTabsCallback:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_45

    .line 2507
    iget v6, v0, Lo/removeSubscription;->onMessageChannelReady:F

    .line 42110
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v8

    move-object v1, v8

    move-object/from16 v2, v34

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    move-object/from16 v5, v21

    .line 42111
    invoke-virtual/range {v1 .. v6}, Lo/getDescription;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;F)Lo/getDescription;

    move-object/from16 v9, p1

    .line 42115
    invoke-virtual {v9, v8}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    goto :goto_27

    :cond_45
    move-object/from16 v9, p1

    .line 2509
    iget v6, v0, Lo/removeSubscription;->onMessageChannelReady:F

    .line 43110
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v8

    move-object v1, v8

    move-object/from16 v2, v30

    move-object/from16 v3, v21

    move-object/from16 v4, v34

    move-object/from16 v5, v27

    .line 43111
    invoke-virtual/range {v1 .. v6}, Lo/getDescription;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;F)Lo/getDescription;

    .line 43115
    invoke-virtual {v9, v8}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    goto :goto_27

    :cond_46
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 2513
    :goto_27
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 43259
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    const/4 v2, 0x1

    goto :goto_28

    :cond_47
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_48

    .line 2514
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 44144
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 45112
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 2514
    iget v2, v0, Lo/removeSubscription;->mayLaunchUrl:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v3

    .line 45329
    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v4}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v4

    invoke-virtual {v9, v4}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v11

    .line 45330
    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v4}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v4

    invoke-virtual {v9, v4}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v13

    .line 45331
    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v4}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v4

    invoke-virtual {v9, v4}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v4

    .line 45332
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v5

    invoke-virtual {v9, v5}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v14

    .line 45334
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v1, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v5

    invoke-virtual {v9, v5}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v5

    .line 45335
    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v1, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v6

    invoke-virtual {v9, v6}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v15

    .line 45336
    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v1, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v6

    invoke-virtual {v9, v6}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    .line 45337
    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v1, v7}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v1

    invoke-virtual {v9, v1}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v16

    .line 45339
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v1

    float-to-double v7, v2

    .line 45340
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v2, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    mul-double v5, v17, v2

    double-to-float v5, v5

    move-object v12, v1

    move/from16 v17, v5

    .line 45341
    invoke-virtual/range {v12 .. v17}, Lo/getDescription;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;F)Lo/getDescription;

    .line 45342
    invoke-virtual {v9, v1}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    .line 45343
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v1

    .line 45344
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v2

    double-to-float v15, v5

    move-object v10, v1

    move-object v12, v4

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    .line 45345
    invoke-virtual/range {v10 .. v15}, Lo/getDescription;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;F)Lo/getDescription;

    .line 45346
    invoke-virtual {v9, v1}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    :cond_48
    return-void
.end method

.method public final extraCommand()V
    .locals 3

    .line 2064
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2065
    iget-object v2, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2066
    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInterfaceDescriptor()I
    .locals 2

    .line 20755
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 967
    iget v1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final mayLaunchUrl()I
    .locals 2

    .line 20764
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 976
    iget v1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final newSession()I
    .locals 2

    .line 922
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    iget v1, p0, Lo/removeSubscription;->read:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    .line 1059
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 1213
    iput p1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1214
    iget v0, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge p1, v0, :cond_0

    .line 1215
    iput v0, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 0

    .line 1534
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    sub-int/2addr p2, p1

    .line 1535
    iput p2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1536
    iget p1, p0, Lo/removeSubscription;->disconnect:I

    if-ge p2, p1, :cond_0

    .line 1537
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 1293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1294
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 1296
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1297
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 1299
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 1306
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 1309
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1310
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1311
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1313
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1314
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 1317
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 1319
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1327
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1330
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 1338
    iput p1, p0, Lo/removeSubscription;->setDefaultImpl:F

    .line 1339
    iput v1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    :cond_7
    return-void

    .line 1288
    :cond_8
    :goto_2
    iput v0, p0, Lo/removeSubscription;->setDefaultImpl:F

    return-void
.end method

.method public final onNavigationEvent(Lo/isPlayable;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    .line 701
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    .line 702
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    .line 703
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    .line 704
    iget v0, p0, Lo/removeSubscription;->connect:I

    if-lez v0, :cond_0

    .line 705
    iget-object v0, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 3

    .line 125
    iget v0, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->ICustomTabsService:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->newSession:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 1225
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1226
    iget v0, p0, Lo/removeSubscription;->disconnect:I

    if-ge p1, v0, :cond_0

    .line 1227
    iput v0, p0, Lo/removeSubscription;->INotificationSideChannel:I

    :cond_0
    return-void
.end method

.method public onPostMessage(II)V
    .locals 0

    .line 1089
    iput p1, p0, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    .line 1090
    iput p2, p0, Lo/removeSubscription;->read:I

    return-void
.end method

.method public final onPostMessage(III)V
    .locals 1

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 21520
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    sub-int/2addr p2, p1

    .line 21521
    iput p2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 21522
    iget p1, p0, Lo/removeSubscription;->MediaBrowserCompat:I

    if-ge p2, p1, :cond_1

    .line 21523
    iput p1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 21534
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    sub-int/2addr p2, p1

    .line 21535
    iput p2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 21536
    iget p1, p0, Lo/removeSubscription;->disconnect:I

    if-ge p2, p1, :cond_1

    .line 21537
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1510
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lo/removeSubscription;->search:Z

    return-void
.end method

.method public onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V
    .locals 2

    .line 442
    iget-object p1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 13101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_0

    .line 13102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_0

    .line 13104
    :cond_0
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 443
    :goto_0
    iget-object p1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 14101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_1

    .line 14102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_1

    .line 14104
    :cond_1
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 444
    :goto_1
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 15101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_2

    .line 15102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_2

    .line 15104
    :cond_2
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 445
    :goto_2
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 16101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_3

    .line 16102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_3

    .line 16104
    :cond_3
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 446
    :goto_3
    iget-object p1, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 17101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_4

    .line 17102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_4

    .line 17104
    :cond_4
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 447
    :goto_4
    iget-object p1, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 18101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_5

    .line 18102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_5

    .line 18104
    :cond_5
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 448
    :goto_5
    iget-object p1, p0, Lo/removeSubscription;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 19101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_6

    .line 19102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_6

    .line 19104
    :cond_6
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 449
    :goto_6
    iget-object p1, p0, Lo/removeSubscription;->handleMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 20101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_7

    .line 20102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    return-void

    .line 20104
    :cond_7
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1}, Lo/onSearchResult;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage(Lo/removeSubscription$onNavigationEvent;)V
    .locals 2

    .line 2215
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2216
    sget-object v0, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne p1, v0, :cond_0

    .line 2217
    iget p1, p0, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    .line 23225
    iput p1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 23226
    iget v0, p0, Lo/removeSubscription;->disconnect:I

    if-ge p1, v0, :cond_0

    .line 23227
    iput v0, p0, Lo/removeSubscription;->INotificationSideChannel:I

    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 3

    .line 117
    iget v0, p0, Lo/removeSubscription;->asBinder:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->asInterface:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/removeSubscription;->getInterfaceDescriptor:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v1

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 755
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    return v0
.end method

.method public final onTransact()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 9058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 369
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 10058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 370
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 11058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 371
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 12058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 372
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final postMessage()Lo/removeSubscription$onNavigationEvent;
    .locals 2

    .line 2169
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public requestPostMessageChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat$ServiceBinderWrapper;",
            ">;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") wrap: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateVisuals()V
    .locals 2

    .line 1132
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    .line 1133
    iget v1, p0, Lo/removeSubscription;->INotificationSideChannel$Default:I

    .line 1136
    iput v0, p0, Lo/removeSubscription;->RemoteActionCompatParcelizer:I

    .line 1137
    iput v1, p0, Lo/removeSubscription;->IconCompatParcelizer:I

    return-void
.end method

.method public final warmup()I
    .locals 2

    .line 867
    iget v0, p0, Lo/removeSubscription;->RemoteActionCompatParcelizer:I

    iget v1, p0, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    add-int/2addr v0, v1

    return v0
.end method
