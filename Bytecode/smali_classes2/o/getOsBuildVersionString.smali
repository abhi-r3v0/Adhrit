.class public final Lo/getOsBuildVersionString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static final NAME_OP_INCREMENT:Ljava/lang/String; = "increment"

.field public static final NAME_OP_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final NAME_SUBKEY_SERVERVALUE:Ljava/lang/String; = ".sv"


# instance fields
.field private final arg$1:Lo/parseEventFrame;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/parseEventFrame;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getOsBuildVersionString;->arg$1:Lo/parseEventFrame;

    iput-object p2, p0, Lo/getOsBuildVersionString;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lo/getOsBuildVersionString;->arg$3:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method private static canBeRepresentedAsLong(Ljava/lang/Number;)Z
    .locals 1

    .line 170
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/finalizeSessionWithNativeEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {p0}, Lo/finalizeSessionWithNativeEvent;->millis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "timestamp"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static resolveComplexDeferredValue(Ljava/util/Map;Lo/readUserData;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/readUserData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p2, "increment"

    .line 73
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 78
    instance-of p2, p0, Ljava/lang/Number;

    if-nez p2, :cond_1

    return-object v1

    .line 82
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .line 85
    invoke-virtual {p1}, Lo/readUserData;->node()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Number;

    if-nez p2, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 91
    invoke-static {p0}, Lo/getOsBuildVersionString;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lo/getOsBuildVersionString;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 92
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_3

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 102
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static resolveDeferredLeafValue(Ljava/lang/Object;Lo/readUserData;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/readUserData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-object p0

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v1, ".sv"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    .line 50
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 53
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lo/getOsBuildVersionString;->resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_2
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 55
    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lo/getOsBuildVersionString;->resolveComplexDeferredValue(Ljava/util/Map;Lo/readUserData;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static resolveDeferredValueMerge(Lo/ExecutorUtils$1$1;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/ExecutorUtils$1$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$1$1;",
            "Lo/removeForwardSlashesIn;",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/ExecutorUtils$1$1;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    new-instance v2, Lo/readUserData$extraCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    invoke-virtual {p2, v3}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lo/readUserData$extraCallback;-><init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager$DirectoryProvider;

    invoke-static {v1, v2, p3}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v3, v1}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 107
    new-instance v0, Lo/readUserData$onPostMessage;

    invoke-direct {v0, p1}, Lo/readUserData$onPostMessage;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    invoke-static {p0, v0, p2}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method private static resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/readUserData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 118
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".priority"

    .line 122
    invoke-static {v1}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/readUserData;->getImmediateChild(Lo/LogFileManager;)Lo/readUserData;

    move-result-object v1

    .line 120
    invoke-static {v0, v1, p2}, Lo/getOsBuildVersionString;->resolveDeferredLeafValue(Ljava/lang/Object;Lo/readUserData;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lo/getOsBuildVersionString;->resolveDeferredLeafValue(Ljava/lang/Object;Lo/readUserData;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v1, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 127
    :cond_1
    :goto_0
    invoke-static {v1}, Lo/toStringMap;->parsePriority(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-static {p1, p0}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 133
    :cond_3
    check-cast p0, Lo/setCurrentSession;

    .line 134
    new-instance v0, Lo/getAppIdentifier;

    invoke-direct {v0, p0}, Lo/getAppIdentifier;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    .line 135
    new-instance v2, Lo/getOsBuildVersionString$3;

    invoke-direct {v2, p1, p2, v0}, Lo/getOsBuildVersionString$3;-><init>(Lo/readUserData;Ljava/util/Map;Lo/getAppIdentifier;)V

    invoke-virtual {p0, v2}, Lo/setCurrentSession;->forEachChild(Lo/setCurrentSession$ICustomTabsCallback;)V

    .line 147
    invoke-virtual {v0}, Lo/getAppIdentifier;->getRootNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 148
    invoke-virtual {v0}, Lo/getAppIdentifier;->getRootNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-static {v1}, Lo/toStringMap;->parsePriority(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/LogFileManager$DirectoryProvider;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0

    .line 150
    :cond_4
    invoke-virtual {v0}, Lo/getAppIdentifier;->getRootNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method public static resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/removeForwardSlashesIn;",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 112
    new-instance v0, Lo/readUserData$extraCallback;

    invoke-direct {v0, p1, p2}, Lo/readUserData$extraCallback;-><init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V

    invoke-static {p0, v0, p3}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method static resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "timestamp"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/getOsBuildVersionString;->arg$1:Lo/parseEventFrame;

    iget-object v1, p0, Lo/getOsBuildVersionString;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lo/getOsBuildVersionString;->arg$3:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1, v2, p1}, Lo/parseEventFrame;->lambda$registerRpcInternal$4$Rpc(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
