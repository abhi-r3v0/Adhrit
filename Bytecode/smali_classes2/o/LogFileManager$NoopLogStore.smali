.class public final Lo/LogFileManager$NoopLogStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/access$lambda$6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/access$lambda$6;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LogFileManager$NoopLogStore;->arg$1:Lo/access$lambda$6;

    return-void
.end method

.method public static NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method public static NodeFromJSON(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const-string v0, ".value"

    const-string v1, ".priority"

    .line 33
    :try_start_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 34
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    .line 35
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap;->parsePriority(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 39
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 45
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p0

    return-object p0

    .line 46
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lo/open;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lo/open;-><init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 48
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 49
    new-instance v0, Lo/writeInts;

    check-cast p0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Lo/writeInts;-><init>(Ljava/lang/Long;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 50
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 51
    new-instance v0, Lo/writeInts;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lo/writeInts;-><init>(Ljava/lang/Long;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 52
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 53
    new-instance v0, Lo/getLogString;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 54
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 55
    new-instance v0, Lo/getLogAsBytes;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1}, Lo/getLogAsBytes;-><init>(Ljava/lang/Boolean;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 56
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 102
    :cond_8
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse node with class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_9
    :goto_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 61
    check-cast p0, Ljava/util/Map;

    const-string v0, ".sv"

    .line 62
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 64
    new-instance v0, Lo/getBytesForLog;

    invoke-direct {v0, p0, p1}, Lo/getBytesForLog;-><init>(Ljava/util/Map;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 67
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 70
    :cond_b
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "."

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 73
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 75
    invoke-static {v2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v2

    .line 76
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_c
    check-cast p0, Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 84
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    const-string v2, ""

    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    .line 87
    invoke-interface {v3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 88
    invoke-static {v2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v2

    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :cond_e
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 95
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p0

    return-object p0

    .line 97
    :cond_f
    sget-object p0, Lo/setCurrentSession;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    .line 98
    invoke-static {v0, p0}, Lo/populateFramesList$onNavigationEvent;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object p0

    .line 99
    new-instance v0, Lo/setCurrentSession;

    invoke-direct {v0, p0, p1}, Lo/setCurrentSession;-><init>(Lo/populateFramesList;Lo/LogFileManager$DirectoryProvider;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 106
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to parse node"

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static lambdaFactory$(Lo/access$lambda$6;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/LogFileManager$NoopLogStore;

    invoke-direct {v0, p0}, Lo/LogFileManager$NoopLogStore;-><init>(Lo/access$lambda$6;)V

    return-object v0
.end method

.method public static nameAndPriorityCompare(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)I
    .locals 0

    .line 113
    invoke-interface {p1, p3}, Lo/LogFileManager$DirectoryProvider;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 117
    :cond_0
    invoke-virtual {p0, p2}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/LogFileManager$NoopLogStore;->arg$1:Lo/access$lambda$6;

    invoke-static {v0}, Lo/access$lambda$6;->lambda$getId$0(Lo/access$lambda$6;)V

    return-void
.end method
