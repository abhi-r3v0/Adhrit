.class final Lo/getCompoundHash;
.super Lo/insert;
.source ""

# interfaces
.implements Lo/splitBytes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCompoundHash$IPostMessageService$Stub;,
        Lo/getCompoundHash$updateVisuals;,
        Lo/getCompoundHash$ICustomTabsService$Stub;,
        Lo/getCompoundHash$postMessage;,
        Lo/getCompoundHash$newSession;,
        Lo/getCompoundHash$getInterfaceDescriptor;,
        Lo/getCompoundHash$ICustomTabsService;,
        Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;,
        Lo/getCompoundHash$requestPostMessageChannel;,
        Lo/getCompoundHash$mayLaunchUrl;,
        Lo/getCompoundHash$IPostMessageService;,
        Lo/getCompoundHash$extraCommand;,
        Lo/getCompoundHash$asInterface;,
        Lo/getCompoundHash$warmup;,
        Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/insert;",
        "Lo/splitBytes<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/logging/Logger;

.field private static final ICustomTabsCallback$Stub:Lo/getCompoundHash$IPostMessageService$Stub;

.field private static asBinder:Ljava/util/regex/Pattern;

.field static final onNavigationEvent:Lo/emptyMap;

.field static final onPostMessage:Lo/emptyMap;

.field private static onTransact:Lo/emptyMap;


# instance fields
.field private final AudioAttributesCompatParcelizer:Lo/getCompoundHash$IPostMessageService;

.field private final AudioAttributesImplApi21Parcelizer:Ljava/util/concurrent/CountDownLatch;

.field private AudioAttributesImplBaseParcelizer:Z

.field private final ICustomTabsCallback$Stub$Proxy:Lo/getRight;

.field private final ICustomTabsService:Lo/fixUp;

.field private ICustomTabsService$Stub:Z

.field private final ICustomTabsService$Stub$Proxy:Lo/sendUnauth;

.field private final INotificationSideChannel:Lo/getIdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getIdManager<",
            "Lo/Onboarding$3;",
            ">;"
        }
    .end annotation
.end field

.field private INotificationSideChannel$Default:Lo/reverseIteratorFrom;

.field private final INotificationSideChannel$Stub:Ljava/lang/String;

.field private volatile INotificationSideChannel$Stub$Proxy:Lo/getMinKey$ICustomTabsCallback$Stub;

.field private final IPostMessageService:I

.field private final IPostMessageService$Stub:Lo/removeAllUserWrites;

.field private final IPostMessageService$Stub$Proxy:Lo/getPosts;

.field private final IconCompatParcelizer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/shouldIncludeCompoundHash;",
            ">;"
        }
    .end annotation
.end field

.field private volatile MediaBrowserCompat:Z

.field private final MediaBrowserCompat$CallbackHandler:Z

.field private final MediaBrowserCompat$ConnectionCallback:Lo/resume$extraCallback;

.field private MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

.field private final RemoteActionCompatParcelizer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/buildAncestorWhereClause;

.field private final cancel:Lo/shortCircuitingInOrderTraversal$onPostMessage;

.field private final cancelAll:J

.field private final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile disconnect:Z

.field final extraCallback:Lo/unionWith;

.field private final extraCommand:Lo/onDataUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private getDefaultImpl:Z

.field private final getExtras:Lo/saveTrackedQueryKeys;

.field private final getInterfaceDescriptor:Ljava/lang/String;

.field private getItem:Z

.field private final getNotifyChildrenChangedOptions:J

.field private final getRoot:Lo/moveRedLeft;

.field private final getServiceComponent:Lo/moveRedLeft$onNavigationEvent;

.field private final getSessionToken:Lo/oppositeColor;

.field private final handleMessage:Lo/cancelSentTransactions$postMessage;

.field private final isConnected:Lo/serializeObject;

.field private final mayLaunchUrl:Lo/getCompoundHash$newSession;

.field private final newSession:Lo/reverseIteratorFrom$onMessageChannelReady;

.field private final notify:Lo/onSecurityDebugPacket;

.field private final onConnectionFailed:Lo/removeListen;

.field private final onConnectionSuspended:Lo/rotateLeft$onMessageChannelReady;

.field final onMessageChannelReady:Lo/pruneCache;

.field final onRelationshipValidationResult:Lo/getConnectionUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getConnectionUrl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final postMessage:Lo/getCompoundHash$postMessage;

.field private read:Z

.field private final requestPostMessageChannel:Ljava/util/concurrent/Executor;

.field private final search:Z

.field private final sendCustomAction:Lo/getCompoundHash$IPostMessageService$Stub;

.field private final setCallbacksMessenger:J

.field private setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

.field private setInternalConnectionCallback:Lo/shortCircuitingInOrderTraversal;

.field private subscribe:Lo/getCompoundHash$updateVisuals;

.field private unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

.field private final updateVisuals:Lo/getCompoundHash$newSession;

.field private final validateRelationship:Lo/loadNestedQuery;

.field private final warmup:Lo/reverseIteratorFrom$extraCallback;

.field private final write:Lo/buildBalancedTree;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 108
    const-class v0, Lo/getCompoundHash;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/getCompoundHash;->ICustomTabsCallback:Ljava/util/logging/Logger;

    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/getCompoundHash;->asBinder:Ljava/util/regex/Pattern;

    .line 122
    sget-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v1, "Channel shutdownNow invoked"

    .line 123
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    sput-object v0, Lo/getCompoundHash;->onTransact:Lo/emptyMap;

    .line 126
    sget-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v1, "Channel shutdown invoked"

    .line 127
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    sput-object v0, Lo/getCompoundHash;->onNavigationEvent:Lo/emptyMap;

    .line 130
    sget-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v1, "Subchannel shutdown invoked"

    .line 131
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    sput-object v0, Lo/getCompoundHash;->onPostMessage:Lo/emptyMap;

    .line 133
    new-instance v0, Lo/getCompoundHash$IPostMessageService$Stub;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 37060
    new-instance v2, Lo/onDisconnectCancel;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lo/onDisconnectCancel;-><init>(Ljava/util/Map;Ljava/util/Map;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Ljava/lang/Object;)V

    .line 136
    invoke-direct {v0, v1, v2}, Lo/getCompoundHash$IPostMessageService$Stub;-><init>(Ljava/util/Map;Lo/onDisconnectCancel;)V

    sput-object v0, Lo/getCompoundHash;->ICustomTabsCallback$Stub:Lo/getCompoundHash$IPostMessageService$Stub;

    return-void
