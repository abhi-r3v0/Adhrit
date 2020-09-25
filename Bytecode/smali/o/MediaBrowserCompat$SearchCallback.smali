.class public final Lo/MediaBrowserCompat$SearchCallback;
.super Lo/MediaBrowserCompat$Subscription;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field private onConnectionSuspended:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/isEmpty;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/MediaBrowserCompat$Subscription;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SearchCallback;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 7

    .line 65
    iget-object p1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    check-cast p1, Lo/addSubscription;

    .line 1131
    iget p1, p1, Lo/addSubscription;->onResult:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 73
    :cond_2
    iget p1, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    const/4 v3, 0x3

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    return-void

    .line 84
    :cond_3
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_1

    .line 81
    :cond_4
    iget-object p1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_1

    .line 78
    :cond_5
    iget-object p1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 3058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_1

    .line 75
    :cond_6
    iget-object p1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    :goto_1
    const/4 v4, 0x5

    .line 5224
    iput v4, p1, Lo/isEmpty;->asBinder:I

    .line 91
    iget v4, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    if-ne v4, v2, :cond_7

    goto :goto_2

    .line 95
    :cond_7
    iget-object v4, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 8058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 95
    invoke-virtual {v4, v6, v5}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 96
    iget-object v4, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 9058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 96
    invoke-virtual {v4, v6, v5}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    goto :goto_3

    .line 92
    :cond_8
    :goto_2
    iget-object v4, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 6058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 92
    invoke-virtual {v4, v6, v5}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 93
    iget-object v4, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 7058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 93
    invoke-virtual {v4, v6, v5}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 99
    :goto_3
    iget-object v4, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 100
    :goto_4
    iget v4, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    if-ge v1, v4, :cond_f

    .line 101
    iget-object v4, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    aget-object v4, v4, v1

    .line 102
    iget-boolean v5, p0, Lo/MediaBrowserCompat$SearchCallback;->ICustomTabsCallback:Z

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lo/removeSubscription;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 106
    :cond_9
    iget v5, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eqz v5, :cond_d

    if-eq v5, v2, :cond_c

    if-eq v5, v0, :cond_b

    if-eq v5, v3, :cond_a

    move-object v4, v6

    goto :goto_5

    .line 117
    :cond_a
    iget-object v4, v4, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 13058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_5

    .line 114
    :cond_b
    iget-object v4, v4, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 12058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_5

    .line 111
    :cond_c
    iget-object v4, v4, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 11058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_5

    .line 108
    :cond_d
    iget-object v4, v4, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 10058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    :goto_5
    if-eqz v4, :cond_e

    .line 121
    iget-object v5, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14038
    iget-object v4, v4, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback()V
    .locals 1

    .line 55
    invoke-super {p0}, Lo/MediaBrowserCompat$Subscription;->extraCallback()V

    .line 56
    iget-object v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public final extraCallback(Lo/isPlayable;)V
    .locals 13

    .line 209
    iget-object v0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    .line 213
    :goto_0
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v0

    iget-object v6, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    iput-object v6, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-ltz v0, :cond_14

    const/4 v1, 0x4

    if-ge v0, v1, :cond_14

    .line 217
    iget-object v0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v1, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 224
    :goto_1
    iget v6, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    if-ge v1, v6, :cond_6

    .line 225
    iget-object v6, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    aget-object v6, v6, v1

    .line 226
    iget-boolean v7, p0, Lo/MediaBrowserCompat$SearchCallback;->ICustomTabsCallback:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lo/removeSubscription;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 229
    :cond_1
    iget v7, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eqz v7, :cond_2

    if-ne v7, v4, :cond_3

    .line 230
    :cond_2
    invoke-virtual {v6}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v7

    sget-object v8, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v7, v8, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 233
    :cond_3
    iget v7, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eq v7, v3, :cond_4

    if-ne v7, v5, :cond_5

    .line 234
    :cond_4
    invoke-virtual {v6}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v6

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 239
    :goto_3
    iget v6, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eqz v6, :cond_8

    if-ne v6, v4, :cond_7

    goto :goto_4

    .line 22555
    :cond_7
    iget-object v6, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 244
    invoke-virtual {v6}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v6

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v7, :cond_9

    goto :goto_5

    .line 21555
    :cond_8
    :goto_4
    iget-object v6, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 240
    invoke-virtual {v6}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v6

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v7, :cond_9

    :goto_5
    const/4 v1, 0x0

    :cond_9
    const/4 v6, 0x0

    .line 248
    :goto_6
    iget v7, p0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    if-ge v6, v7, :cond_10

    .line 249
    iget-object v7, p0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    aget-object v7, v7, v6

    .line 250
    iget-boolean v8, p0, Lo/MediaBrowserCompat$SearchCallback;->ICustomTabsCallback:Z

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lo/removeSubscription;->ICustomTabsCallback()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 253
    :cond_a
    iget-object v8, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v9, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v8

    .line 254
    iget-object v7, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v9, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    aget-object v7, v7, v9

    iput-object v8, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 255
    iget v7, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v7, :cond_d

    if-ne v7, v3, :cond_b

    goto :goto_7

    .line 258
    :cond_b
    iget-object v7, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 25029
    invoke-virtual {p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v11

    .line 25030
    invoke-virtual {p1}, Lo/isPlayable;->extraCallback()Lo/onSearchResult;

    move-result-object v12

    .line 25031
    iput v2, v12, Lo/onSearchResult;->ICustomTabsCallback:I

    .line 25032
    invoke-virtual {v11, v7, v8, v12, v2}, Lo/getDescription;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;I)Lo/getDescription;

    if-eqz v1, :cond_c

    .line 25035
    iget-object v7, v11, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v7, v12}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    .line 25258
    invoke-virtual {p1, v4, v9}, Lo/isPlayable;->extraCallback(ILjava/lang/String;)Lo/onSearchResult;

    move-result-object v8

    .line 26153
    iget-object v9, v11, Lo/getDescription;->onPostMessage:Lo/getFlags;

    int-to-float v7, v7

    invoke-virtual {v9, v8, v7}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 25038
    :cond_c
    invoke-virtual {p1, v11}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    goto :goto_8

    .line 256
    :cond_d
    :goto_7
    iget-object v7, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 23067
    invoke-virtual {p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v11

    .line 23068
    invoke-virtual {p1}, Lo/isPlayable;->extraCallback()Lo/onSearchResult;

    move-result-object v12

    .line 23069
    iput v2, v12, Lo/onSearchResult;->ICustomTabsCallback:I

    .line 23070
    invoke-virtual {v11, v7, v8, v12, v2}, Lo/getDescription;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;I)Lo/getDescription;

    if-eqz v1, :cond_e

    .line 23073
    iget-object v7, v11, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v7, v12}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result v7

    mul-float v7, v7, v10

    float-to-int v7, v7

    .line 23258
    invoke-virtual {p1, v4, v9}, Lo/isPlayable;->extraCallback(ILjava/lang/String;)Lo/onSearchResult;

    move-result-object v8

    .line 24153
    iget-object v9, v11, Lo/getDescription;->onPostMessage:Lo/getFlags;

    int-to-float v7, v7

    invoke-virtual {v9, v8, v7}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 23076
    :cond_e
    invoke-virtual {p1, v11}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    :cond_f
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 262
    :cond_10
    iget v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_11

    .line 263
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-nez v1, :cond_14

    .line 265
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v1, v1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    return-void

    :cond_11
    if-ne v0, v4, :cond_12

    .line 268
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-nez v1, :cond_14

    .line 270
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v1, v1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    return-void

    :cond_12
    if-ne v0, v3, :cond_13

    .line 273
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-nez v1, :cond_14

    .line 275
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v1, v1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    return-void

    :cond_13
    if-ne v0, v5, :cond_14

    .line 278
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-nez v1, :cond_14

    .line 280
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v1, v1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    :cond_14
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 10

    .line 134
    iget v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 17058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 16058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 15058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 14058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 153
    :goto_1
    iget-object v5, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_8

    .line 156
    iget-object v8, p0, Lo/MediaBrowserCompat$SearchCallback;->onConnectionSuspended:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/isEmpty;

    .line 157
    iget v9, v8, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v9, v4, :cond_4

    return-void

    .line 160
    :cond_4
    iget v9, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eqz v9, :cond_6

    if-ne v9, v3, :cond_5

    goto :goto_3

    .line 166
    :cond_5
    iget v9, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    cmpl-float v9, v9, v1

    if-lez v9, :cond_7

    .line 167
    iget v1, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 168
    iget-object v6, v8, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    goto :goto_4

    .line 161
    :cond_6
    :goto_3
    iget v9, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    cmpg-float v9, v9, v1

    if-gez v9, :cond_7

    .line 162
    iget v1, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 163
    iget-object v6, v8, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 173
    :cond_8
    invoke-static {}, Lo/isPlayable;->onPostMessage()Lo/extraCallback$onNavigationEvent;

    .line 180
    iput-object v6, v0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 181
    iput v1, v0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 182
    invoke-virtual {v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    .line 183
    iget v0, p0, Lo/MediaBrowserCompat$SearchCallback;->onMessageChannelReady:I

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    return-void

    .line 194
    :cond_9
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 21058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 194
    invoke-virtual {v0, v6, v1}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    return-void

    .line 191
    :cond_a
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 20058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 191
    invoke-virtual {v0, v6, v1}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    return-void

    .line 188
    :cond_b
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 19058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 188
    invoke-virtual {v0, v6, v1}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    return-void

    .line 185
    :cond_c
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 18058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 185
    invoke-virtual {v0, v6, v1}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    return-void
.end method
