.class public final Lo/serializeObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serializeObject$onPostMessage;,
        Lo/serializeObject$extraCallback;,
        Lo/serializeObject$ICustomTabsCallback;,
        Lo/serializeObject$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/serializeObject;

.field private static final onNavigationEvent:Ljava/util/logging/Logger;

.field private static synthetic onRelationshipValidationResult:Z


# instance fields
.field public final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lo/splitBytes<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lo/splitBytes<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lo/splitBytes<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lo/serializeObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lo/serializeObject;->onRelationshipValidationResult:Z

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/serializeObject;->onNavigationEvent:Ljava/util/logging/Logger;

    .line 50
    new-instance v0, Lo/serializeObject;

    invoke-direct {v0}, Lo/serializeObject;-><init>()V

    sput-object v0, Lo/serializeObject;->onMessageChannelReady:Lo/serializeObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lo/serializeObject;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/serializeObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/serializeObject;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Ljava/util/Map;Lo/splitBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/splitBytes<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Lo/splitBytes;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v0

    .line 2085
    iget-wide v0, v0, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/splitBytes;

    .line 239
    sget-boolean p1, Lo/serializeObject;->onRelationshipValidationResult:Z

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static onNavigationEvent()Lo/serializeObject;
    .locals 1

    .line 75
    sget-object v0, Lo/serializeObject;->onMessageChannelReady:Lo/serializeObject;

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/util/Map;Lo/splitBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/splitBytes<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2097
    invoke-interface {p1}, Lo/buildFrom;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object p1

    .line 3085
    iget-wide v0, p1, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/splitBytes;

    .line 244
    sget-boolean p1, Lo/serializeObject;->onRelationshipValidationResult:Z

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic onPostMessage()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lo/serializeObject;->onNavigationEvent:Ljava/util/logging/Logger;

    return-object v0
.end method
