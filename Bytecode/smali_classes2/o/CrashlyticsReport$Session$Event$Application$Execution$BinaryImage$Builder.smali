.class public Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final SSL_DEPENDENCY_ERROR_MESSAGE:Ljava/lang/String; = "The Cloud Firestore client failed to establish a secure connection. This is likely a problem with your app, rather than with Cloud Firestore itself. See https://bit.ly/2XFpdma for instructions on how to enable TLS on Android 4.x devices."

.field static final WHITE_LISTED_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field private final databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

.field private final serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

.field private final workerQueue:Lo/CrashlyticsReport$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "date"

    const-string v2, "x-google-backends"

    const-string v3, "x-google-netmon-label"

    const-string v4, "x-google-service"

    const-string v5, "x-google-gfe-request-trace"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->WHITE_LISTED_HEADERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session;Lo/CrashlyticsReport$Type;Lo/getOrgId;Landroid/content/Context;Lo/setUuidFromUtf8Bytes;)V
    .locals 8

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    .line 93
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    .line 94
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session;->getDatabaseId()Lo/setProximityOn;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;-><init>(Lo/setProximityOn;)V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 96
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;-><init>(Lo/CrashlyticsReport$Type;Landroid/content/Context;Lo/getOrgId;Lo/AutoValue_CrashlyticsReport_Session;Lo/setUuidFromUtf8Bytes;)V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    return-void
.end method

.method public static isMissingSslCiphers(Lo/emptyMap;)Z
    .locals 5

    .line 2492
    iget-object v0, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 2509
    iget-object p0, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    .line 250
    instance-of v1, p0, Ljavax/net/ssl/SSLHandshakeException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "no ciphers available"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 254
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    sget-object v1, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public static isPermanentError(Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)Z
    .locals 2

    .line 206
    sget-object v0, Lo/getIconBitmap$onPostMessage;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown gRPC status code: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    .line 208
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Treated status OK as error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isPermanentError(Lo/emptyMap;)Z
    .locals 0

    .line 1492
    iget-object p0, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 2217
    iget p0, p0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 195
    invoke-static {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object p0

    invoke-static {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isPermanentError(Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)Z

    move-result p0

    return p0
.end method

.method public static isPermanentWriteError(Lo/emptyMap;)Z
    .locals 1

    .line 271
    invoke-static {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isPermanentError(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3492
    iget-object p0, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 271
    sget-object v0, Lo/emptyMap$onPostMessage;->newSession:Lo/emptyMap$onPostMessage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$commit$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lcom/google/android/gms/tasks/Task;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->invalidateToken()V

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCompleteFile;

    .line 143
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 4202
    iget-object v1, p1, Lo/getCompleteFile;->commitTime_:Lo/getCustomHeaders;

    if-nez v1, :cond_2

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lo/getCompleteFile;->commitTime_:Lo/getCustomHeaders;

    .line 143
    :goto_0
    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v0

    .line 5060
    iget-object v1, p1, Lo/getCompleteFile;->writeResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 5073
    iget-object v4, p1, Lo/getCompleteFile;->writeResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v4, v3}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeFixed64NoTag;

    .line 149
    iget-object v5, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v5, v4, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMutationResult(Lo/writeFixed64NoTag;Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$Builder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public static synthetic lambda$lookup$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;Lcom/google/android/gms/tasks/Task;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->invalidateToken()V

    .line 174
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 176
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/closeInProgressStream;

    .line 177
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMaybeDocument(Lo/closeInProgressStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 182
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public commit(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;>;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lo/ClsFileOutputStream;->ICustomTabsCallback()Lo/ClsFileOutputStream$onMessageChannelReady;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ClsFileOutputStream$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)Lo/ClsFileOutputStream$onMessageChannelReady;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$FilesPayload;

    .line 127
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeMutation(Lo/CrashlyticsReport$FilesPayload;)Lo/writeSInt32;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ClsFileOutputStream$onMessageChannelReady;->extraCallback(Lo/writeSInt32;)Lo/ClsFileOutputStream$onMessageChannelReady;

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 130
    invoke-static {}, Lo/writeInt32;->onMessageChannelReady()Lo/reverseIterator;

    move-result-object v1

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/ClsFileOutputStream;

    invoke-virtual {p1, v1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->runRpc(Lo/reverseIterator;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    .line 132
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0}, Lo/getRewardsClosingBalance$extraCallback;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)Lo/isDefaultApp;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method createWatchStream(Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;)Lo/CrashlyticsReport$Session$OperatingSystem$Builder;
    .locals 4

    .line 115
    new-instance v0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    iget-object v3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;)V

    return-object v0
.end method

.method createWriteStream(Lo/CrashlyticsReport$Session$User$onPostMessage;)Lo/CrashlyticsReport$Session$User;
    .locals 4

    .line 120
    new-instance v0, Lo/CrashlyticsReport$Session$User;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    iget-object v3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/CrashlyticsReport$Session$User;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;Lo/CrashlyticsReport$Session$User$onPostMessage;)V

    return-object v0
.end method

.method getDatabaseInfo()Lo/AutoValue_CrashlyticsReport_Session;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    return-object v0
.end method

.method getWorkerQueue()Lo/CrashlyticsReport$Type;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    return-object v0
.end method

.method public lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 4
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

    .line 156
    invoke-static {}, Lo/ByteString$Output;->ICustomTabsCallback()Lo/ByteString$Output$onNavigationEvent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ByteString$Output$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/ByteString$Output$onNavigationEvent;

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 159
    iget-object v3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v3, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/ByteString$Output$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/ByteString$Output$onNavigationEvent;

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 162
    invoke-static {}, Lo/writeInt32;->ICustomTabsCallback()Lo/reverseIterator;

    move-result-object v2

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/ByteString$Output;

    invoke-virtual {v1, v2, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->runStreamingResponseRpc(Lo/reverseIterator;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    .line 164
    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, p1}, Lo/getPreferredBanks;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;)Lo/isDefaultApp;

    move-result-object p1

    .line 163
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method shutdown()V
    .locals 1

    .line 102
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->channel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->shutdown()V

    return-void
.end method
