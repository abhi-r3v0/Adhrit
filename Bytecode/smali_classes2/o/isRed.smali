.class public abstract Lo/isRed;
.super Lo/getMaxKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/isRed<",
        "TT;>;>",
        "Lo/getMaxKey<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:J

.field private static final mayLaunchUrl:Lo/onDataUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final postMessage:Ljava/util/logging/Logger;

.field private static final requestPostMessageChannel:Lo/loadNestedQuery;

.field private static updateVisuals:J

.field private static final validateRelationship:Lo/removeAllUserWrites;


# instance fields
.field ICustomTabsCallback$Stub:J

.field ICustomTabsCallback$Stub$Proxy:J

.field ICustomTabsService:I

.field private ICustomTabsService$Stub:Lo/getComparator;

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:Z

.field private IPostMessageService:I

.field private final IPostMessageService$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/loadTrackedQueryKeys;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub$Proxy:Z

.field asBinder:I

.field asInterface:Lo/loadNestedQuery;

.field private cancelAll:Z

.field final extraCallback:Ljava/lang/String;

.field public extraCommand:Lo/putInternal$onMessageChannelReady;

.field getInterfaceDescriptor:Z

.field newSession:J

.field onMessageChannelReady:Lo/reverseIteratorFrom$extraCallback;

.field onNavigationEvent:Lo/onDataUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/onDataUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:Ljava/lang/String;

.field onTransact:Lo/removeAllUserWrites;

.field warmup:Lo/serializeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-class v0, Lo/isRed;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/isRed;->updateVisuals:J

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/isRed;->ICustomTabsCallback:J

    .line 90
    sget-object v0, Lo/getAuthTokenProvider;->ICustomTabsService:Lo/onDataPush$onNavigationEvent;

    .line 3030
    new-instance v1, Lo/removeListens;

    invoke-direct {v1, v0}, Lo/removeListens;-><init>(Lo/onDataPush$onNavigationEvent;)V

    .line 91
    sput-object v1, Lo/isRed;->mayLaunchUrl:Lo/onDataUpdate;

    .line 94
    invoke-static {}, Lo/loadNestedQuery;->onPostMessage()Lo/loadNestedQuery;

    move-result-object v0

    sput-object v0, Lo/isRed;->requestPostMessageChannel:Lo/loadNestedQuery;

    .line 97
    invoke-static {}, Lo/removeAllUserWrites;->onMessageChannelReady()Lo/removeAllUserWrites;

    move-result-object v0

    sput-object v0, Lo/isRed;->validateRelationship:Lo/removeAllUserWrites;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Lo/getMaxKey;-><init>()V

    .line 102
    sget-object v0, Lo/isRed;->mayLaunchUrl:Lo/onDataUpdate;

    iput-object v0, p0, Lo/isRed;->onNavigationEvent:Lo/onDataUpdate;

    .line 104
    iput-object v0, p0, Lo/isRed;->onPostMessage:Lo/onDataUpdate;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isRed;->IPostMessageService$Stub:Ljava/util/List;

    .line 107
    invoke-static {}, Lo/getComparator;->ICustomTabsCallback()Lo/getComparator;

    move-result-object v0

    iput-object v0, p0, Lo/isRed;->ICustomTabsService$Stub:Lo/getComparator;

    .line 1131
    iget-object v0, v0, Lo/getComparator;->extraCallback:Lo/reverseIteratorFrom$extraCallback;

    .line 110
    iput-object v0, p0, Lo/isRed;->onMessageChannelReady:Lo/reverseIteratorFrom$extraCallback;

    const-string v0, "pick_first"

    .line 124
    iput-object v0, p0, Lo/isRed;->onRelationshipValidationResult:Ljava/lang/String;

    .line 128
    sget-object v0, Lo/isRed;->requestPostMessageChannel:Lo/loadNestedQuery;

    iput-object v0, p0, Lo/isRed;->asInterface:Lo/loadNestedQuery;

    .line 130
    sget-object v0, Lo/isRed;->validateRelationship:Lo/removeAllUserWrites;

    iput-object v0, p0, Lo/isRed;->onTransact:Lo/removeAllUserWrites;

    .line 132
    sget-wide v0, Lo/isRed;->updateVisuals:J

    iput-wide v0, p0, Lo/isRed;->ICustomTabsCallback$Stub:J

    const/4 v0, 0x5

    .line 134
    iput v0, p0, Lo/isRed;->asBinder:I

    .line 135
    iput v0, p0, Lo/isRed;->ICustomTabsService:I

    const-wide/32 v0, 0x1000000

    .line 136
    iput-wide v0, p0, Lo/isRed;->newSession:J

    const-wide/32 v0, 0x100000

    .line 137
    iput-wide v0, p0, Lo/isRed;->ICustomTabsCallback$Stub$Proxy:J

    .line 144
    invoke-static {}, Lo/serializeObject;->onNavigationEvent()Lo/serializeObject;

    move-result-object v0

    iput-object v0, p0, Lo/isRed;->warmup:Lo/serializeObject;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lo/isRed;->getInterfaceDescriptor:Z

    .line 151
    invoke-static {}, Lo/putInternal;->ICustomTabsCallback()Lo/putInternal$onMessageChannelReady;

    move-result-object v1

    iput-object v1, p0, Lo/isRed;->extraCommand:Lo/putInternal$onMessageChannelReady;

    const/high16 v1, 0x400000

    .line 153
    iput v1, p0, Lo/isRed;->IPostMessageService:I

    .line 178
    iput-boolean v0, p0, Lo/isRed;->ICustomTabsService$Stub$Proxy:Z

    .line 179
    iput-boolean v0, p0, Lo/isRed;->cancelAll:Z

    .line 180
    iput-boolean v0, p0, Lo/isRed;->INotificationSideChannel:Z

    .line 182
    iput-boolean v0, p0, Lo/isRed;->IPostMessageService$Stub$Proxy:Z

    if-eqz p1, :cond_0

    .line 185
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/isRed;->extraCallback:Ljava/lang/String;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "target"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback$Stub()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadTrackedQueryKeys;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/isRed;->IPostMessageService$Stub:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 530
    iget-boolean v1, p0, Lo/isRed;->ICustomTabsService$Stub$Proxy:Z

    const-string v2, "getClientInterceptor"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Unable to apply census stats"

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "io.grpc.census.InternalCensusStatsAccessor"

    .line 535
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 536
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    .line 537
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    .line 542
    iget-boolean v7, p0, Lo/isRed;->cancelAll:Z

    .line 546
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lo/isRed;->INotificationSideChannel:Z

    .line 547
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v10

    .line 544
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadTrackedQueryKeys;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 557
    sget-object v6, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 555
    sget-object v6, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 553
    sget-object v6, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 551
    sget-object v6, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 562
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 565
    :cond_0
    iget-boolean v1, p0, Lo/isRed;->IPostMessageService$Stub$Proxy:Z

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "io.grpc.census.InternalCensusTracingAccessor"

    .line 570
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    .line 572
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 573
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadTrackedQueryKeys;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v1

    goto :goto_2

    :catch_4
    move-exception v1

    .line 582
    sget-object v2, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v1

    .line 580
    sget-object v2, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v1

    .line 578
    sget-object v2, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v1

    .line 576
    sget-object v2, Lo/isRed;->postMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v3, :cond_1

    .line 585
    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback()Lo/fixUp;
