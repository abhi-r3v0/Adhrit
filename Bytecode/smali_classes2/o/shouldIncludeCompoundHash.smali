.class final Lo/shouldIncludeCompoundHash;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/splitBytes;
.implements Lo/getPutObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldIncludeCompoundHash$asBinder;,
        Lo/shouldIncludeCompoundHash$onNavigationEvent;,
        Lo/shouldIncludeCompoundHash$ICustomTabsCallback;,
        Lo/shouldIncludeCompoundHash$onMessageChannelReady;,
        Lo/shouldIncludeCompoundHash$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/splitBytes<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/getPutObject;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/serializeObject;

.field final ICustomTabsCallback$Stub:Lo/unionWith;

.field ICustomTabsCallback$Stub$Proxy:Lo/resume;

.field final ICustomTabsService:Lo/getConnectionUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getConnectionUrl<",
            "Lo/resume;",
            ">;"
        }
    .end annotation
.end field

.field private final IPostMessageService$Stub:Lo/moveRedLeft;

.field final asBinder:Lo/Onboarding$3;

.field final asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

.field final extraCallback:Lo/saveTrackedQueryKeys;

.field private final extraCommand:Ljava/lang/String;

.field volatile getInterfaceDescriptor:Lo/resume;

.field private final mayLaunchUrl:Ljava/lang/String;

.field final newSession:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/resume;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/shortCircuitingInOrderTraversal$onPostMessage;

.field final onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

.field final onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Lo/shortCircuitingInOrderTraversal;

.field private final postMessage:Lo/buildAncestorWhereClause;

.field volatile requestPostMessageChannel:Lo/openDatabase;

.field updateVisuals:Lo/emptyMap;

.field private final validateRelationship:Lo/fixUp;

