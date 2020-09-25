.class public final Lo/registerCallbackMessenger;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:I

.field asBinder:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field asInterface:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:[I

.field onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:I

.field onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lo/registerCallbackMessenger;->onRelationshipValidationResult:I

    .line 39
    iput v0, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 41
    iput-object v2, p0, Lo/registerCallbackMessenger;->extraCallback:[I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/removeSubscription;",
            ">;B)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lo/registerCallbackMessenger;->onRelationshipValidationResult:I

    .line 39
    iput p2, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p2, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    .line 41
    iput-object v1, p0, Lo/registerCallbackMessenger;->extraCallback:[I

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    .line 50
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    .line 61
    iput-boolean v0, p0, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    return-void
.end method

.method private ICustomTabsCallback(Lo/removeSubscription;)V
    .locals 8

    .line 174
    iget-boolean v0, p1, Lo/removeSubscription;->unsubscribe:Z

    if-eqz v0, :cond_15

    .line 176
    invoke-virtual {p1}, Lo/removeSubscription;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 184
    iget-object v3, p1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    goto :goto_1

    .line 186
    :cond_2
    iget-object v3, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    :goto_1
    const/16 v4, 0x8

    if-eqz v3, :cond_6

    .line 189
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-boolean v5, v5, Lo/removeSubscription;->search:Z

    if-nez v5, :cond_3

    .line 190
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-direct {p0, v5}, Lo/registerCallbackMessenger;->ICustomTabsCallback(Lo/removeSubscription;)V

    .line 192
    :cond_3
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v5, v6, :cond_5

    .line 193
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v5, v5, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 1773
    iget v6, v3, Lo/removeSubscription;->getExtras:I

    if-ne v6, v4, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 1776
    :cond_4
    iget v3, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_2
    add-int/2addr v5, v3

    goto :goto_3

    .line 194
    :cond_5
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v5, v6, :cond_6

    .line 195
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v5, v3, Lo/removeSubscription;->INotificationSideChannel$Stub:I

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    sub-int/2addr v5, v0

    goto :goto_5

    .line 201
    :cond_7
    iget-object v0, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    .line 2773
    iget v3, p1, Lo/removeSubscription;->getExtras:I

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    .line 2776
    :cond_8
    iget v3, p1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_4
    add-int/2addr v0, v3

    add-int/2addr v5, v0

    .line 3773
    :goto_5
    iget v0, p1, Lo/removeSubscription;->getExtras:I

    if-ne v0, v4, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    .line 3776
    :cond_9
    iget v0, p1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_6
    sub-int v0, v5, v0

    .line 204
    invoke-virtual {p1, v0, v5}, Lo/removeSubscription;->extraCallback(II)V

    .line 206
    iget-object v0, p1, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p1, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 208
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-boolean v2, v2, Lo/removeSubscription;->search:Z

    if-nez v2, :cond_a

    .line 209
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-direct {p0, v2}, Lo/registerCallbackMessenger;->ICustomTabsCallback(Lo/removeSubscription;)V

    .line 211
    :cond_a
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v2, v2, Lo/removeSubscription;->INotificationSideChannel$Default:I

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v0, v0, Lo/removeSubscription;->connect:I

    add-int/2addr v2, v0

    iget v0, p1, Lo/removeSubscription;->connect:I

    sub-int/2addr v2, v0

    .line 213
    iget v0, p1, Lo/removeSubscription;->INotificationSideChannel:I

    add-int/2addr v0, v2

    .line 214
    invoke-virtual {p1, v2, v0}, Lo/removeSubscription;->onNavigationEvent(II)V

    .line 215
    iput-boolean v1, p1, Lo/removeSubscription;->search:Z

    return-void

    .line 218
    :cond_b
    iget-object v0, p1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_d

    .line 221
    iget-object v3, p1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    goto :goto_8

    .line 223
    :cond_d
    iget-object v3, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    :goto_8
    if-eqz v3, :cond_11

    .line 226
    iget-object v6, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-boolean v6, v6, Lo/removeSubscription;->search:Z

    if-nez v6, :cond_e

    .line 227
    iget-object v6, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-direct {p0, v6}, Lo/registerCallbackMessenger;->ICustomTabsCallback(Lo/removeSubscription;)V

    .line 229
    :cond_e
    iget-object v6, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v6, v7, :cond_10

    .line 230
    iget-object v5, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v5, v5, Lo/removeSubscription;->INotificationSideChannel$Default:I

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 3830
    iget v6, v3, Lo/removeSubscription;->getExtras:I

    if-ne v6, v4, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    .line 3833
    :cond_f
    iget v3, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_9
    add-int/2addr v5, v3

    goto :goto_a

    .line 231
    :cond_10
    iget-object v6, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v6, v7, :cond_11

    .line 232
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v5, v3, Lo/removeSubscription;->INotificationSideChannel$Default:I

    :cond_11
    :goto_a
    if-eqz v0, :cond_12

    .line 236
    iget-object v0, p1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    sub-int/2addr v5, v0

    goto :goto_c

    .line 238
    :cond_12
    iget-object v0, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    .line 4830
    iget v3, p1, Lo/removeSubscription;->getExtras:I

    if-ne v3, v4, :cond_13

    const/4 v3, 0x0

    goto :goto_b

    .line 4833
    :cond_13
    iget v3, p1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_b
    add-int/2addr v0, v3

    add-int/2addr v5, v0

    .line 5830
    :goto_c
    iget v0, p1, Lo/removeSubscription;->getExtras:I

    if-ne v0, v4, :cond_14

    goto :goto_d

    .line 5833
    :cond_14
    iget v2, p1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_d
    sub-int v0, v5, v2

    .line 241
    invoke-virtual {p1, v0, v5}, Lo/removeSubscription;->onNavigationEvent(II)V

    .line 242
    iput-boolean v1, p1, Lo/removeSubscription;->search:Z

    :cond_15
    return-void
.end method


# virtual methods
.method final onMessageChannelReady(Ljava/util/ArrayList;Lo/removeSubscription;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/removeSubscription;",
            ">;",
            "Lo/removeSubscription;",
            ")V"
        }
    .end annotation

    .line 122
    iget-boolean v0, p2, Lo/removeSubscription;->sendCustomAction:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p2, Lo/removeSubscription;->sendCustomAction:Z

    .line 127
    invoke-virtual {p2}, Lo/removeSubscription;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 130
    :cond_1
    instance-of v0, p2, Lo/MediaBrowserCompat$Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 131
    move-object v0, p2

    check-cast v0, Lo/MediaBrowserCompat$Subscription;

    .line 132
    iget v2, v0, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 134
    iget-object v4, v0, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v4}, Lo/registerCallbackMessenger;->onMessageChannelReady(Ljava/util/ArrayList;Lo/removeSubscription;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 140
    iget-object v2, p2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v1

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_3

    .line 143
    iget-object v3, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-eqz v2, :cond_3

    .line 1555
    iget-object v2, p2, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eq v3, v2, :cond_3

    .line 149
    invoke-virtual {p0, p1, v3}, Lo/registerCallbackMessenger;->onMessageChannelReady(Ljava/util/ArrayList;Lo/removeSubscription;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method final onPostMessage()V
    .locals 3

    .line 158
    iget-object v0, p0, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    iget-object v2, p0, Lo/registerCallbackMessenger;->onTransact:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    .line 163
    invoke-direct {p0, v2}, Lo/registerCallbackMessenger;->ICustomTabsCallback(Lo/removeSubscription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
