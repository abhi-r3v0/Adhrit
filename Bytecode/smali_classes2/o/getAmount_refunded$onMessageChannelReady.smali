.class public final Lo/getAmount_refunded$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPaymentMode$ICustomTabsCallback;
.implements Lo/openDeeplink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAmount_refunded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getPaymentMode$ICustomTabsCallback;",
        "Lo/openDeeplink;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

.field final synthetic ICustomTabsCallback$Stub:Lo/getAmount_refunded;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/setEnable;

.field private final ICustomTabsService:Lo/AmexWebViewInterface;

.field private final asBinder:Lo/RefundAccount$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RefundAccount$$Parcelable<",
            "TO;>;"
        }
    .end annotation
.end field

.field asInterface:Lo/setReferenceId;

.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getAmount_refunded$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;",
            "Lo/getCreditScore;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/SlackMessage;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Z

.field final onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/getContacts;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/setCustomAmount$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/getAmount_refunded;Lo/setPaymentDueDateWeaklyTyped;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    .line 1220
    iget-object v1, p1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lo/setPaymentDueDateWeaklyTyped;->zaa(Landroid/os/Looper;Lo/getAmount_refunded$onMessageChannelReady;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v1

    iput-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    .line 8
    instance-of v2, v1, Lo/getDisplayPriority;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lo/getDisplayPriority;

    .line 2009
    iget-object v1, v1, Lo/getDisplayPriority;->onNavigationEvent:Lo/setCustomAmount$asInterface;

    .line 9
    iput-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onTransact:Lo/setCustomAmount$onMessageChannelReady;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onTransact:Lo/setCustomAmount$onMessageChannelReady;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lo/setPaymentDueDateWeaklyTyped;->getApiKey()Lo/RefundAccount$$Parcelable;

    move-result-object v1

    iput-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    .line 12
    new-instance v1, Lo/AmexWebViewInterface;

    invoke-direct {v1}, Lo/AmexWebViewInterface;-><init>()V

    iput-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsService:Lo/AmexWebViewInterface;

    .line 13
    invoke-virtual {p2}, Lo/setPaymentDueDateWeaklyTyped;->getInstanceId()I

    move-result v1

    iput v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage:I

    .line 14
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2221
    iget-object v0, p1, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    .line 3220
    iget-object p1, p1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 15
    invoke-virtual {p2, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(Landroid/content/Context;Landroid/os/Handler;)Lo/setEnable;

    move-result-object p1

    iput-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setEnable;

    return-void

    .line 16
    :cond_1
    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setEnable;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 0

    .line 286
    iget-object p0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    return-object p0
.end method

.method private final ICustomTabsCallback(Lo/setReferenceId;)Z
    .locals 3

    .line 14225
    sget-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 14226
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 14227
    iget-object v1, v1, Lo/getAmount_refunded;->getInterfaceDescriptor:Ljava/util/Set;

    .line 63
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 15226
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    .line 64
    iget v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {v1, p1, v2}, Lo/FragmentViewBindingDelegate$1;->extraCallback(Lo/setReferenceId;I)V

    const/4 p1, 0x1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 66
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0

    throw p1
.end method

.method private final ICustomTabsCallback$Stub()V
    .locals 4

    .line 6128
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 6220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 6128
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 6129
    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    .line 23
    sget-object v0, Lo/setReferenceId;->onPostMessage:Lo/setReferenceId;

    invoke-direct {p0, v0}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback(Lo/setReferenceId;)V

    .line 24
    invoke-virtual {p0}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback()V

    .line 25
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCreditScore;

    .line 28
    iget-object v2, v1, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    invoke-virtual {v2}, Lo/getMismatchDetails;->onMessageChannelReady()[Lo/setAmountRefunded;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback([Lo/setAmountRefunded;)Lo/setAmountRefunded;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    iget-object v1, v1, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->onTransact:Lo/setCustomAmount$onMessageChannelReady;

    new-instance v3, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v3}, Lo/removeBackgroundStateChangeListener;-><init>()V

    invoke-virtual {v1, v2, v3}, Lo/getMismatchDetails;->onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionSuspended(I)V

    .line 35
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    .line 40
    :cond_1
    invoke-virtual {p0}, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady()V

    .line 41
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->asBinder()V

    return-void
.end method

.method private final asBinder()V
    .locals 4

    .line 198
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 37220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 198
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 38220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 199
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 39220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 200
    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 39230
    iget-wide v2, v2, Lo/getAmount_refunded;->onMessageChannelReady:J

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final asInterface()V
    .locals 4

    .line 9128
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 9220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 9128
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 9129
    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    .line 49
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsService:Lo/AmexWebViewInterface;

    invoke-virtual {v0}, Lo/AmexWebViewInterface;->onNavigationEvent()V

    .line 50
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 10220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 50
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 11220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 51
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 11222
    iget-wide v2, v2, Lo/getAmount_refunded;->onPostMessage:J

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 12220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 53
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 13220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 54
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 13223
    iget-wide v2, v2, Lo/getAmount_refunded;->extraCallback:J

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 13224
    iget-object v0, v0, Lo/getAmount_refunded;->asBinder:Lo/getTotalPaid;

    .line 14026
    iget-object v0, v0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private final extraCallback([Lo/setAmountRefunded;)Lo/setAmountRefunded;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 241
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_5

    .line 244
    :cond_0
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    .line 245
    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getAvailableFeatures()[Lo/setAmountRefunded;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lo/setAmountRefunded;

    .line 248
    :cond_1
    new-instance v3, Lo/postOrRun;

    array-length v4, v1

    invoke-direct {v3, v4}, Lo/postOrRun;-><init>(I)V

    .line 249
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, -0x1

    if-ge v5, v4, :cond_3

    aget-object v8, v1, v5

    .line 43011
    iget-object v9, v8, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 43012
    iget-wide v10, v8, Lo/setAmountRefunded;->extraCallback:J

    cmp-long v12, v10, v6

    if-nez v12, :cond_2

    iget v6, v8, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v6, v6

    goto :goto_1

    :cond_2
    iget-wide v6, v8, Lo/setAmountRefunded;->extraCallback:J

    .line 250
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    :cond_3
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v4, p1, v2

    .line 44011
    iget-object v5, v4, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 253
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45011
    iget-object v5, v4, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 254
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 45012
    iget-wide v10, v4, Lo/setAmountRefunded;->extraCallback:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_4

    iget v5, v4, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v10, v5

    goto :goto_3

    :cond_4
    iget-wide v10, v4, Lo/setAmountRefunded;->extraCallback:J

    :goto_3
    cmp-long v5, v8, v10

    if-gez v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object v4

    :cond_7
    :goto_5
    return-object v0
.end method

.method private final extraCallback(Lo/setReferenceId;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SlackMessage;

    const/4 v2, 0x0

    .line 231
    sget-object v3, Lo/setReferenceId;->onPostMessage:Lo/setReferenceId;

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_0

    .line 43001
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 232
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v2}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_2
    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-virtual {v1, v3, p1, v2}, Lo/SlackMessage;->ICustomTabsCallback(Lo/RefundAccount$$Parcelable;Lo/setReferenceId;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->asInterface()V

    return-void
.end method

.method private final onNavigationEvent(Lo/getContacts;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsService:Lo/AmexWebViewInterface;

    .line 33238
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result v1

    .line 166
    invoke-virtual {p1, v0, v1}, Lo/getContacts;->onPostMessage(Lo/AmexWebViewInterface;Z)V

    .line 167
    :try_start_0
    invoke-virtual {p1, p0}, Lo/getContacts;->onPostMessage(Lo/getAmount_refunded$onMessageChannelReady;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionSuspended(I)V

    .line 171
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {p1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    return-void
.end method

.method private final onPostMessage(Lo/getContacts;)Z
    .locals 5

    .line 133
    instance-of v0, p1, Lo/Contacts;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent(Lo/getContacts;)V

    return v1

    .line 136
    :cond_0
    move-object v0, p1

    check-cast v0, Lo/Contacts;

    .line 137
    invoke-virtual {v0, p0}, Lo/Contacts;->extraCallback(Lo/getAmount_refunded$onMessageChannelReady;)[Lo/setAmountRefunded;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback([Lo/setAmountRefunded;)Lo/setAmountRefunded;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent(Lo/getContacts;)V

    return v1

    .line 141
    :cond_1
    invoke-virtual {v0, p0}, Lo/Contacts;->onMessageChannelReady(Lo/getAmount_refunded$onMessageChannelReady;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 143
    new-instance p1, Lo/getAmount_refunded$onPostMessage;

    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-direct {p1, v0, v2, v1}, Lo/getAmount_refunded$onPostMessage;-><init>(Lo/RefundAccount$$Parcelable;Lo/setAmountRefunded;B)V

    .line 144
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    .line 146
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getAmount_refunded$onPostMessage;

    .line 147
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 26220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 147
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 27220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 148
    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 28220
    iget-object v3, v3, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 149
    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 28222
    iget-wide v2, v2, Lo/getAmount_refunded;->onPostMessage:J

    .line 150
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 29220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 153
    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 30220
    iget-object v3, v3, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 154
    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 30222
    iget-wide v3, v3, Lo/getAmount_refunded;->onPostMessage:J

    .line 155
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 31220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 156
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 32220
    iget-object v2, v2, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 157
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 32223
    iget-wide v2, v2, Lo/getAmount_refunded;->extraCallback:J

    .line 159
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    new-instance p1, Lo/setReferenceId;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    .line 161
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferenceId;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    iget v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage:I

    .line 33214
    iget-object v3, v0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    iget-object v0, v0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {v3, v0, p1, v2}, Lo/getMinAmount;->onPostMessage(Landroid/content/Context;Lo/setReferenceId;I)Z

    goto :goto_0

    .line 164
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lo/setAmountRefunded;)V

    invoke-virtual {v0, p1}, Lo/getContacts;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;",
            "Lo/getCreditScore;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/getContacts;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 24220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 103
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 104
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lo/getContacts;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->asBinder()V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    if-eqz p1, :cond_3

    .line 25019
    iget v0, p1, Lo/setReferenceId;->onNavigationEvent:I

    if-eqz v0, :cond_2

    iget-object p1, p1, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 111
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    invoke-virtual {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    return-void
.end method

.method final extraCallback()V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 35220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 184
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 36220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 185
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 4220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 18
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 19
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 5220
    iget-object p1, p1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 20
    new-instance v0, Lo/CreditScore;

    invoke-direct {v0, p0}, Lo/CreditScore;-><init>(Lo/getAmount_refunded$onMessageChannelReady;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lo/setReferenceId;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 16220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 72
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setEnable;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lo/setEnable;->onNavigationEvent()V

    .line 17128
    :cond_0
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 17220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 17128
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 17129
    iput-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    .line 76
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 17224
    iget-object v0, v0, Lo/getAmount_refunded;->asBinder:Lo/getTotalPaid;

    .line 18026
    iget-object v0, v0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 77
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback(Lo/setReferenceId;)V

    .line 19021
    iget v0, p1, Lo/setReferenceId;->onNavigationEvent:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 19228
    sget-object p1, Lo/getAmount_refunded;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    .line 79
    invoke-virtual {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iput-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    return-void

    .line 84
    :cond_2
    invoke-direct {p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferenceId;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 86
    :cond_3
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    iget v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage:I

    .line 20214
    iget-object v2, v0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    iget-object v0, v0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {v2, v0, p1, v1}, Lo/getMinAmount;->onPostMessage(Landroid/content/Context;Lo/setReferenceId;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21021
    iget v0, p1, Lo/setReferenceId;->onNavigationEvent:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    .line 89
    :cond_4
    iget-boolean v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_5

    .line 90
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 21220
    iget-object p1, p1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 90
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 22220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 91
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 22222
    iget-wide v1, v1, Lo/getAmount_refunded;->onPostMessage:J

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 93
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    .line 23017
    iget-object v2, v2, Lo/RefundAccount$$Parcelable;->onNavigationEvent:Lo/setCustomAmount;

    .line 24016
    iget-object v2, v2, Lo/setCustomAmount;->onMessageChannelReady:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 7220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 43
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->asInterface()V

    return-void

    .line 45
    :cond_0
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 8220
    iget-object p1, p1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 45
    new-instance v0, Lo/getBureauEmail;

    invoke-direct {v0, p0}, Lo/getBureauEmail;-><init>(Lo/getAmount_refunded$onMessageChannelReady;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final onMessageChannelReady()V
    .locals 5

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lo/getContacts;

    .line 98
    iget-object v4, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v4}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    invoke-direct {p0, v3}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lo/getContacts;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNavigationEvent()Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method final onNavigationEvent(Z)Z
    .locals 2

    .line 204
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 40220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 204
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsService:Lo/AmexWebViewInterface;

    invoke-virtual {v0}, Lo/AmexWebViewInterface;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lo/getAmount_refunded$onMessageChannelReady;->asBinder()V

    :cond_0
    return v1

    .line 210
    :cond_1
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {p1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final onPostMessage()V
    .locals 6

    .line 114
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 25220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 114
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 115
    sget-object v0, Lo/getAmount_refunded;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    .line 116
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsService:Lo/AmexWebViewInterface;

    invoke-virtual {v0}, Lo/AmexWebViewInterface;->ICustomTabsCallback()V

    .line 117
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    .line 118
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/getPaymentMethod$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getPaymentMethod$onPostMessage;

    .line 119
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 120
    new-instance v4, Lo/getOptedIn;

    new-instance v5, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v5}, Lo/removeBackgroundStateChangeListener;-><init>()V

    invoke-direct {v4, v3, v5}, Lo/getOptedIn;-><init>(Lo/getPaymentMethod$onPostMessage;Lo/removeBackgroundStateChangeListener;)V

    invoke-virtual {p0, v4}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback(Lo/getContacts;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lo/setReferenceId;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo/setReferenceId;-><init>(I)V

    invoke-direct {p0, v0}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback(Lo/setReferenceId;)V

    .line 123
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    new-instance v1, Lo/EmailJsonAdapter;

    invoke-direct {v1, p0}, Lo/EmailJsonAdapter;-><init>(Lo/getAmount_refunded$onMessageChannelReady;)V

    invoke-interface {v0, v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->onUserSignOut(Lo/getPrimaryButtonText$extraCallback;)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 34220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 173
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 174
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getContacts;

    .line 175
    invoke-virtual {v1, p1}, Lo/getContacts;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method final onPostMessage(Lo/getAmount_refunded$onPostMessage;)V
    .locals 5

    .line 265
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 45220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0xf

    .line 266
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 46220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 267
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 47015
    iget-object p1, p1, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getContacts;

    .line 271
    instance-of v3, v2, Lo/Contacts;

    if-eqz v3, :cond_0

    .line 272
    move-object v3, v2

    check-cast v3, Lo/Contacts;

    invoke-virtual {v3, p0}, Lo/Contacts;->extraCallback(Lo/getAmount_refunded$onMessageChannelReady;)[Lo/setAmountRefunded;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 273
    invoke-static {v3, p1}, Lo/extraCallback;->extraCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lo/getContacts;

    .line 277
    iget-object v4, p0, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 278
    new-instance v4, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lo/setAmountRefunded;)V

    invoke-virtual {v3, v4}, Lo/getContacts;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 4

    .line 213
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 41220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 213
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 214
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 41224
    iget-object v0, v0, Lo/getAmount_refunded;->asBinder:Lo/getTotalPaid;

    .line 216
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 42221
    iget-object v1, v1, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    .line 216
    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-virtual {v0, v1, v2}, Lo/getTotalPaid;->ICustomTabsCallback(Landroid/content/Context;Lo/setCustomAmount$ICustomTabsCallback$Stub;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v1, Lo/setReferenceId;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    .line 219
    invoke-virtual {p0, v1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 221
    :cond_1
    new-instance v0, Lo/getAmount_refunded$ICustomTabsCallback;

    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    iget-object v2, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    iget-object v3, p0, Lo/getAmount_refunded$onMessageChannelReady;->asBinder:Lo/RefundAccount$$Parcelable;

    invoke-direct {v0, v1, v2, v3}, Lo/getAmount_refunded$ICustomTabsCallback;-><init>(Lo/getAmount_refunded;Lo/setCustomAmount$ICustomTabsCallback$Stub;Lo/RefundAccount$$Parcelable;)V

    .line 222
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setEnable;

    invoke-virtual {v1, v0}, Lo/setEnable;->onNavigationEvent(Lo/ReminderResponse;)V

    .line 224
    :cond_2
    iget-object v1, p0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1, v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->connect(Lo/getPrimaryButtonText$onNavigationEvent;)V

    :cond_3
    :goto_0
    return-void
.end method