.end method

.method protected extraCallback()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method public final onNavigationEvent()Lo/insert;
    .locals 10

    .line 511
    new-instance v0, Lo/onDisconnectPut;

    new-instance v9, Lo/getCompoundHash;

    .line 513
    invoke-virtual {p0}, Lo/isRed;->ICustomTabsCallback()Lo/fixUp;

    move-result-object v3

    new-instance v4, Lo/onConnectionShutdown$extraCallback;

    invoke-direct {v4}, Lo/onConnectionShutdown$extraCallback;-><init>()V

    sget-object v1, Lo/getAuthTokenProvider;->ICustomTabsService:Lo/onDataPush$onNavigationEvent;

    .line 2030
    new-instance v5, Lo/removeListens;

    invoke-direct {v5, v1}, Lo/removeListens;-><init>(Lo/onDataPush$onNavigationEvent;)V

    .line 516
    sget-object v6, Lo/getAuthTokenProvider;->warmup:Lo/getIdManager;

    .line 518
    invoke-direct {p0}, Lo/isRed;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lo/sendUnauth;->onPostMessage:Lo/sendUnauth;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lo/getCompoundHash;-><init>(Lo/isRed;Lo/fixUp;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/onDataUpdate;Lo/getIdManager;Ljava/util/List;Lo/sendUnauth;)V

    invoke-direct {v0, v9}, Lo/onDisconnectPut;-><init>(Lo/insert;)V

    return-object v0
.end method

.method protected final onPostMessage()I
    .locals 1

    .line 175
    iget v0, p0, Lo/isRed;->IPostMessageService:I

    return v0
.end method
