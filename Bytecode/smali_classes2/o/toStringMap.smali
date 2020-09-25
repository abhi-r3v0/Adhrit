.class public final Lo/toStringMap;
.super Ljava/lang/Object;

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toStringMap$ICustomTabsCallback;,
        Lo/toStringMap$extraCallback;,
        Lo/toStringMap$onPostMessage;,
        Lo/toStringMap$onMessageChannelReady;,
        Lo/toStringMap$onNavigationEvent;,
        Lo/toStringMap$asInterface;,
        Lo/toStringMap$ICustomTabsCallback$Stub;,
        Lo/toStringMap$asBinder;,
        Lo/toStringMap$onTransact;,
        Lo/toStringMap$onRelationshipValidationResult;,
        Lo/toStringMap$newSession;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/removeBackgroundStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/toStringMap;->arg$1:Lo/removeBackgroundStateChangeListener;

    return-void
.end method

.method public static NullPriority()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 1023
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    return-object v0
.end method

.method public static isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z
    .locals 1

    .line 1027
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lo/getLogString;

    if-nez v0, :cond_0

    instance-of v0, p0, Lo/open;

    if-nez v0, :cond_0

    instance-of p0, p0, Lo/getBytesForLog;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static lambdaFactory$(Lo/removeBackgroundStateChangeListener;)Lo/isDefaultApp;
    .locals 1

    .line 4000
    new-instance v0, Lo/toStringMap;

    invoke-direct {v0, p0}, Lo/toStringMap;-><init>(Lo/removeBackgroundStateChangeListener;)V

    return-object v0
.end method

.method public static parsePriority(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    const/4 v0, 0x0

    .line 1035
    invoke-static {v0, p0}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    return-object p0
.end method

.method public static parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 1039
    invoke-static {p1}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 1040
    instance-of v0, p1, Lo/writeInts;

    if-eqz v0, :cond_0

    .line 1041
    new-instance v0, Lo/getLogString;

    .line 1043
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    move-object p1, v0

    .line 1045
    :cond_0
    invoke-static {p1}, Lo/toStringMap;->isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1046
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Node"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " contains invalid priority: Must be a string, double, ServerValue, or null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/toStringMap;->arg$1:Lo/removeBackgroundStateChangeListener;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Type;->lambda$callTask$0(Lo/removeBackgroundStateChangeListener;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
