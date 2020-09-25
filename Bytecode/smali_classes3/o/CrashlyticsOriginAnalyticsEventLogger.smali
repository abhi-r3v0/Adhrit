.class final Lo/CrashlyticsOriginAnalyticsEventLogger;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsOriginAnalyticsEventLogger$warmup;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$updateVisuals;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$onTransact;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$notify;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$Stub;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;,
        Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;S:",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient ICustomTabsCallback:I

.field private transient ICustomTabsCallback$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private asInterface:I

.field final transient extraCallback:I

.field final transient onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/performCreateApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final transient onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field private transient onRelationshipValidationResult:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1006
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$2;

    invoke-direct {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$2;-><init>()V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-void
.end method

.method private constructor <init>(Lo/serializeEvent;Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/serializeEvent;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3188
    iget v0, p1, Lo/serializeEvent;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p1, Lo/serializeEvent;->extraCallback:I

    :goto_0
    const/high16 v2, 0x10000

    .line 162
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->asInterface:I

    .line 4129
    iget-object v0, p1, Lo/serializeEvent;->ICustomTabsCallback:Lo/performCreateApp;

    invoke-virtual {p1}, Lo/serializeEvent;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_7

    move-object v0, v2

    :goto_1
    check-cast v0, Lo/performCreateApp;

    .line 164
    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 165
    iput-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    .line 5154
    iget p2, p1, Lo/serializeEvent;->onNavigationEvent:I

    if-ne p2, v1, :cond_2

    const/16 p1, 0x10

    goto :goto_2

    :cond_2
    iget p1, p1, Lo/serializeEvent;->onNavigationEvent:I

    :goto_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    :goto_3
    iget v4, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->asInterface:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    .line 177
    iput v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    add-int/lit8 v3, v2, -0x1

    .line 178
    iput v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    .line 6132
    new-array v3, v2, [Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 180
    iput-object v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 182
    div-int v3, p1, v2

    mul-int v2, v2, v3

    if-ge v2, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_4
    if-ge v0, v3, :cond_5

    shl-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 192
    :cond_5
    :goto_5
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 7116
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-interface {v2, p0, v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v2

    .line 193
    aput-object v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_6
    return-void

    .line 5061
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Both parameters are null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static ICustomTabsCallback(Lo/serializeEvent;)Lo/CrashlyticsOriginAnalyticsEventLogger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/serializeEvent;",
            ")",
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;+",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lo/serializeEvent;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lo/serializeEvent;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-static {}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;->onPostMessage()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger;-><init>(Lo/serializeEvent;Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;)V

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lo/serializeEvent;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lo/serializeEvent;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_1

    .line 206
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-static {}, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;->ICustomTabsCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger;-><init>(Lo/serializeEvent;Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;)V

    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lo/serializeEvent;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lo/serializeEvent;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_2

    .line 210
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-static {}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger;-><init>(Lo/serializeEvent;Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;)V

    return-object v0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lo/serializeEvent;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lo/serializeEvent;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-ne v0, v1, :cond_3

    .line 213
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-static {}, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger;-><init>(Lo/serializeEvent;Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;)V

    return-object v0

    .line 215
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static synthetic onMessageChannelReady(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2

    .line 22828
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22829
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lo/registerBreadcrumbHandler;->extraCallback(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
            "TK;TV;TE;>;>()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 386
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-object v0
.end method

.method private onPostMessage(Ljava/lang/Object;)I
    .locals 2

    .line 1080
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    invoke-virtual {v0, p1}, Lo/performCreateApp;->onPostMessage(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method static onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1124
    invoke-interface {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_0
    invoke-interface {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 8

    .line 2476
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 22774
    iget v5, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    if-eqz v5, :cond_1

    .line 22775
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 22777
    :try_start_0
    iget-object v5, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v6, 0x0

    .line 22778
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v7, 0x0

    .line 22779
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22781
    :cond_0
    invoke-virtual {v4}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback()V

    .line 22782
    iget-object v5, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 22784
    iget v5, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 22785
    iput v2, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22787
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22788
    throw v0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2366
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 9112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2367
    invoke-virtual {v1, p1, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 2381
    :cond_0
    iget-object v3, v1, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_8

    const-wide/16 v7, 0x0

    .line 2385
    array-length v9, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_7

    aget-object v11, v3, v10

    .line 2387
    iget v12, v11, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    .line 2389
    iget-object v12, v11, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    .line 2390
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 2391
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    :goto_3
    if-eqz v14, :cond_5

    .line 9950
    invoke-interface {v14}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_2

    .line 10342
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 10344
    :try_start_0
    invoke-virtual {v11}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10346
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10347
    throw v2

    :cond_1
    :goto_4
    move-object/from16 v15, v16

    goto :goto_5

    .line 9954
    :cond_2
    invoke-interface {v14}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 11342
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 11344
    :try_start_1
    invoke-virtual {v11}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11346
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11347
    throw v2

    :cond_3
    :goto_5
    if-eqz v15, :cond_4

    .line 12293
    iget-object v2, v1, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-interface {v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object v2

    .line 2393
    invoke-virtual {v2, v0, v15}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 2391
    :cond_4
    invoke-interface {v14}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v14

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 2398
    :cond_6
    iget v2, v11, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    int-to-long v11, v2

    add-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    cmp-long v2, v7, v4

    if-eqz v2, :cond_8

    add-int/lit8 v6, v6, 0x1

    move-wide v4, v7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2501
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onTransact:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2502
    :cond_0
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;

    invoke-direct {v0, p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onTransact:Ljava/util/Set;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2345
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 8112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2346
    invoke-virtual {v1, p1, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 9

    .line 2308
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2309
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 2310
    aget-object v7, v0, v4

    iget v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    if-eqz v7, :cond_0

    return v3

    .line 2313
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 2317
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 2318
    aget-object v7, v0, v4

    iget v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    if-eqz v7, :cond_2

    return v3

    .line 2321
    :cond_2
    aget-object v7, v0, v4

    iget v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2485
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback$Stub:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2486
    :cond_0
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;

    invoke-direct {v0, p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback$Stub:Ljava/util/Set;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2413
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 14112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 2414
    invoke-virtual {v1, p1, v0, p2, v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13890
    :cond_0
    throw v0

    .line 12890
    :cond_1
    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2428
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2422
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 16112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    .line 2423
    invoke-virtual {v1, p1, v0, p2, v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15890
    :cond_0
    throw v0

    .line 14890
    :cond_1
    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2439
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 17112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2440
    invoke-virtual {v1, p1, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2449
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 18112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2450
    invoke-virtual {v1, p1, v0, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2470
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 22112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2471
    invoke-virtual {v1, p1, v0, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21890
    :cond_0
    throw v0

    .line 20890
    :cond_1
    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2461
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 20112
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v2, v0, v2

    iget v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 2462
    invoke-virtual {v1, p1, v0, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19890
    :cond_1
    throw v0

    .line 18890
    :cond_2
    throw v0
.end method

.method public final size()I
    .locals 6

    .line 2332
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2334
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2335
    aget-object v4, v0, v3

    iget v4, v4, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    const-wide/32 v3, -0x80000000

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const/high16 v0, -0x80000000

    return v0

    :cond_2
    long-to-int v0, v1

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2493
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onRelationshipValidationResult:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    .line 2494
    :cond_0
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;

    invoke-direct {v0, p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onRelationshipValidationResult:Ljava/util/Collection;

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 8

    .line 2838
    new-instance v7, Lo/CrashlyticsOriginAnalyticsEventLogger$warmup;

    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    .line 2839
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v1

    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    .line 2840
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v2

    iget-object v3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    .line 2842
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object v4

    iget v5, p0, Lo/CrashlyticsOriginAnalyticsEventLogger;->asInterface:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lo/CrashlyticsOriginAnalyticsEventLogger$warmup;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/performCreateApp;Lo/performCreateApp;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v7
.end method
