.class public Lo/getClsId;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final defaultExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private committed:Z

.field private final datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

.field private lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

.field private final mutations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;"
        }
    .end annotation
.end field

.field private final readVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/withNdkPayload;",
            ">;"
        }
    .end annotation
.end field

.field private writtenDocs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    invoke-static {}, Lo/getClsId;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lo/getClsId;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    .line 74
    iput-object p1, p0, Lo/getClsId;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    return-void
.end method

.method private static createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 8

    .line 166
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 167
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    .line 170
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v7
.end method

.method private ensureCommitNotCalled()V
    .locals 3

    .line 246
    iget-boolean v0, p0, Lo/getClsId;->committed:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A transaction object cannot be used after its update callback has been invoked."

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 252
    sget-object v0, Lo/getClsId;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic lambda$commit$1(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3001
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 3002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    .line 3004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 3005
    invoke-virtual {v0, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static synthetic lambda$lookup$0(Lo/getClsId;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 97
    invoke-direct {p0, v1}, Lo/getClsId;->recordVersion(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private precondition(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;
    .locals 2

    .line 202
    iget-object v0, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/withNdkPayload;

    .line 203
    iget-object v1, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {v0}, Lo/CrashlyticsReport$FilesPayload$File;->updateTime(Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    sget-object p1, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    return-object p1
.end method

.method private preconditionForUpdate(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/withNdkPayload;

    .line 218
    iget-object v1, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 219
    sget-object p1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v1, "Can\'t update a document that doesn\'t exist."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    throw p1

    .line 233
    :cond_1
    :goto_0
    invoke-static {v0}, Lo/CrashlyticsReport$FilesPayload$File;->updateTime(Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 236
    invoke-static {p1}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    return-object p1
.end method

.method private recordVersion(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 176
    instance-of v0, p1, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    instance-of v0, p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz v0, :cond_3

    .line 180
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 185
    :goto_0
    iget-object v1, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v0, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/withNdkPayload;

    .line 187
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 189
    :cond_1
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v1, "Document version changed between two reads."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    throw p1

    .line 193
    :cond_2
    iget-object v1, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected document type in transaction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private write(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lo/getClsId;->ensureCommitNotCalled()V

    .line 242
    iget-object v0, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public commit()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lo/getClsId;->ensureCommitNotCalled()V

    .line 131
    iget-object v0, p0, Lo/getClsId;->lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 2004
    new-instance v1, Lo/getProjectId;

    invoke-direct {v1}, Lo/getProjectId;-><init>()V

    .line 2005
    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v1

    .line 135
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/getClsId;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 137
    iget-object v1, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    .line 138
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 142
    iget-object v2, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    new-instance v3, Lo/CrashlyticsReport$Session$Application$Organization$Builder;

    invoke-direct {p0, v1}, Lo/getClsId;->precondition(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lo/CrashlyticsReport$Session$Application$Organization$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lo/getClsId;->committed:Z

    .line 145
    iget-object v0, p0, Lo/getClsId;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    iget-object v1, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->commit(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;->lambdaFactory$()Lo/isDefaultApp;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 2

    .line 124
    new-instance v0, Lo/withEvents;

    invoke-direct {p0, p1}, Lo/getClsId;->precondition(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/withEvents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getClsId;->write(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;>;"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lo/getClsId;->ensureCommitNotCalled()V

    .line 84
    iget-object v0, p0, Lo/getClsId;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v1, "Firestore transactions require all reads to be executed before all writes."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 1004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lo/getClsId;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    .line 91
    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/preferLastSpan$onTransact;->lambdaFactory$(Lo/getClsId;)Lo/isDefaultApp;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public set(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lo/getClsId;->precondition(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/getClsId;->write(Ljava/util/List;)V

    .line 107
    iget-object p2, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)V
    .locals 1

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lo/getClsId;->preconditionForUpdate(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/getClsId;->write(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/firestore/FirebaseFirestoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 118
    iput-object p2, p0, Lo/getClsId;->lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 120
    :goto_0
    iget-object p2, p0, Lo/getClsId;->writtenDocs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