.end method

.method constructor <init>(Lo/isRed;Lo/fixUp;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/onDataUpdate;Lo/getIdManager;Ljava/util/List;Lo/sendUnauth;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRed<",
            "*>;",
            "Lo/fixUp;",
            "Lo/shortCircuitingInOrderTraversal$onPostMessage;",
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/getIdManager<",
            "Lo/Onboarding$3;",
            ">;",
            "Ljava/util/List<",
            "Lo/loadTrackedQueryKeys;",
            ">;",
            "Lo/sendUnauth;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    .line 561
    invoke-direct {p0}, Lo/insert;-><init>()V

    .line 154
    new-instance v3, Lo/unionWith;

    new-instance v4, Lo/getCompoundHash$1;

    invoke-direct {v4, p0}, Lo/getCompoundHash$1;-><init>(Lo/getCompoundHash;)V

    invoke-direct {v3, v4}, Lo/unionWith;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v3, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    .line 176
    new-instance v3, Lo/getPosts;

    invoke-direct {v3}, Lo/getPosts;-><init>()V

    iput-object v3, v0, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy:Lo/getPosts;

    .line 211
    new-instance v3, Ljava/util/HashSet;

    const/high16 v4, 0x3f400000    # 0.75f

    const/16 v5, 0x10

    invoke-direct {v3, v5, v4}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v3, v0, Lo/getCompoundHash;->IconCompatParcelizer:Ljava/util/Set;

    .line 214
    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v3, v0, Lo/getCompoundHash;->RemoteActionCompatParcelizer:Ljava/util/Set;

    .line 218
    new-instance v3, Lo/getCompoundHash$IPostMessageService;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lo/getCompoundHash$IPostMessageService;-><init>(Lo/getCompoundHash;B)V

    iput-object v3, v0, Lo/getCompoundHash;->AudioAttributesCompatParcelizer:Lo/getCompoundHash$IPostMessageService;

    .line 237
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lo/getCompoundHash;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, v0, Lo/getCompoundHash;->AudioAttributesImplApi21Parcelizer:Ljava/util/concurrent/CountDownLatch;

    .line 254
    sget-object v3, Lo/getCompoundHash$updateVisuals;->onNavigationEvent:Lo/getCompoundHash$updateVisuals;

    iput-object v3, v0, Lo/getCompoundHash;->subscribe:Lo/getCompoundHash$updateVisuals;

    .line 257
    sget-object v3, Lo/getCompoundHash;->ICustomTabsCallback$Stub:Lo/getCompoundHash$IPostMessageService$Stub;

    iput-object v3, v0, Lo/getCompoundHash;->unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

    .line 261
    iput-boolean v4, v0, Lo/getCompoundHash;->getItem:Z

    .line 265
    new-instance v3, Lo/cancelSentTransactions$postMessage;

    invoke-direct {v3}, Lo/cancelSentTransactions$postMessage;-><init>()V

    iput-object v3, v0, Lo/getCompoundHash;->handleMessage:Lo/cancelSentTransactions$postMessage;

    .line 274
    new-instance v3, Lo/getCompoundHash$ICustomTabsService;

    invoke-direct {v3, p0, v4}, Lo/getCompoundHash$ICustomTabsService;-><init>(Lo/getCompoundHash;B)V

    iput-object v3, v0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback:Lo/resume$extraCallback;

    .line 290
    new-instance v3, Lo/getCompoundHash$getInterfaceDescriptor;

    invoke-direct {v3, p0, v4}, Lo/getCompoundHash$getInterfaceDescriptor;-><init>(Lo/getCompoundHash;B)V

    iput-object v3, v0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    .line 550
    new-instance v3, Lo/getCompoundHash$asInterface;

    invoke-direct {v3, p0, v4}, Lo/getCompoundHash$asInterface;-><init>(Lo/getCompoundHash;B)V

    iput-object v3, v0, Lo/getCompoundHash;->onConnectionSuspended:Lo/rotateLeft$onMessageChannelReady;

    .line 562
    iget-object v3, v1, Lo/isRed;->extraCallback:Ljava/lang/String;

    if-eqz v3, :cond_10

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lo/getCompoundHash;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v6, "Channel"

    .line 563
    invoke-static {v6, v3}, Lo/buildAncestorWhereClause;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/buildAncestorWhereClause;

    move-result-object v3

    iput-object v3, v0, Lo/getCompoundHash;->asInterface:Lo/buildAncestorWhereClause;

    if-eqz v2, :cond_f

    .line 564
    move-object v3, v2

    check-cast v3, Lo/sendUnauth;

    iput-object v3, v0, Lo/getCompoundHash;->ICustomTabsService$Stub$Proxy:Lo/sendUnauth;

    .line 565
    iget-object v3, v1, Lo/isRed;->onNavigationEvent:Lo/onDataUpdate;

    if-eqz v3, :cond_e

    check-cast v3, Lo/onDataUpdate;

    iput-object v3, v0, Lo/getCompoundHash;->extraCommand:Lo/onDataUpdate;

    .line 566
    invoke-interface {v3}, Lo/onDataUpdate;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    check-cast v3, Ljava/util/concurrent/Executor;

    iput-object v3, v0, Lo/getCompoundHash;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    .line 567
    new-instance v6, Lo/removeMin;

    move-object/from16 v7, p2

    invoke-direct {v6, v7, v3}, Lo/removeMin;-><init>(Lo/fixUp;Ljava/util/concurrent/Executor;)V

    iput-object v6, v0, Lo/getCompoundHash;->ICustomTabsService:Lo/fixUp;

    .line 569
    new-instance v3, Lo/getCompoundHash$postMessage;

    .line 570
    invoke-interface {v6}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Lo/getCompoundHash$postMessage;-><init>(Ljava/util/concurrent/ScheduledExecutorService;B)V

    iput-object v3, v0, Lo/getCompoundHash;->postMessage:Lo/getCompoundHash$postMessage;

    .line 571
    iput v4, v0, Lo/getCompoundHash;->IPostMessageService:I

    .line 572
    new-instance v3, Lo/oppositeColor;

    iget-object v8, v0, Lo/getCompoundHash;->asInterface:Lo/buildAncestorWhereClause;

    const/4 v9, 0x0

    .line 573
    invoke-interface/range {p7 .. p7}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v10

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Channel for \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lo/getCompoundHash;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lo/oppositeColor;-><init>(Lo/buildAncestorWhereClause;IJLjava/lang/String;)V

    iput-object v3, v0, Lo/getCompoundHash;->getSessionToken:Lo/oppositeColor;

    .line 575
    new-instance v6, Lo/shouldContinue;

    invoke-direct {v6, v3, v2}, Lo/shouldContinue;-><init>(Lo/oppositeColor;Lo/sendUnauth;)V

    iput-object v6, v0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    .line 13612
    iget-object v3, v1, Lo/isRed;->onMessageChannelReady:Lo/reverseIteratorFrom$extraCallback;

    .line 576
    iput-object v3, v0, Lo/getCompoundHash;->warmup:Lo/reverseIteratorFrom$extraCallback;

    .line 578
    sget-object v3, Lo/getAuthTokenProvider;->onRelationshipValidationResult:Lo/addToArray;

    .line 579
    iput-boolean v4, v0, Lo/getCompoundHash;->MediaBrowserCompat$CallbackHandler:Z

    .line 580
    new-instance v6, Lo/getRight;

    iget-object v7, v1, Lo/isRed;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-direct {v6, v7}, Lo/getRight;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/getRight;

    .line 581
    new-instance v6, Lo/getCompoundHash$newSession;

    iget-object v7, v1, Lo/isRed;->onPostMessage:Lo/onDataUpdate;

    if-eqz v7, :cond_c

    .line 583
    check-cast v7, Lo/onDataUpdate;

    invoke-direct {v6, v7}, Lo/getCompoundHash$newSession;-><init>(Lo/onDataUpdate;)V

    iput-object v6, v0, Lo/getCompoundHash;->updateVisuals:Lo/getCompoundHash$newSession;

    .line 585
    new-instance v6, Lo/getCompoundHash$ICustomTabsService$Stub;

    const/4 v9, 0x0

    iget v10, v1, Lo/isRed;->asBinder:I

    iget v11, v1, Lo/isRed;->ICustomTabsService:I

    iget-object v12, v0, Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/getRight;

    iget-object v13, v0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lo/getCompoundHash$ICustomTabsService$Stub;-><init>(ZIILo/getRight;Lo/saveTrackedQueryKeys;)V

    .line 14557
    new-instance v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v7}, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;-><init>()V

    .line 594
    invoke-virtual {p1}, Lo/isRed;->extraCallback()I

    move-result v8

    .line 14583
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v3, :cond_b

    .line 14593
    check-cast v3, Lo/addToArray;

    iput-object v3, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    .line 595
    iget-object v3, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    if-eqz v3, :cond_a

    .line 15603
    check-cast v3, Lo/unionWith;

    iput-object v3, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    .line 596
    iget-object v3, v0, Lo/getCompoundHash;->postMessage:Lo/getCompoundHash$postMessage;

    if-eqz v3, :cond_9

    .line 16613
    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v3, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17623
    check-cast v6, Lo/reverseIteratorFrom$onRelationshipValidationResult;

    iput-object v6, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    .line 598
    iget-object v3, v0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    if-eqz v3, :cond_8

    .line 18634
    check-cast v3, Lo/saveTrackedQueryKeys;

    iput-object v3, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->asBinder:Lo/saveTrackedQueryKeys;

    .line 599
    new-instance v3, Lo/getCompoundHash$2;

    invoke-direct {v3, p0}, Lo/getCompoundHash$2;-><init>(Lo/getCompoundHash;)V

    .line 19645
    iput-object v3, v7, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onTransact:Ljava/util/concurrent/Executor;

    .line 608
    invoke-virtual {v7}, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onPostMessage()Lo/reverseIteratorFrom$onMessageChannelReady;

    move-result-object v3

    iput-object v3, v0, Lo/getCompoundHash;->newSession:Lo/reverseIteratorFrom$onMessageChannelReady;

    .line 609
    iget-object v6, v0, Lo/getCompoundHash;->getInterfaceDescriptor:Ljava/lang/String;

    iget-object v7, v0, Lo/getCompoundHash;->warmup:Lo/reverseIteratorFrom$extraCallback;

    invoke-static {v6, v7, v3}, Lo/getCompoundHash;->onPostMessage(Ljava/lang/String;Lo/reverseIteratorFrom$extraCallback;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object v3

    iput-object v3, v0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    .line 611
    new-instance v3, Lo/getCompoundHash$newSession;

    move-object/from16 v6, p4

    invoke-direct {v3, v6}, Lo/getCompoundHash$newSession;-><init>(Lo/onDataUpdate;)V

    iput-object v3, v0, Lo/getCompoundHash;->mayLaunchUrl:Lo/getCompoundHash$newSession;

    .line 612
    new-instance v3, Lo/buildBalancedTree;

    iget-object v6, v0, Lo/getCompoundHash;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-direct {v3, v6, v7}, Lo/buildBalancedTree;-><init>(Ljava/util/concurrent/Executor;Lo/unionWith;)V

    iput-object v3, v0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    .line 613
    iget-object v6, v0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback:Lo/resume$extraCallback;

    invoke-virtual {v3, v6}, Lo/buildBalancedTree;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;

    move-object/from16 v3, p3

    .line 614
    iput-object v3, v0, Lo/getCompoundHash;->cancel:Lo/shortCircuitingInOrderTraversal$onPostMessage;

    .line 616
    new-instance v3, Lo/onSecurityDebugPacket;

    invoke-direct {v3, v4}, Lo/onSecurityDebugPacket;-><init>(Z)V

    iput-object v3, v0, Lo/getCompoundHash;->notify:Lo/onSecurityDebugPacket;

    .line 630
    iput-object v8, v0, Lo/getCompoundHash;->sendCustomAction:Lo/getCompoundHash$IPostMessageService$Stub;

    .line 632
    iget-boolean v3, v1, Lo/isRed;->getInterfaceDescriptor:Z

    iput-boolean v3, v0, Lo/getCompoundHash;->search:Z

    .line 633
    new-instance v3, Lo/getCompoundHash$extraCommand;

    iget-object v6, v0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-virtual {v6}, Lo/reverseIteratorFrom;->extraCallback()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v6, v4}, Lo/getCompoundHash$extraCommand;-><init>(Lo/getCompoundHash;Ljava/lang/String;B)V

    new-array v6, v5, [Lo/loadTrackedQueryKeys;

    .line 634
    iget-object v7, v0, Lo/getCompoundHash;->notify:Lo/onSecurityDebugPacket;

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lo/updateTrackedQueryKeys;->onNavigationEvent(Lo/pruneCache;[Lo/loadTrackedQueryKeys;)Lo/pruneCache;

    move-result-object v3

    move-object/from16 v6, p6

    .line 638
    invoke-static {v3, v6}, Lo/updateTrackedQueryKeys;->onMessageChannelReady(Lo/pruneCache;Ljava/util/List;)Lo/pruneCache;

    move-result-object v3

    iput-object v3, v0, Lo/getCompoundHash;->onMessageChannelReady:Lo/pruneCache;

    if-eqz p5, :cond_7

    .line 639
    move-object/from16 v3, p5

    check-cast v3, Lo/getIdManager;

    iput-object v3, v0, Lo/getCompoundHash;->INotificationSideChannel:Lo/getIdManager;

    .line 640
    iget-wide v6, v1, Lo/isRed;->ICustomTabsCallback$Stub:J

    const-wide/16 v9, -0x1

    cmp-long v3, v6, v9

    if-eqz v3, :cond_2

    .line 643
    iget-wide v6, v1, Lo/isRed;->ICustomTabsCallback$Stub:J

    sget-wide v9, Lo/isRed;->ICustomTabsCallback:J

    cmp-long v3, v6, v9

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-wide v6, v1, Lo/isRed;->ICustomTabsCallback$Stub:J

    if-eqz v3, :cond_1

    goto :goto_1

    .line 21203
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "invalid idleTimeoutMillis %s"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_2
    :goto_1
    iget-wide v6, v1, Lo/isRed;->ICustomTabsCallback$Stub:J

    iput-wide v6, v0, Lo/getCompoundHash;->cancelAll:J

    .line 650
    new-instance v3, Lo/removeListen;

    new-instance v6, Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v6, p0, v4}, Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/getCompoundHash;B)V

    iget-object v7, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    iget-object v9, v0, Lo/getCompoundHash;->ICustomTabsService:Lo/fixUp;

    .line 653
    invoke-interface {v9}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 654
    invoke-interface/range {p5 .. p5}, Lo/getIdManager;->onPostMessage()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/Onboarding$3;

    invoke-direct {v3, v6, v7, v9, v10}, Lo/removeListen;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lo/Onboarding$3;)V

    iput-object v3, v0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    .line 655
    iput-boolean v4, v0, Lo/getCompoundHash;->ICustomTabsService$Stub:Z

    .line 656
    iget-object v3, v1, Lo/isRed;->asInterface:Lo/loadNestedQuery;

    if-eqz v3, :cond_6

    check-cast v3, Lo/loadNestedQuery;

    iput-object v3, v0, Lo/getCompoundHash;->validateRelationship:Lo/loadNestedQuery;

    .line 657
    iget-object v3, v1, Lo/isRed;->onTransact:Lo/removeAllUserWrites;

    if-eqz v3, :cond_5

    check-cast v3, Lo/removeAllUserWrites;

    iput-object v3, v0, Lo/getCompoundHash;->IPostMessageService$Stub:Lo/removeAllUserWrites;

    .line 658
    iput-object v8, v0, Lo/getCompoundHash;->INotificationSideChannel$Stub:Ljava/lang/String;

    .line 660
    iget-wide v3, v1, Lo/isRed;->newSession:J

    iput-wide v3, v0, Lo/getCompoundHash;->setCallbacksMessenger:J

    .line 661
    iget-wide v3, v1, Lo/isRed;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v3, v0, Lo/getCompoundHash;->getNotifyChildrenChangedOptions:J

    .line 669
    new-instance v3, Lo/getCompoundHash$onNavigationEvent;

    invoke-direct {v3, v2}, Lo/getCompoundHash$onNavigationEvent;-><init>(Lo/sendUnauth;)V

    iput-object v3, v0, Lo/getCompoundHash;->getServiceComponent:Lo/moveRedLeft$onNavigationEvent;

    .line 670
    invoke-interface {v3}, Lo/moveRedLeft$onNavigationEvent;->extraCallback()Lo/moveRedLeft;

    move-result-object v2

    iput-object v2, v0, Lo/getCompoundHash;->getRoot:Lo/moveRedLeft;

    .line 671
    iget-object v1, v1, Lo/isRed;->warmup:Lo/serializeObject;

    if-eqz v1, :cond_4

    check-cast v1, Lo/serializeObject;

    iput-object v1, v0, Lo/getCompoundHash;->isConnected:Lo/serializeObject;

    .line 24092
    iget-object v1, v1, Lo/serializeObject;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v1, p0}, Lo/serializeObject;->onMessageChannelReady(Ljava/util/Map;Lo/splitBytes;)V

    .line 674
    iget-boolean v1, v0, Lo/getCompoundHash;->search:Z

    if-nez v1, :cond_3

    .line 24685
    iput-boolean v5, v0, Lo/getCompoundHash;->getItem:Z

    .line 24686
    iget-object v1, v0, Lo/getCompoundHash;->notify:Lo/onSecurityDebugPacket;

    iget-object v2, v0, Lo/getCompoundHash;->unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

    iget-object v2, v2, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    .line 25054
    iget-object v3, v1, Lo/onSecurityDebugPacket;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25055
    iput-boolean v5, v1, Lo/onSecurityDebugPacket;->onMessageChannelReady:Z

    :cond_3
    return-void

    .line 23890
    :cond_4
    throw v8

    .line 22910
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "compressorRegistry"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21910
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "decompressorRegistry"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20910
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "stopwatchSupplier"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18890
    :cond_8
    throw v8

    .line 16890
    :cond_9
    throw v8

    .line 15890
    :cond_a
    throw v8

    .line 14890
    :cond_b
    throw v8

    .line 13910
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "offloadExecutorPool"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12910
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "executor"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11910
    :cond_e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "executorPool"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10910
    :cond_f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "timeProvider"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9910
    :cond_10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "target"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic AudioAttributesCompatParcelizer(Lo/getCompoundHash;)Lo/serializeObject;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->isConnected:Lo/serializeObject;

    return-object p0
