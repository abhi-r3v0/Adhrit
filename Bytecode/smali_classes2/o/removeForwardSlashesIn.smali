.class public Lo/removeForwardSlashesIn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeForwardSlashesIn$onMessageChannelReady;,
        Lo/removeForwardSlashesIn$extraCallback;,
        Lo/removeForwardSlashesIn$onPostMessage;,
        Lo/removeForwardSlashesIn$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final SIZE_THRESHOLD_FOR_COMPOUND_HASH:J = 0x400L


# instance fields
.field private final keepSyncedQueries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            ">;"
        }
    .end annotation
.end field

.field private final listenProvider:Lo/removeForwardSlashesIn$onPostMessage;

.field private final logger:Lo/FileLogStore;

.field private nextQueryTag:J

.field private final pendingWriteTree:Lo/writeUserData;

.field private final persistenceManager:Lo/NativeSessionFileGzipper;

.field private final queryToTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Lo/InstallerPackageNameProvider;",
            ">;"
        }
    .end annotation
.end field

.field private syncPointTree:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;"
        }
    .end annotation
.end field

.field private final tagToQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InstallerPackageNameProvider;",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getNamedThreadFactory;Lo/NativeSessionFileGzipper;Lo/removeForwardSlashesIn$onPostMessage;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 867
    iput-wide v0, p0, Lo/removeForwardSlashesIn;->nextQueryTag:J

    .line 165
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    iput-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    .line 166
    new-instance v0, Lo/writeUserData;

    invoke-direct {v0}, Lo/writeUserData;-><init>()V

    iput-object v0, p0, Lo/removeForwardSlashesIn;->pendingWriteTree:Lo/writeUserData;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/removeForwardSlashesIn;->tagToQueryMap:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/removeForwardSlashesIn;->queryToTagMap:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/removeForwardSlashesIn;->keepSyncedQueries:Ljava/util/Set;

    .line 170
    iput-object p3, p0, Lo/removeForwardSlashesIn;->listenProvider:Lo/removeForwardSlashesIn$onPostMessage;

    .line 171
    iput-object p2, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    const-string p2, "SyncTree"

    .line 172
    invoke-virtual {p1, p2}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/removeForwardSlashesIn;->logger:Lo/FileLogStore;

    return-void
.end method

.method static synthetic access$000(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->tagForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lo/removeForwardSlashesIn;)Lo/FileLogStore;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->logger:Lo/FileLogStore;

    return-object p0
.end method

