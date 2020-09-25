.class public final Lo/removeAllUserWrites;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/removeAllUserWrites;


# instance fields
.field public final onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lo/pruneTreeRecursive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lo/removeAllUserWrites;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/pruneTreeRecursive;

    new-instance v2, Lo/purgeCache$onPostMessage;

    invoke-direct {v2}, Lo/purgeCache$onPostMessage;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/removeAllUserWrites;-><init>([Lo/pruneTreeRecursive;)V

    sput-object v0, Lo/removeAllUserWrites;->extraCallback:Lo/removeAllUserWrites;

    return-void
.end method

.method private varargs constructor <init>([Lo/pruneTreeRecursive;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/removeAllUserWrites;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 57
    aget-object v1, p1, v0

    .line 58
    iget-object v2, p0, Lo/removeAllUserWrites;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Lo/pruneTreeRecursive;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady()Lo/removeAllUserWrites;
    .locals 1

    .line 42
    sget-object v0, Lo/removeAllUserWrites;->extraCallback:Lo/removeAllUserWrites;

    return-object v0
.end method