.end method

.method static synthetic AudioAttributesImplApi21Parcelizer(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->search:Z

    return p0
.end method

.method static synthetic AudioAttributesImplBaseParcelizer(Lo/getCompoundHash;)Lo/getCompoundHash$updateVisuals;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->subscribe:Lo/getCompoundHash$updateVisuals;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/getCompoundHash;Lo/getCompoundHash$IPostMessageService$Stub;)Lo/getCompoundHash$IPostMessageService$Stub;
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getCompoundHash;->unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/getCompoundHash;Lo/getCompoundHash$updateVisuals;)Lo/getCompoundHash$updateVisuals;
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getCompoundHash;->subscribe:Lo/getCompoundHash$updateVisuals;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/getCompoundHash;)Lo/moveRedLeft;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->getRoot:Lo/moveRedLeft;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/getCompoundHash;Lo/shortCircuitingInOrderTraversal;)Lo/shortCircuitingInOrderTraversal;
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getCompoundHash;->setInternalConnectionCallback:Lo/shortCircuitingInOrderTraversal;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/getCompoundHash$IPostMessageService$Stub;
    .locals 1

    .line 106
    sget-object v0, Lo/getCompoundHash;->ICustomTabsCallback$Stub:Lo/getCompoundHash$IPostMessageService$Stub;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/getCompoundHash;)Lo/cancelSentTransactions$postMessage;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->handleMessage:Lo/cancelSentTransactions$postMessage;

    return-object p0