.field warmup:Lo/unionWith$extraCallback;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/fixUp;Ljava/util/concurrent/ScheduledExecutorService;Lo/getIdManager;Lo/unionWith;Lo/shouldIncludeCompoundHash$onMessageChannelReady;Lo/serializeObject;Lo/moveRedLeft;Lo/oppositeColor;Lo/buildAncestorWhereClause;Lo/saveTrackedQueryKeys;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/shortCircuitingInOrderTraversal$onPostMessage;",
            "Lo/fixUp;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lo/getIdManager<",
            "Lo/Onboarding$3;",
            ">;",
            "Lo/unionWith;",
            "Lo/shouldIncludeCompoundHash$onMessageChannelReady;",
            "Lo/serializeObject;",
            "Lo/moveRedLeft;",
            "Lo/oppositeColor;",
            "Lo/buildAncestorWhereClause;",
            "Lo/saveTrackedQueryKeys;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    .line 123
    new-instance v0, Lo/shouldIncludeCompoundHash$4;

    invoke-direct {v0, p0}, Lo/shouldIncludeCompoundHash$4;-><init>(Lo/shouldIncludeCompoundHash;)V

    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsService:Lo/getConnectionUrl;

    .line 148
    sget-object v0, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    invoke-static {v0}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v0

    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    if-eqz p1, :cond_4

    .line 159
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string v0, "addressGroups contains null entry"

    .line 160
    invoke-static {p1, v0}, Lo/shouldIncludeCompoundHash;->onNavigationEvent(Ljava/util/List;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 163
    iput-object p1, p0, Lo/shouldIncludeCompoundHash;->onRelationshipValidationResult:Ljava/util/List;

    .line 164
    new-instance v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/shouldIncludeCompoundHash$onNavigationEvent;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 165
    iput-object p2, p0, Lo/shouldIncludeCompoundHash;->extraCommand:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lo/shouldIncludeCompoundHash;->mayLaunchUrl:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lo/shouldIncludeCompoundHash;->onMessageChannelReady:Lo/shortCircuitingInOrderTraversal$onPostMessage;

    .line 168
    iput-object p5, p0, Lo/shouldIncludeCompoundHash;->validateRelationship:Lo/fixUp;

    .line 169
    iput-object p6, p0, Lo/shouldIncludeCompoundHash;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    .line 170
    invoke-interface {p7}, Lo/getIdManager;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Onboarding$3;

    iput-object p1, p0, Lo/shouldIncludeCompoundHash;->asBinder:Lo/Onboarding$3;

    .line 171
    iput-object p8, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    .line 172
    iput-object p9, p0, Lo/shouldIncludeCompoundHash;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

    .line 173
    iput-object p10, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback:Lo/serializeObject;

    .line 174
    iput-object p11, p0, Lo/shouldIncludeCompoundHash;->IPostMessageService$Stub:Lo/moveRedLeft;

    if-eqz p12, :cond_2

    if-eqz p13, :cond_1

    .line 176
    check-cast p13, Lo/buildAncestorWhereClause;

    iput-object p13, p0, Lo/shouldIncludeCompoundHash;->postMessage:Lo/buildAncestorWhereClause;

    if-eqz p14, :cond_0

    .line 177
    check-cast p14, Lo/saveTrackedQueryKeys;

    iput-object p14, p0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    return-void

    .line 4910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channelLogger"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "logId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channelTracer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2142
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addressGroups is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addressGroups"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/shouldIncludeCompoundHash;)V
    .locals 7

    .line 12219
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 12221
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 12223
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 12686
    iget v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    if-nez v3, :cond_1

    iget v0, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 12224
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->asBinder:Lo/Onboarding$3;

    .line 13177
    iput-boolean v2, v0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    .line 12224
    invoke-virtual {v0}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    .line 12226
    :cond_2
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 13704
    iget-object v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget v4, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/splitNodeRunLength;

    .line 14090
    iget-object v3, v3, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 13704
    iget v0, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v3, 0x0

    .line 12229
    instance-of v4, v0, Lo/joinBytes;

    if-eqz v4, :cond_3

    .line 12230
    move-object v3, v0

    check-cast v3, Lo/joinBytes;

    .line 15088
    iget-object v0, v3, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    .line 12234
    :cond_3
    iget-object v4, p0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 15708
    iget-object v5, v4, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget v4, v4, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/splitNodeRunLength;

    .line 16098
    iget-object v4, v4, Lo/splitNodeRunLength;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 12235
    sget-object v5, Lo/splitNodeRunLength;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 17065
    iget-object v6, v4, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 12236
    check-cast v5, Ljava/lang/String;

    .line 12237
    new-instance v6, Lo/fixUp$ICustomTabsCallback;

    invoke-direct {v6}, Lo/fixUp$ICustomTabsCallback;-><init>()V

    if-eqz v5, :cond_4

    goto :goto_2

    .line 12239
    :cond_4
    iget-object v5, p0, Lo/shouldIncludeCompoundHash;->extraCommand:Ljava/lang/String;

    :goto_2
    if-eqz v5, :cond_7

    .line 17093
    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 18104
    iput-object v4, v6, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    .line 12240
    iget-object v4, p0, Lo/shouldIncludeCompoundHash;->mayLaunchUrl:Ljava/lang/String;

    .line 19114
    iput-object v4, v6, Lo/fixUp$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 19125
    iput-object v3, v6, Lo/fixUp$ICustomTabsCallback;->onMessageChannelReady:Lo/joinBytes;

    .line 12243
    new-instance v3, Lo/shouldIncludeCompoundHash$asBinder;

    invoke-direct {v3}, Lo/shouldIncludeCompoundHash$asBinder;-><init>()V

    .line 19464
    iget-object v4, p0, Lo/shouldIncludeCompoundHash;->postMessage:Lo/buildAncestorWhereClause;

    .line 12245
    iput-object v4, v3, Lo/shouldIncludeCompoundHash$asBinder;->onPostMessage:Lo/buildAncestorWhereClause;

    .line 12246
    new-instance v4, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;

    iget-object v5, p0, Lo/shouldIncludeCompoundHash;->validateRelationship:Lo/fixUp;

    .line 12249
    invoke-interface {v5, v0, v6, v3}, Lo/fixUp;->onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;

    move-result-object v0

    iget-object v5, p0, Lo/shouldIncludeCompoundHash;->IPostMessageService$Stub:Lo/moveRedLeft;

    invoke-direct {v4, v0, v5, v2}, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;-><init>(Lo/resume;Lo/moveRedLeft;B)V

    .line 12250
    invoke-interface {v4}, Lo/resume;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v0

    iput-object v0, v3, Lo/shouldIncludeCompoundHash$asBinder;->onPostMessage:Lo/buildAncestorWhereClause;

    .line 12251
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback:Lo/serializeObject;

    .line 20097
    iget-object v0, v0, Lo/serializeObject;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v4}, Lo/serializeObject;->onMessageChannelReady(Ljava/util/Map;Lo/splitBytes;)V

    .line 12252
    iput-object v4, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 12253
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12254
    new-instance v0, Lo/shouldIncludeCompoundHash$onPostMessage;

    invoke-direct {v0, p0, v4}, Lo/shouldIncludeCompoundHash$onPostMessage;-><init>(Lo/shouldIncludeCompoundHash;Lo/resume;)V

    invoke-interface {v4, v0}, Lo/resume;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12256
    iget-object v4, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v4, v0}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 12258
    :cond_5
    iget-object p0, p0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    sget-object v0, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v3, Lo/shouldIncludeCompoundHash$asBinder;->onPostMessage:Lo/buildAncestorWhereClause;

    aput-object v3, v1, v2

    const-string v2, "Started transport {0}"

    invoke-virtual {p0, v0, v2, v1}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 18910
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "eagAttributes"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17910
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "authority"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12511
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should have no reconnectTask scheduled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic extraCallback(Lo/shouldIncludeCompoundHash;)V
    .locals 3

    .line 20453
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 20455
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    if-eqz v0, :cond_0

    .line 21206
    iget-object v1, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    .line 21207
    iget-object v0, v0, Lo/unionWith$extraCallback;->onPostMessage:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 20457
    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    .line 20458
    iput-object v0, p0, Lo/shouldIncludeCompoundHash;->onTransact:Lo/shortCircuitingInOrderTraversal;

    :cond_0
    return-void