.method static synthetic access$1000(Lo/removeForwardSlashesIn;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->tagToQueryMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/callTask;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/removeForwardSlashesIn;->setupListener(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/callTask;)V

    return-void
.end method

.method static synthetic access$1200(Lo/removeForwardSlashesIn;Lo/persistFatalEvent;)Ljava/util/List;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->collectDistinctViewsForSubTree(Lo/persistFatalEvent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->queryForListening(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->listenProvider:Lo/removeForwardSlashesIn$onPostMessage;

    return-object p0
.end method

.method static synthetic access$1600(Lo/removeForwardSlashesIn;Ljava/util/List;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->removeTags(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lo/removeForwardSlashesIn;->applyOperationDescendantsHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    return-object p0
.end method

.method static synthetic access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->pendingWriteTree:Lo/writeUserData;

    return-object p0
.end method

.method static synthetic access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->applyOperationToSyncPoints(Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->queryForTag(Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getKeysFileForSession;)Ljava/util/List;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/removeForwardSlashesIn;->applyTaggedOperation(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    return-object p0
.end method

.method static synthetic access$702(Lo/removeForwardSlashesIn;Lo/persistFatalEvent;)Lo/persistFatalEvent;
    .locals 0

    .line 76
    iput-object p1, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    return-object p1
.end method

.method static synthetic access$800(Lo/removeForwardSlashesIn;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/removeForwardSlashesIn;->queryToTagMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lo/removeForwardSlashesIn;)Lo/InstallerPackageNameProvider;
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/removeForwardSlashesIn;->getNextQueryTag()Lo/InstallerPackageNameProvider;

    move-result-object p0

    return-object p0
.end method

.method private applyOperationDescendantsHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getKeysFileForSession;",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/MetaDataStore;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 938
    invoke-virtual {p2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getModelName;

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 943
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    .line 948
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 950
    invoke-virtual {p2}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p2

    new-instance v8, Lo/removeForwardSlashesIn$8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lo/removeForwardSlashesIn$8;-><init>(Lo/removeForwardSlashesIn;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/getKeysFileForSession;Ljava/util/List;)V

    .line 951
    invoke-virtual {p2, v8}, Lo/populateFramesList;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v0, p1, p4, p3}, Lo/getModelName;->applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v7
.end method

.method private applyOperationHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getKeysFileForSession;",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/MetaDataStore;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 900
    invoke-virtual {p1}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-direct {p0, p1, p2, p3, p4}, Lo/removeForwardSlashesIn;->applyOperationDescendantsHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 904
    :cond_0
    invoke-virtual {p2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getModelName;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 908
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    .line 911
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 912
    invoke-virtual {p1}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v2

    .line 913
    invoke-virtual {p1, v2}, Lo/getKeysFileForSession;->operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;

    move-result-object v3

    .line 914
    invoke-virtual {p2}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p2

    invoke-virtual {p2, v2}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/persistFatalEvent;

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    .line 917
    invoke-interface {p3, v2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 918
    :goto_0
    invoke-virtual {p4, v2}, Lo/MetaDataStore;->child(Lo/LogFileManager;)Lo/MetaDataStore;

    move-result-object v2

    .line 920
    invoke-direct {p0, v3, p2, v4, v2}, Lo/removeForwardSlashesIn;->applyOperationHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;

    move-result-object p2

    .line 919
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 925
    invoke-virtual {v0, p1, p4, p3}, Lo/getModelName;->applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v1
.end method

.method private applyOperationToSyncPoints(Lo/getKeysFileForSession;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getKeysFileForSession;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    iget-object v1, p0, Lo/removeForwardSlashesIn;->pendingWriteTree:Lo/writeUserData;

    .line 891
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/writeUserData;->childWrites(Lo/ExecutorUtils$2;)Lo/MetaDataStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 887
    invoke-direct {p0, p1, v0, v2, v1}, Lo/removeForwardSlashesIn;->applyOperationHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private applyTaggedOperation(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getKeysFileForSession;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Lo/getKeysFileForSession;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getModelName;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Missing sync point for query tag that we\'re tracking"

    .line 403
    invoke-static {v1, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 404
    iget-object v1, p0, Lo/removeForwardSlashesIn;->pendingWriteTree:Lo/writeUserData;

    invoke-virtual {v1, p1}, Lo/writeUserData;->childWrites(Lo/ExecutorUtils$2;)Lo/MetaDataStore;

    move-result-object p1

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, p2, p1, v1}, Lo/getModelName;->applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private collectDistinctViewsForSubTree(Lo/persistFatalEvent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;)",
            "Ljava/util/List<",
            "Lo/callTask;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-direct {p0, p1, v0}, Lo/removeForwardSlashesIn;->collectDistinctViewsForSubTree(Lo/persistFatalEvent;Ljava/util/List;)V

    return-object v0
.end method

.method private collectDistinctViewsForSubTree(Lo/persistFatalEvent;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;",
            "Ljava/util/List<",
            "Lo/callTask;",
            ">;)V"
        }
    .end annotation

    .line 756
    invoke-virtual {p1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getModelName;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lo/getModelName;->hasCompleteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-virtual {v0}, Lo/getModelName;->getCompleteView()Lo/callTask;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {v0}, Lo/getModelName;->getQueryViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 763
    :cond_1
    invoke-virtual {p1}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p1

    invoke-virtual {p1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 764
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/persistFatalEvent;

    invoke-direct {p0, v0, p2}, Lo/removeForwardSlashesIn;->collectDistinctViewsForSubTree(Lo/persistFatalEvent;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getNextQueryTag()Lo/InstallerPackageNameProvider;
    .locals 5

    .line 871
    new-instance v0, Lo/InstallerPackageNameProvider;

    iget-wide v1, p0, Lo/removeForwardSlashesIn;->nextQueryTag:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lo/removeForwardSlashesIn;->nextQueryTag:J

    invoke-direct {v0, v1, v2}, Lo/InstallerPackageNameProvider;-><init>(J)V

    return-object v0
.end method

.method private queryForListening(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 782
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-static {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private queryForTag(Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 830
    iget-object v0, p0, Lo/removeForwardSlashesIn;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/lambda$awaitEvenIfOnMainThread$0;

    return-object p1
.end method

.method private removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Lo/addDelayedShutdownHook;",
            "Lo/getMarkerFile;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/removeForwardSlashesIn$2;-><init>(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private removeTags(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            ">;)V"
        }
    .end annotation

    .line 770
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 771
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    invoke-direct {p0, v0}, Lo/removeForwardSlashesIn;->tagForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 774
    :goto_1
    invoke-static {v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 775
    iget-object v2, p0, Lo/removeForwardSlashesIn;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lo/removeForwardSlashesIn;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupListener(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/callTask;)V
    .locals 3

    .line 792
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    .line 793
    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->tagForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object v1

    .line 794
    new-instance v2, Lo/removeForwardSlashesIn$extraCallback;

    invoke-direct {v2, p0, p2}, Lo/removeForwardSlashesIn$extraCallback;-><init>(Lo/removeForwardSlashesIn;Lo/callTask;)V

    .line 796
    iget-object p2, p0, Lo/removeForwardSlashesIn;->listenProvider:Lo/removeForwardSlashesIn$onPostMessage;

    invoke-direct {p0, p1}, Lo/removeForwardSlashesIn;->queryForListening(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2, v2}, Lo/removeForwardSlashesIn$onPostMessage;->startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V

    .line 798
    iget-object p1, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    invoke-virtual {p1, v0}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {p1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getModelName;

    invoke-virtual {p1}, Lo/getModelName;->hasCompleteView()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "If we\'re adding a query, it shouldn\'t be shadowed"

    .line 802
    invoke-static {p1, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void

    .line 807
    :cond_0
    new-instance p2, Lo/removeForwardSlashesIn$1;

    invoke-direct {p2, p0}, Lo/removeForwardSlashesIn$1;-><init>(Lo/removeForwardSlashesIn;)V

    invoke-virtual {p1, p2}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    return-void
.end method

.method private tagForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;
    .locals 1

    .line 835
    iget-object v0, p0, Lo/removeForwardSlashesIn;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InstallerPackageNameProvider;

    return-object p1
.end method


# virtual methods
.method public ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lo/finalizeSessionWithNativeEvent;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v8, Lo/removeForwardSlashesIn$7;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lo/removeForwardSlashesIn$7;-><init>(Lo/removeForwardSlashesIn;ZJZLo/finalizeSessionWithNativeEvent;)V

    invoke-interface {v0, v8}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public addEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addDelayedShutdownHook;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$5;

    invoke-direct {v1, p0, p1}, Lo/removeForwardSlashesIn$5;-><init>(Lo/removeForwardSlashesIn;Lo/addDelayedShutdownHook;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyListenComplete(Lo/ExecutorUtils$2;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$11;

    invoke-direct {v1, p0, p1}, Lo/removeForwardSlashesIn$11;-><init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerMerge(Lo/ExecutorUtils$2;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$15;

    invoke-direct {v1, p0, p2, p1}, Lo/removeForwardSlashesIn$15;-><init>(Lo/removeForwardSlashesIn;Ljava/util/Map;Lo/ExecutorUtils$2;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$9;

    invoke-direct {v1, p0, p1, p2}, Lo/removeForwardSlashesIn$9;-><init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerRangeMerges(Lo/ExecutorUtils$2;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/List<",
            "Lo/onAddFocusables$onNavigationEvent;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getModelName;

    if-nez v0, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 332
    :cond_0
    invoke-virtual {v0}, Lo/getModelName;->getCompleteView()Lo/callTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v0}, Lo/callTask;->getServerCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 335
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onAddFocusables$onNavigationEvent;

    .line 336
    invoke-virtual {v1, v0}, Lo/onAddFocusables$onNavigationEvent;->applyTo(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0, p1, v0}, Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 342
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyTaggedListenComplete(Lo/InstallerPackageNameProvider;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallerPackageNameProvider;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$14;

    invoke-direct {v1, p0, p1}, Lo/removeForwardSlashesIn$14;-><init>(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedQueryMerge(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/InstallerPackageNameProvider;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;",
            "Lo/InstallerPackageNameProvider;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/removeForwardSlashesIn$3;-><init>(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;Lo/ExecutorUtils$2;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedQueryOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/InstallerPackageNameProvider;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/InstallerPackageNameProvider;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$12;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/removeForwardSlashesIn$12;-><init>(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedRangeMerges(Lo/ExecutorUtils$2;Ljava/util/List;Lo/InstallerPackageNameProvider;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/List<",
            "Lo/onAddFocusables$onNavigationEvent;",
            ">;",
            "Lo/InstallerPackageNameProvider;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p3}, Lo/removeForwardSlashesIn;->queryForTag(Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 352
    iget-object v1, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getModelName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Missing sync point for query tag that we\'re tracking"

    .line 353
    invoke-static {v4, v5}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 354
    invoke-virtual {v1, v0}, Lo/getModelName;->viewForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/callTask;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Missing view for query tag that we\'re tracking"

    .line 355
    invoke-static {v2, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lo/callTask;->getServerCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 357
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onAddFocusables$onNavigationEvent;

    .line 358
    invoke-virtual {v1, v0}, Lo/onAddFocusables$onNavigationEvent;->applyTo(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_2

    .line 360
    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lo/removeForwardSlashesIn;->applyTaggedQueryOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/InstallerPackageNameProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 363
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$1$1;JZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/ExecutorUtils$1$1;",
            "Lo/ExecutorUtils$1$1;",
            "JZ)",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    .line 213
    iget-object v9, v8, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v10, Lo/removeForwardSlashesIn$6;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lo/removeForwardSlashesIn$6;-><init>(Lo/removeForwardSlashesIn;ZLo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;JLo/ExecutorUtils$1$1;)V

    invoke-interface {v9, v10}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/LogFileManager$DirectoryProvider;",
            "JZZ)",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    .line 187
    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    move-object v9, p0

    .line 188
    iget-object v10, v9, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v11, Lo/removeForwardSlashesIn$4;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p4

    move-object v7, p3

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lo/removeForwardSlashesIn$4;-><init>(Lo/removeForwardSlashesIn;ZLo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;JLo/LogFileManager$DirectoryProvider;Z)V

    invoke-interface {v10, v11}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public calcCompleteEventCache(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    .line 848
    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    .line 851
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    .line 853
    :cond_0
    invoke-virtual {v3}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v4

    .line 854
    invoke-virtual {v3}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v3

    .line 855
    invoke-virtual {v1, v4}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v1

    .line 856
    invoke-static {v1, p1}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 857
    invoke-virtual {v0, v4}, Lo/persistFatalEvent;->getChild(Lo/LogFileManager;)Lo/persistFatalEvent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    .line 858
    :goto_0
    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getModelName;

    if-eqz v4, :cond_2

    .line 860
    invoke-virtual {v4, v5}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    .line 862
    :cond_2
    invoke-virtual {v3}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_0

    .line 863
    :cond_3
    iget-object v0, p0, Lo/removeForwardSlashesIn;->pendingWriteTree:Lo/writeUserData;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Lo/writeUserData;->calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method getSyncPointTree()Lo/persistFatalEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;"
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lo/removeForwardSlashesIn;->syncPointTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keepSynced(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 734
    iget-object v0, p0, Lo/removeForwardSlashesIn;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    new-instance p2, Lo/removeForwardSlashesIn$onMessageChannelReady;

    invoke-direct {p2, p1}, Lo/removeForwardSlashesIn$onMessageChannelReady;-><init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-virtual {p0, p2}, Lo/removeForwardSlashesIn;->addEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    .line 737
    iget-object p2, p0, Lo/removeForwardSlashesIn;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 738
    iget-object p2, p0, Lo/removeForwardSlashesIn;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 739
    new-instance p2, Lo/removeForwardSlashesIn$onMessageChannelReady;

    invoke-direct {p2, p1}, Lo/removeForwardSlashesIn$onMessageChannelReady;-><init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-virtual {p0, p2}, Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    .line 740
    iget-object p2, p0, Lo/removeForwardSlashesIn;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeAllEventRegistrations(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getMarkerFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Lo/getMarkerFile;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, p1, v0, p2}, Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lo/removeForwardSlashesIn;->persistenceManager:Lo/NativeSessionFileGzipper;

    new-instance v1, Lo/removeForwardSlashesIn$10;

    invoke-direct {v1, p0}, Lo/removeForwardSlashesIn$10;-><init>(Lo/removeForwardSlashesIn;)V

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public removeEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addDelayedShutdownHook;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