.end method

.method private ICustomTabsCallback$Stub$Proxy()Lo/getCompoundHash;
    .locals 5

    .line 778
    iget-object v0, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "shutdownNow() called"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lo/getCompoundHash;->onTransact()Lo/getCompoundHash;

    .line 780
    iget-object v0, p0, Lo/getCompoundHash;->AudioAttributesCompatParcelizer:Lo/getCompoundHash$IPostMessageService;

    sget-object v1, Lo/getCompoundHash;->onTransact:Lo/emptyMap;

    .line 26048
    invoke-virtual {v0, v1}, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady(Lo/emptyMap;)V

    .line 26051
    iget-object v2, v0, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    .line 26052
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26053
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26055
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/colorFlip;

    .line 26056
    invoke-interface {v3, v1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    goto :goto_0

    .line 26058
    :cond_0
    iget-object v0, v0, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady:Lo/getCompoundHash;

    .line 26106
    iget-object v0, v0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    .line 26058
    invoke-virtual {v0, v1}, Lo/buildBalancedTree;->onPostMessage(Lo/emptyMap;)V

    .line 792
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$onTransact;

    invoke-direct {v1, p0}, Lo/getCompoundHash$onTransact;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :catchall_0
    move-exception v0

    .line 26053
    monitor-exit v2

    throw v0
.end method

.method static synthetic ICustomTabsService(Lo/getCompoundHash;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lo/getCompoundHash;->getNotifyChildrenChangedOptions:J

    return-wide v0
.end method

.method static synthetic ICustomTabsService$Stub(Lo/getCompoundHash;)Lo/loadNestedQuery;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->validateRelationship:Lo/loadNestedQuery;

    return-object p0
.end method

.method static synthetic ICustomTabsService$Stub$Proxy(Lo/getCompoundHash;)Lo/removeAllUserWrites;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->IPostMessageService$Stub:Lo/removeAllUserWrites;

    return-object p0
.end method

.method static synthetic INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    return-object p0
.end method

.method static synthetic INotificationSideChannel$Default(Lo/getCompoundHash;)Lo/moveRedLeft$onNavigationEvent;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->getServiceComponent:Lo/moveRedLeft$onNavigationEvent;

    return-object p0
.end method

.method static synthetic INotificationSideChannel$Stub(Lo/getCompoundHash;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lo/getCompoundHash;->onRelationshipValidationResult()V

    return-void
.end method

.method static synthetic INotificationSideChannel$Stub$Proxy(Lo/getCompoundHash;)Lo/sendUnauth;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->ICustomTabsService$Stub$Proxy:Lo/sendUnauth;

    return-object p0
.end method

.method static synthetic IPostMessageService(Lo/getCompoundHash;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic IPostMessageService$Stub(Lo/getCompoundHash;)V
    .locals 3

    .line 31279
    iget-boolean v0, p0, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer:Z

    if-eqz v0, :cond_1

    .line 31280
    iget-object v0, p0, Lo/getCompoundHash;->IconCompatParcelizer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/shouldIncludeCompoundHash;

    .line 31281
    sget-object v2, Lo/getCompoundHash;->onTransact:Lo/emptyMap;

    invoke-virtual {v1, v2}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/emptyMap;)V

    goto :goto_0

    .line 31283
    :cond_0
    iget-object p0, p0, Lo/getCompoundHash;->RemoteActionCompatParcelizer:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31284
    sget-object v1, Lo/getCompoundHash;->onTransact:Lo/emptyMap;

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/emptyMap;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic IPostMessageService$Stub$Proxy(Lo/getCompoundHash;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic IconCompatParcelizer(Lo/getCompoundHash;)V
    .locals 3

    .line 32913
    iget-boolean v0, p0, Lo/getCompoundHash;->disconnect:Z

    if-nez v0, :cond_0

    .line 32916
    iget-object v0, p0, Lo/getCompoundHash;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getCompoundHash;->IconCompatParcelizer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getCompoundHash;->RemoteActionCompatParcelizer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32917
    iget-object v0, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 32918
    iget-object v0, p0, Lo/getCompoundHash;->isConnected:Lo/serializeObject;

    .line 33125
    iget-object v0, v0, Lo/serializeObject;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p0}, Lo/serializeObject;->onNavigationEvent(Ljava/util/Map;Lo/splitBytes;)V

    .line 32919
    iget-object v0, p0, Lo/getCompoundHash;->extraCommand:Lo/onDataUpdate;

    iget-object v1, p0, Lo/getCompoundHash;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lo/onDataUpdate;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32920
    iget-object v0, p0, Lo/getCompoundHash;->mayLaunchUrl:Lo/getCompoundHash$newSession;

    invoke-virtual {v0}, Lo/getCompoundHash$newSession;->extraCallback()V

    .line 32921
    iget-object v0, p0, Lo/getCompoundHash;->updateVisuals:Lo/getCompoundHash$newSession;

    invoke-virtual {v0}, Lo/getCompoundHash$newSession;->extraCallback()V

    .line 32923
    iget-object v0, p0, Lo/getCompoundHash;->ICustomTabsService:Lo/fixUp;

    invoke-interface {v0}, Lo/fixUp;->close()V

    const/4 v0, 0x1

    .line 32925
    iput-boolean v0, p0, Lo/getCompoundHash;->disconnect:Z

    .line 32926
    iget-object p0, p0, Lo/getCompoundHash;->AudioAttributesImplApi21Parcelizer:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method static synthetic MediaBrowserCompat(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->MediaBrowserCompat:Z

    return p0
.end method

.method static synthetic RemoteActionCompatParcelizer(Lo/getCompoundHash;)Lo/getIdManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->INotificationSideChannel:Lo/getIdManager;

    return-object p0
.end method

.method static synthetic asBinder(Lo/getCompoundHash;)Lo/getMinKey$ICustomTabsCallback$Stub;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy:Lo/getMinKey$ICustomTabsCallback$Stub;

    return-object p0
.end method

.method static synthetic asInterface(Lo/getCompoundHash;)V
    .locals 1

    .line 29454
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 29455
    iget-boolean v0, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    if-eqz v0, :cond_0

    .line 29456
    iget-object p0, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-virtual {p0}, Lo/reverseIteratorFrom;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method static synthetic cancel(Lo/getCompoundHash;)Lo/unionWith$extraCallback;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    return-object p0
.end method

.method static synthetic cancelAll(Lo/getCompoundHash;)Lo/rotateLeft$onMessageChannelReady;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->onConnectionSuspended:Lo/rotateLeft$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic connect(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic disconnect(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->getItem:Z

    return p0
.end method

.method static synthetic extraCallback(Lo/getCompoundHash;)Ljava/util/Set;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->RemoteActionCompatParcelizer:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/getCompoundHash;Lo/openDatabase;)V
    .locals 2

    .line 34058
    iget-object v0, p1, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 33932
    sget-object v1, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_0

    .line 35058
    iget-object p1, p1, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 33932
    sget-object v0, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    if-ne p1, v0, :cond_1

    .line 33933
    :cond_0
    invoke-direct {p0}, Lo/getCompoundHash;->onRelationshipValidationResult()V

    :cond_1
    return-void
.end method

.method static synthetic extraCommand(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer:Z

    return p0
.end method

.method static synthetic getDefaultImpl(Lo/getCompoundHash;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic getExtras(Lo/getCompoundHash;)V
    .locals 3

    const/4 v0, 0x1

    .line 35685
    iput-boolean v0, p0, Lo/getCompoundHash;->getItem:Z

    .line 35686
    iget-object v1, p0, Lo/getCompoundHash;->notify:Lo/onSecurityDebugPacket;

    iget-object p0, p0, Lo/getCompoundHash;->unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

    iget-object p0, p0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    .line 36054
    iget-object v2, v1, Lo/onSecurityDebugPacket;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36055
    iput-boolean v0, v1, Lo/onSecurityDebugPacket;->onMessageChannelReady:Z

    return-void
.end method

.method static synthetic getInterfaceDescriptor(Lo/getCompoundHash;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lo/getCompoundHash;->setCallbacksMessenger:J

    return-wide v0
.end method

.method static synthetic getRoot(Lo/getCompoundHash;)Z
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lo/getCompoundHash;->MediaBrowserCompat:Z

    return v0
.end method

.method static synthetic getServiceComponent(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->setInternalConnectionCallback:Lo/shortCircuitingInOrderTraversal;

    return-object p0
.end method

.method static synthetic getSessionToken(Lo/getCompoundHash;)V
    .locals 5

    .line 36411
    iget-wide v0, p0, Lo/getCompoundHash;->cancelAll:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 36414
    iget-object p0, p0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lo/removeListen;->extraCallback(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method static synthetic isConnected(Lo/getCompoundHash;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lo/getCompoundHash;->onPostMessage(Z)V

    return-void
.end method

.method static synthetic mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    return-object p0
.end method

.method static synthetic newSession(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->unsubscribe:Lo/getCompoundHash$IPostMessageService$Stub;

    return-object p0
.end method

.method static synthetic notify(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->disconnect:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/getCompoundHash;Lo/deleteTrackedQuery;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 30361
    iget-object p1, p1, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    .line 29872
    iget-object p1, p0, Lo/getCompoundHash;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    :cond_0
    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/getCompoundHash;)Lo/getPosts;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy:Lo/getPosts;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/getCompoundHash;Lo/unionWith$extraCallback;)Lo/unionWith$extraCallback;
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/getCompoundHash;Lo/getMinKey$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 32836
    iput-object p1, p0, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy:Lo/getMinKey$ICustomTabsCallback$Stub;

    .line 32837
    iget-object p0, p0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    invoke-virtual {p0, p1}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$ICustomTabsCallback$Stub;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getCompoundHash;)Ljava/util/Set;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->IconCompatParcelizer:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/getCompoundHash;Z)V
    .locals 0

    .line 30406
    iget-object p0, p0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    invoke-virtual {p0, p1}, Lo/removeListen;->extraCallback(Z)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/getCompoundHash;)Lo/oppositeColor;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->getSessionToken:Lo/oppositeColor;

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/String;Lo/reverseIteratorFrom$extraCallback;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;
    .locals 7

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 697
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 703
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {p1, v2, p2}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 715
    :cond_0
    sget-object v2, Lo/getCompoundHash;->asBinder:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    .line 719
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    invoke-virtual {p1, v2, p2}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p0

    .line 722
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 729
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, p2, p0

    const-string p0, "cannot find a NameResolver for %s%s"

    .line 729
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic onPostMessage(Lo/getCompoundHash;Ljava/lang/String;)V
    .locals 3

    .line 31957
    :try_start_0
    iget-object p0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {p0}, Lo/unionWith;->onPostMessage()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 31959
    sget-object v0, Lo/getCompoundHash;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onPostMessage(Z)V
    .locals 5

    .line 332
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 334
    iget-boolean v2, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 3511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lbHelper is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "nameResolver is not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_3
    :goto_1
    iget-object v2, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 4435
    iget-object v2, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 4436
    iget-object v2, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    if-eqz v2, :cond_4

    .line 5206
    iget-object v4, v2, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iput-boolean v0, v4, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    .line 5207
    iget-object v0, v2, Lo/unionWith$extraCallback;->onPostMessage:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4438
    iput-object v3, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    .line 4439
    iput-object v3, p0, Lo/getCompoundHash;->setInternalConnectionCallback:Lo/shortCircuitingInOrderTraversal;

    .line 339
    :cond_4
    iget-object v0, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-virtual {v0}, Lo/reverseIteratorFrom;->onNavigationEvent()V

    .line 340
    iput-boolean v1, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    if-eqz p1, :cond_5

    .line 342
    iget-object p1, p0, Lo/getCompoundHash;->getInterfaceDescriptor:Ljava/lang/String;

    iget-object v0, p0, Lo/getCompoundHash;->warmup:Lo/reverseIteratorFrom$extraCallback;

    iget-object v1, p0, Lo/getCompoundHash;->newSession:Lo/reverseIteratorFrom$onMessageChannelReady;

    invoke-static {p1, v0, v1}, Lo/getCompoundHash;->onPostMessage(Ljava/lang/String;Lo/reverseIteratorFrom$extraCallback;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object p1

    iput-object p1, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    goto :goto_2

    .line 344
    :cond_5
    iput-object v3, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    .line 347
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    if-eqz p1, :cond_7

    .line 348
    iget-object p1, p1, Lo/getCompoundHash$mayLaunchUrl;->onPostMessage:Lo/getRight$ICustomTabsCallback;

    .line 6190
    iget-object v0, p1, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    invoke-virtual {v0}, Lo/getMinKey;->extraCallback()V

    .line 6191
    iput-object v3, p1, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 349
    iput-object v3, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    .line 351
    :cond_7
    iput-object v3, p0, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy:Lo/getMinKey$ICustomTabsCallback$Stub;

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    return-object p0
.end method

.method private onRelationshipValidationResult()V
    .locals 3

    .line 448
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 8435
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 8436
    iget-object v0, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    if-eqz v0, :cond_0

    .line 9206
    iget-object v1, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    .line 9207
    iget-object v0, v0, Lo/unionWith$extraCallback;->onPostMessage:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 8438
    iput-object v0, p0, Lo/getCompoundHash;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/unionWith$extraCallback;

    .line 8439
    iput-object v0, p0, Lo/getCompoundHash;->setInternalConnectionCallback:Lo/shortCircuitingInOrderTraversal;

    .line 9454
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 9455
    iget-boolean v0, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    if-eqz v0, :cond_1

    .line 9456
    iget-object v0, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-virtual {v0}, Lo/reverseIteratorFrom;->ICustomTabsCallback()V

    :cond_1
    return-void
.end method

.method private onTransact()Lo/getCompoundHash;
    .locals 3

    .line 740
    iget-object v0, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "shutdown() called"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lo/getCompoundHash;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 757
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lo/getCompoundHash$onRelationshipValidationResult;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lo/getCompoundHash;->AudioAttributesCompatParcelizer:Lo/getCompoundHash$IPostMessageService;

    sget-object v1, Lo/getCompoundHash;->onNavigationEvent:Lo/emptyMap;

    invoke-virtual {v0, v1}, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady(Lo/emptyMap;)V

    .line 767
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$extraCallback;

    invoke-direct {v1, p0}, Lo/getCompoundHash$extraCallback;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method static synthetic onTransact(Lo/getCompoundHash;)V
    .locals 4

    const/4 v0, 0x1

    .line 28395
    invoke-direct {p0, v0}, Lo/getCompoundHash;->onPostMessage(Z)V

    .line 28396
    iget-object v1, p0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 28397
    iget-object v1, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v2, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v3, "Entering IDLE state"

    invoke-virtual {v1, v2, v3}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 28398
    iget-object v1, p0, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy:Lo/getPosts;

    sget-object v2, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    invoke-virtual {v1, v2}, Lo/getPosts;->ICustomTabsCallback(Lo/setTransactionSuccessful;)V

    .line 28399
    iget-object v1, p0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    .line 29051
    iget-object v1, v1, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 28400
    invoke-virtual {p0}, Lo/getCompoundHash;->asInterface()V

    :cond_0
    return-void
.end method

.method static synthetic postMessage(Lo/getCompoundHash;)Lo/fixUp;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->ICustomTabsService:Lo/fixUp;

    return-object p0
.end method

.method static synthetic read(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal$onPostMessage;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->cancel:Lo/shortCircuitingInOrderTraversal$onPostMessage;

    return-object p0
.end method

.method static synthetic requestPostMessageChannel(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->AudioAttributesCompatParcelizer:Lo/getCompoundHash$IPostMessageService;

    return-object p0
.end method

.method static synthetic setDefaultImpl(Lo/getCompoundHash;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    return p0
.end method

.method static synthetic updateVisuals(Lo/getCompoundHash;)Lo/getCompoundHash$newSession;
    .locals 0

    .line 106
    iget-object p0, p0, Lo/getCompoundHash;->updateVisuals:Lo/getCompoundHash$newSession;

    return-object p0
.end method

.method static synthetic validateRelationship(Lo/getCompoundHash;)Z
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer:Z

    return v0
.end method

.method static synthetic warmup(Lo/getCompoundHash;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic write(Lo/getCompoundHash;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 318
    iget-object v0, p0, Lo/getCompoundHash;->asInterface:Lo/buildAncestorWhereClause;

    return-object v0
.end method

.method public final asBinder()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/getCompoundHash$ICustomTabsCallback;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final asInterface()V
    .locals 7

    .line 361
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 362
    iget-object v0, p0, Lo/getCompoundHash;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/getCompoundHash;->read:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    .line 7051
    iget-object v0, v0, Lo/getConnectionUrl;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7406
    iget-object v0, p0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    invoke-virtual {v0, v2}, Lo/removeListen;->extraCallback(Z)V

    goto :goto_0

    .line 7411
    :cond_1
    iget-wide v3, p0, Lo/getCompoundHash;->cancelAll:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 7414
    iget-object v0, p0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lo/removeListen;->extraCallback(JLjava/util/concurrent/TimeUnit;)V

    .line 374
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    if-eqz v0, :cond_3

    return-void

    .line 377
    :cond_3
    iget-object v0, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v3, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v4, "Exiting idle mode"

    invoke-virtual {v0, v3, v4}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lo/getCompoundHash$mayLaunchUrl;

    invoke-direct {v0, p0, v2}, Lo/getCompoundHash$mayLaunchUrl;-><init>(Lo/getCompoundHash;B)V

    .line 379
    iget-object v2, p0, Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/getRight;

    .line 8066
    new-instance v3, Lo/getRight$ICustomTabsCallback;

    invoke-direct {v3, v2, v0}, Lo/getRight$ICustomTabsCallback;-><init>(Lo/getRight;Lo/getMinKey$onMessageChannelReady;)V

    .line 379
    iput-object v3, v0, Lo/getCompoundHash$mayLaunchUrl;->onPostMessage:Lo/getRight$ICustomTabsCallback;

    .line 382
    iput-object v0, p0, Lo/getCompoundHash;->setDefaultImpl:Lo/getCompoundHash$mayLaunchUrl;

    .line 384
    new-instance v2, Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-direct {v2, p0, v0, v3}, Lo/getCompoundHash$requestPostMessageChannel;-><init>(Lo/getCompoundHash;Lo/getCompoundHash$mayLaunchUrl;Lo/reverseIteratorFrom;)V

    .line 385
    iget-object v0, p0, Lo/getCompoundHash;->INotificationSideChannel$Default:Lo/reverseIteratorFrom;

    invoke-virtual {v0, v2}, Lo/reverseIteratorFrom;->onMessageChannelReady(Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V

    .line 386
    iput-boolean v1, p0, Lo/getCompoundHash;->getDefaultImpl:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lo/getCompoundHash;->onMessageChannelReady:Lo/pruneCache;

    invoke-virtual {v0}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Z)Lo/setTransactionSuccessful;
    .locals 2

    .line 940
    iget-object v0, p0, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy:Lo/getPosts;

    .line 27083
    iget-object v0, v0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 941
    sget-object p1, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    if-ne v0, p1, :cond_0

    .line 955
    iget-object p1, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0}, Lo/getCompoundHash$ICustomTabsCallback$Stub;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {p1, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    .line 27085
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Channel state API is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final extraCallback(Ljava/lang/Throwable;)V
    .locals 2

    .line 799
    iget-boolean v0, p0, Lo/getCompoundHash;->read:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 803
    iput-boolean v0, p0, Lo/getCompoundHash;->read:Z

    .line 26406
    iget-object v1, p0, Lo/getCompoundHash;->onConnectionFailed:Lo/removeListen;

    invoke-virtual {v1, v0}, Lo/removeListen;->extraCallback(Z)V

    const/4 v0, 0x0

    .line 805
    invoke-direct {p0, v0}, Lo/getCompoundHash;->onPostMessage(Z)V

    .line 824
    new-instance v0, Lo/getCompoundHash$onPostMessage;

    invoke-direct {v0, p1}, Lo/getCompoundHash$onPostMessage;-><init>(Ljava/lang/Throwable;)V

    .line 26836
    iput-object v0, p0, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy:Lo/getMinKey$ICustomTabsCallback$Stub;

    .line 26837
    iget-object p1, p0, Lo/getCompoundHash;->write:Lo/buildBalancedTree;

    invoke-virtual {p1, v0}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 825
    iget-object p1, p0, Lo/getCompoundHash;->getExtras:Lo/saveTrackedQueryKeys;

    sget-object v0, Lo/saveTrackedQueryKeys$extraCallback;->onMessageChannelReady:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v1, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p1, v0, v1}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 826
    iget-object p1, p0, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy:Lo/getPosts;

    sget-object v0, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-virtual {p1, v0}, Lo/getPosts;->ICustomTabsCallback(Lo/setTransactionSuccessful;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady()Lo/insert;
    .locals 1

    .line 105
    invoke-direct {p0}, Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy()Lo/getCompoundHash;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lo/getCompoundHash;->AudioAttributesImplApi21Parcelizer:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final synthetic onNavigationEvent()Lo/insert;
    .locals 1

    .line 105
    invoke-direct {p0}, Lo/getCompoundHash;->onTransact()Lo/getCompoundHash;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lo/getCompoundHash;->onMessageChannelReady:Lo/pruneCache;

    invoke-virtual {v0, p1, p2}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 2

    .line 993
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$asBinder;

    invoke-direct {v1, p0}, Lo/getCompoundHash$asBinder;-><init>(Lo/getCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V
    .locals 2

    .line 969
    iget-object v0, p0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$onMessageChannelReady;

    invoke-direct {v1, p0, p2, p1}, Lo/getCompoundHash$onMessageChannelReady;-><init>(Lo/getCompoundHash;Ljava/lang/Runnable;Lo/setTransactionSuccessful;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 27105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 1723
    iget-object v1, p0, Lo/getCompoundHash;->asInterface:Lo/buildAncestorWhereClause;

    .line 28085
    iget-wide v1, v1, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    const-string v3, "logId"

    .line 1724
    invoke-virtual {v0, v3, v1, v2}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v2, "target"

    .line 1725
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 1726
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