.end method

.method static onNavigationEvent(Lo/emptyMap;)Ljava/lang/String;
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10492
    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10500
    iget-object v1, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11500
    iget-object p0, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    .line 741
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 491
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9910
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 464
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->postMessage:Lo/buildAncestorWhereClause;

    return-object v0
.end method

.method final extraCallback(Lo/emptyMap;)V
    .locals 2

    .line 9374
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v1, Lo/shouldIncludeCompoundHash$1;

    invoke-direct {v1, p0, p1}, Lo/shouldIncludeCompoundHash$1;-><init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 435
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v1, Lo/shouldIncludeCompoundHash$9;

    invoke-direct {v1, p0, p1}, Lo/shouldIncludeCompoundHash$9;-><init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final extraCallback(Lo/openDatabase;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 325
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 5058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 6058
    iget-object v1, p1, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_2

    .line 326
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 7058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 326
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 328
    iput-object p1, p0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 329
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/shouldIncludeCompoundHash$onMessageChannelReady;->onMessageChannelReady(Lo/openDatabase;)V

    goto :goto_1

    .line 7511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final onNavigationEvent()Lo/moveRedRight;
    .locals 2

    .line 186
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    if-eqz v0, :cond_0

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v1, Lo/shouldIncludeCompoundHash$3;

    invoke-direct {v1, p0}, Lo/shouldIncludeCompoundHash$3;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 8105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 407
    iget-object v1, p0, Lo/shouldIncludeCompoundHash;->postMessage:Lo/buildAncestorWhereClause;

    .line 9085
    iget-wide v1, v1, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    const-string v3, "logId"

    .line 408
    invoke-virtual {v0, v3, v1, v2}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/shouldIncludeCompoundHash;->onRelationshipValidationResult:Ljava/util/List;

    const-string v2, "addressGroups"

    .line 409
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
