.class public Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final RESOURCE_PREFIX_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_GOOG_API_CLIENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_GOOG_API_CLIENT_VALUE:Ljava/lang/String; = "gl-java/ fire/21.6.0 grpc/"


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private final callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final credentialsProvider:Lo/getOrgId;

.field private final metadataProvider:Lo/setUuidFromUtf8Bytes;

.field private final resourcePrefixValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "x-goog-api-client"

    .line 45
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->X_GOOG_API_CLIENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 47
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "google-cloud-resource-prefix"

    .line 48
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->RESOURCE_PREFIX_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>(Lo/CrashlyticsReport$Type;Landroid/content/Context;Lo/getOrgId;Lo/AutoValue_CrashlyticsReport_Session;Lo/setUuidFromUtf8Bytes;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 76
    iput-object p5, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    .line 77
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->credentialsProvider:Lo/getOrgId;

    .line 79
    new-instance p5, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;

    invoke-direct {p5, p3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;-><init>(Lo/getOrgId;)V

    .line 80
    new-instance p3, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    invoke-direct {p3, p1, p2, p4, p5}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;-><init>(Lo/CrashlyticsReport$Type;Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;Lo/loadTrackedQueries;)V

    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    .line 82
    invoke-virtual {p4}, Lo/AutoValue_CrashlyticsReport_Session;->getDatabaseId()Lo/setProximityOn;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "projects/%s/databases/%s"

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->resourcePrefixValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;)Lo/CrashlyticsReport$Type;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    return-object p0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p0

    return-object p0
.end method

.method private exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 3

    .line 270
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isMissingSslCiphers(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 2492
    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 3217
    iget v1, v1, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 273
    invoke-static {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v1

    .line 3509
    iget-object p1, p1, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    const-string v2, "The Cloud Firestore client failed to establish a secure connection. This is likely a problem with your app, rather than with Cloud Firestore itself. See https://bit.ly/2XFpdma for instructions on how to enable TLS on Android 4.x devices."

    .line 274
    invoke-direct {v0, v2, v1, p1}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 277
    :cond_0
    invoke-static {p1}, Lo/eventFromJson;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$runBidiStreamingRpc$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 108
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 110
    aget-object p3, p1, v0

    new-instance v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;

    invoke-direct {v1, p0, p2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;[Lo/resetPreviouslyActiveTrackedQueries;)V

    .line 148
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->requestHeaders()Lo/getPredecessorKey;

    move-result-object p0

    .line 110
    invoke-virtual {p3, v1, p0}, Lo/resetPreviouslyActiveTrackedQueries;->start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V

    .line 150
    invoke-interface {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;->onOpen()V

    .line 154
    aget-object p0, p1, v0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V

    return-void
.end method

.method public static synthetic lambda$runRpc$2(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 231
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/resetPreviouslyActiveTrackedQueries;

    .line 233
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;

    invoke-direct {v0, p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;)V

    .line 255
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->requestHeaders()Lo/getPredecessorKey;

    move-result-object p0

    .line 233
    invoke-virtual {p3, v0, p0}, Lo/resetPreviouslyActiveTrackedQueries;->start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V

    const/4 p0, 0x2

    .line 260
    invoke-virtual {p3, p0}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V

    .line 262
    invoke-virtual {p3, p2}, Lo/resetPreviouslyActiveTrackedQueries;->sendMessage(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p3}, Lo/resetPreviouslyActiveTrackedQueries;->halfClose()V

    return-void
.end method

.method public static synthetic lambda$runStreamingResponseRpc$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 187
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/resetPreviouslyActiveTrackedQueries;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;

    invoke-direct {v1, p0, v0, p3, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Ljava/util/List;Lo/resetPreviouslyActiveTrackedQueries;Lo/removeBackgroundStateChangeListener;)V

    .line 210
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->requestHeaders()Lo/getPredecessorKey;

    move-result-object p0

    .line 191
    invoke-virtual {p3, v1, p0}, Lo/resetPreviouslyActiveTrackedQueries;->start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V

    const/4 p0, 0x1

    .line 213
    invoke-virtual {p3, p0}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V

    .line 215
    invoke-virtual {p3, p2}, Lo/resetPreviouslyActiveTrackedQueries;->sendMessage(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p3}, Lo/resetPreviouslyActiveTrackedQueries;->halfClose()V

    return-void
.end method

.method private requestHeaders()Lo/getPredecessorKey;
    .locals 3

    .line 286
    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0}, Lo/getPredecessorKey;-><init>()V

    .line 287
    sget-object v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->X_GOOG_API_CLIENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    const-string v2, "gl-java/ fire/21.6.0 grpc/"

    invoke-virtual {v0, v1, v2}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 289
    sget-object v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->RESOURCE_PREFIX_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->resourcePrefixValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1, v0}, Lo/setUuidFromUtf8Bytes;->updateMetadata(Lo/getPredecessorKey;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public invalidateToken()V
    .locals 1

    .line 281
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->credentialsProvider:Lo/getOrgId;

    invoke-virtual {v0}, Lo/getOrgId;->invalidateToken()V

    return-void
.end method

.method runBidiStreamingRpc(Lo/reverseIterator;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame<",
            "TRespT;>;)",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 103
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->createClientCall(Lo/reverseIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 106
    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lo/CardFinalPaymentData;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p2

    .line 105
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 157
    new-instance p2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;

    invoke-direct {p2, p0, v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lcom/google/android/gms/tasks/Task;)V

    return-object p2
.end method

.method runRpc(Lo/reverseIterator;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;TReqT;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TRespT;>;"
        }
    .end annotation

    .line 224
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 226
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    .line 227
    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->createClientCall(Lo/reverseIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 229
    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lo/CategoryResult;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p2

    .line 228
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 2014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method runStreamingResponseRpc(Lo/reverseIterator;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;TReqT;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "TRespT;>;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 182
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    .line 183
    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->createClientCall(Lo/reverseIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 185
    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lo/getPaymentItem;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p2

    .line 184
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 1014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->callProvider:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->shutdown()V

    return-void
.end method
