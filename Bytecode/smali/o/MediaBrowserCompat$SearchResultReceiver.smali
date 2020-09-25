.class public final Lo/MediaBrowserCompat$SearchResultReceiver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected ICustomTabsCallback:Lo/removeSubscription;

.field protected ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/removeSubscription;

.field ICustomTabsService:Z

.field protected asBinder:I

.field protected asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field protected extraCallback:Lo/removeSubscription;

.field private getInterfaceDescriptor:I

.field protected newSession:Z

.field protected onMessageChannelReady:Lo/removeSubscription;

.field protected onNavigationEvent:Lo/removeSubscription;

.field protected onPostMessage:Lo/removeSubscription;

.field protected onRelationshipValidationResult:I

.field protected onTransact:F

.field private postMessage:Z

.field private requestPostMessageChannel:Z

.field private warmup:Lo/removeSubscription;


# direct methods
.method public constructor <init>(Lo/removeSubscription;IZ)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onTransact:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->postMessage:Z

    .line 59
    iput-object p1, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onNavigationEvent:Lo/removeSubscription;

    .line 60
    iput p2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    .line 61
    iput-boolean p3, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->postMessage:Z

    return-void
.end method


# virtual methods
.method final extraCallback()V
    .locals 14

    .line 79
    iget v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 80
    iget-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onNavigationEvent:Lo/removeSubscription;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_f

    .line 87
    iget v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onRelationshipValidationResult:I

    add-int/2addr v6, v1

    iput v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onRelationshipValidationResult:I

    .line 88
    iget-object v6, v2, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    iget v7, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 89
    iget-object v6, v2, Lo/removeSubscription;->setCallbacksMessenger:[Lo/removeSubscription;

    iget v7, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aput-object v8, v6, v7

    .line 1643
    iget v6, v2, Lo/removeSubscription;->getExtras:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_a

    .line 92
    iget-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onPostMessage:Lo/removeSubscription;

    if-nez v6, :cond_0

    .line 93
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onPostMessage:Lo/removeSubscription;

    .line 95
    :cond_0
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onMessageChannelReady:Lo/removeSubscription;

    .line 98
    iget-object v6, v2, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    iget v9, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget-object v6, v6, v9

    sget-object v9, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v9, :cond_a

    iget-object v6, v2, Lo/removeSubscription;->onRelationshipValidationResult:[I

    iget v9, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget v6, v6, v9

    const/4 v9, 0x3

    if-eqz v6, :cond_1

    iget-object v6, v2, Lo/removeSubscription;->onRelationshipValidationResult:[I

    iget v10, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget v6, v6, v10

    if-eq v6, v9, :cond_1

    iget-object v6, v2, Lo/removeSubscription;->onRelationshipValidationResult:[I

    iget v10, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget v6, v6, v10

    const/4 v10, 0x2

    if-ne v6, v10, :cond_a

    .line 102
    :cond_1
    iget v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    add-int/2addr v6, v1

    iput v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    .line 103
    iget-object v6, v2, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    iget v10, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget v6, v6, v10

    const/4 v10, 0x0

    cmpl-float v11, v6, v10

    if-lez v11, :cond_2

    .line 105
    iget v11, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onTransact:F

    iget-object v12, v2, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    iget v13, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aget v12, v12, v13

    add-float/2addr v11, v12

    iput v11, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onTransact:F

    .line 108
    :cond_2
    iget v11, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    .line 2643
    iget v12, v2, Lo/removeSubscription;->getExtras:I

    if-eq v12, v7, :cond_4

    .line 2072
    iget-object v7, v2, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v7, v7, v11

    sget-object v12, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v7, v12, :cond_4

    iget-object v7, v2, Lo/removeSubscription;->onRelationshipValidationResult:[I

    aget v7, v7, v11

    if-eqz v7, :cond_3

    iget-object v7, v2, Lo/removeSubscription;->onRelationshipValidationResult:[I

    aget v7, v7, v11

    if-ne v7, v9, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_7

    cmpg-float v6, v6, v10

    if-gez v6, :cond_5

    .line 110
    iput-boolean v1, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback$Stub:Z

    goto :goto_2

    .line 112
    :cond_5
    iput-boolean v1, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->requestPostMessageChannel:Z

    .line 114
    :goto_2
    iget-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->asInterface:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    .line 115
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->asInterface:Ljava/util/ArrayList;

    .line 117
    :cond_6
    iget-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_7
    iget-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/removeSubscription;

    if-nez v6, :cond_8

    .line 121
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/removeSubscription;

    .line 123
    :cond_8
    iget-object v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->warmup:Lo/removeSubscription;

    if-eqz v6, :cond_9

    .line 124
    iget-object v6, v6, Lo/removeSubscription;->setCallbacksMessenger:[Lo/removeSubscription;

    iget v7, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aput-object v2, v6, v7

    .line 126
    :cond_9
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->warmup:Lo/removeSubscription;

    :cond_a
    if-eq v4, v2, :cond_b

    .line 130
    iget-object v4, v4, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    iget v6, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    aput-object v2, v4, v6

    .line 135
    :cond_b
    iget-object v4, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v6, v0, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v4, :cond_d

    .line 137
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 138
    iget-object v6, v4, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v0

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_d

    iget-object v6, v4, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v0

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-eq v6, v2, :cond_c

    goto :goto_3

    :cond_c
    move-object v8, v4

    :cond_d
    :goto_3
    if-eqz v8, :cond_e

    move-object v4, v2

    move-object v2, v8

    goto/16 :goto_0

    :cond_e
    move-object v4, v2

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 151
    :cond_f
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->extraCallback:Lo/removeSubscription;

    .line 153
    iget v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->getInterfaceDescriptor:I

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->postMessage:Z

    if-eqz v0, :cond_10

    .line 154
    iput-object v2, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback:Lo/removeSubscription;

    goto :goto_4

    .line 156
    :cond_10
    iget-object v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->onNavigationEvent:Lo/removeSubscription;

    iput-object v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback:Lo/removeSubscription;

    .line 159
    :goto_4
    iget-boolean v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->requestPostMessageChannel:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lo/MediaBrowserCompat$SearchResultReceiver;->newSession:Z

    return-void
.end method
