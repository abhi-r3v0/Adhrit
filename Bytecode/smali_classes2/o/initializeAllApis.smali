.class public final Lo/initializeAllApis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/initializeAllApis$onPostMessage;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18

.field public static final onNavigationEvent:Ljava/util/concurrent/Executor;


# instance fields
.field private final arg$1:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lo/initializeAllApis$onPostMessage;

    invoke-direct {v0}, Lo/initializeAllApis$onPostMessage;-><init>()V

    sput-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lo/FirebaseNetworkException;

    invoke-direct {v0}, Lo/FirebaseNetworkException;-><init>()V

    sput-object v0, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/initializeAllApis;->arg$1:Ljava/lang/Throwable;

    return-void
.end method

.method private static estimateLeafNodeSize(Lo/getWorkingFileForSession;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getWorkingFileForSession<",
            "*>;)J"
        }
    .end annotation

    .line 1040
    instance-of v0, p0, Lo/getLogString;

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    instance-of v0, p0, Lo/writeInts;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1044
    :cond_1
    instance-of v0, p0, Lo/getLogAsBytes;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x4

    goto :goto_0

    .line 1046
    :cond_2
    instance-of v0, p0, Lo/open;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x2

    .line 1047
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long v1, v2, v0

    .line 1051
    :goto_0
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v1

    :cond_3
    const-wide/16 v3, 0x18

    add-long/2addr v1, v3

    .line 1056
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    check-cast p0, Lo/getWorkingFileForSession;

    invoke-static {p0}, Lo/initializeAllApis;->estimateLeafNodeSize(Lo/getWorkingFileForSession;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    .line 1049
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown leaf node type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static estimateSerializedNodeSize(Lo/LogFileManager$DirectoryProvider;)J
    .locals 8

    .line 1061
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 1063
    :cond_0
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    check-cast p0, Lo/getWorkingFileForSession;

    invoke-static {p0}, Lo/initializeAllApis;->estimateLeafNodeSize(Lo/getWorkingFileForSession;)J

    move-result-wide v0

    return-wide v0

    .line 1066
    :cond_1
    instance-of v0, p0, Lo/setCurrentSession;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected node type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    const-wide/16 v3, 0x1

    .line 1068
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/QueueFile;

    .line 1069
    invoke-virtual {v5}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v6

    invoke-virtual {v6}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    .line 1071
    invoke-virtual {v5}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-static {v5}, Lo/initializeAllApis;->estimateSerializedNodeSize(Lo/LogFileManager$DirectoryProvider;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 1073
    :cond_2
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0xc

    add-long/2addr v3, v0

    .line 1075
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    check-cast p0, Lo/getWorkingFileForSession;

    invoke-static {p0}, Lo/initializeAllApis;->estimateLeafNodeSize(Lo/getWorkingFileForSession;)J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_3
    return-wide v3
.end method

.method public static lambdaFactory$(Ljava/lang/Throwable;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/initializeAllApis;

    invoke-direct {v0, p0}, Lo/initializeAllApis;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static nodeCount(Lo/LogFileManager$DirectoryProvider;)I
    .locals 4

    .line 1082
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1084
    :cond_0
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1087
    :cond_1
    instance-of v0, p0, Lo/setCurrentSession;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected node type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 1089
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile;

    .line 1090
    invoke-virtual {v0}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {v0}, Lo/initializeAllApis;->nodeCount(Lo/LogFileManager$DirectoryProvider;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/initializeAllApis;->arg$1:Ljava/lang/Throwable;

    invoke-static {v0}, Lo/CrashlyticsReport$Type;->lambda$panic$3(Ljava/lang/Throwable;)V

    return-void
.end method
