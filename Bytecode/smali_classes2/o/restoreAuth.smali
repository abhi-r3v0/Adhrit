.class public final Lo/restoreAuth;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/restoreAuth;


# instance fields
.field private final onMessageChannelReady:[Lo/getMinEntry;

.field final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lo/restoreAuth;

    const/4 v1, 0x0

    new-array v1, v1, [Lo/getMinEntry;

    invoke-direct {v0, v1}, Lo/restoreAuth;-><init>([Lo/getMinEntry;)V

    sput-object v0, Lo/restoreAuth;->ICustomTabsCallback:Lo/restoreAuth;

    return-void
.end method

.method private constructor <init>([Lo/getMinEntry;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/restoreAuth;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    iput-object p1, p0, Lo/restoreAuth;->onMessageChannelReady:[Lo/getMinEntry;

    return-void
.end method

.method public static extraCallback(Lo/deleteTrackedQuery;Lo/serverCacheEstimatedSizeInBytes;Lo/getPredecessorKey;)Lo/restoreAuth;
    .locals 3

    .line 1236
    iget-object p2, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    .line 53
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object p0, Lo/restoreAuth;->ICustomTabsCallback:Lo/restoreAuth;

    return-object p0

    .line 2140
    :cond_0
    new-instance v0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v0}, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;-><init>()V

    if-eqz p1, :cond_3

    .line 2169
    check-cast p1, Lo/serverCacheEstimatedSizeInBytes;

    iput-object p1, v0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    if-eqz p0, :cond_2

    .line 3177
    check-cast p0, Lo/deleteTrackedQuery;

    iput-object p0, v0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->extraCallback:Lo/deleteTrackedQuery;

    .line 4185
    new-instance p0, Lo/beginTransaction$onMessageChannelReady;

    iget-object p1, v0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v0, v0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->extraCallback:Lo/deleteTrackedQuery;

    invoke-direct {p0, p1, v0}, Lo/beginTransaction$onMessageChannelReady;-><init>(Lo/serverCacheEstimatedSizeInBytes;Lo/deleteTrackedQuery;)V

    .line 61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Lo/getMinEntry;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 63
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/beginTransaction$onNavigationEvent;

    invoke-virtual {v2, p0}, Lo/beginTransaction$onNavigationEvent;->extraCallback(Lo/beginTransaction$onMessageChannelReady;)Lo/beginTransaction;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance p0, Lo/restoreAuth;

    invoke-direct {p0, v0}, Lo/restoreAuth;-><init>([Lo/getMinEntry;)V

    return-object p0

    .line 3910
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callOptions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2910
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "transportAttrs cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onPostMessage(J)V
    .locals 4

    .line 231
    iget-object v0, p0, Lo/restoreAuth;->onMessageChannelReady:[Lo/getMinEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 232
    invoke-virtual {v3, p1, p2}, Lo/getMinEntry;->onMessageChannelReady(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
