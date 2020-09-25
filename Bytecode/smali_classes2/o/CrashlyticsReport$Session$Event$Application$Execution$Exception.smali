.class public final Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;
.super Lo/loadTrackedQueries;
.source ""


# static fields
.field private static final AUTHORIZATION_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "FirestoreCallCredentials"


# instance fields
.field private final credentialsProvider:Lo/getOrgId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "Authorization"

    .line 32
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->AUTHORIZATION_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>(Lo/getOrgId;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/loadTrackedQueries;-><init>()V

    .line 37
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->credentialsProvider:Lo/getOrgId;

    return-void
.end method

.method public static synthetic lambda$applyRequestMetadata$0(Lo/loadTrackedQueries$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirestoreCallCredentials"

    const-string v2, "Successfully fetched token."

    .line 52
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0}, Lo/getPredecessorKey;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    sget-object v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->AUTHORIZATION_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Bearer "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lo/loadTrackedQueries$ICustomTabsCallback;->onMessageChannelReady(Lo/getPredecessorKey;)V

    return-void
.end method

.method public static synthetic lambda$applyRequestMetadata$1(Lo/loadTrackedQueries$ICustomTabsCallback;Ljava/lang/Exception;)V
    .locals 5

    .line 62
    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    const-string v1, "FirestoreCallCredentials"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Firebase Auth API not available, not using authentication."

    .line 63
    invoke-static {v1, v0, p1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lo/getPredecessorKey;

    invoke-direct {p1}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {p0, p1}, Lo/loadTrackedQueries$ICustomTabsCallback;->onMessageChannelReady(Lo/getPredecessorKey;)V

    return-void

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No user signed in, not using authentication."

    .line 66
    invoke-static {v1, v0, p1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance p1, Lo/getPredecessorKey;

    invoke-direct {p1}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {p0, p1}, Lo/loadTrackedQueries$ICustomTabsCallback;->onMessageChannelReady(Lo/getPredecessorKey;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v4, "Failed to get token: %s."

    .line 69
    invoke-static {v1, v4, v3}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lo/emptyMap;->ICustomTabsCallback$Stub:Lo/emptyMap;

    .line 1456
    iget-object v3, v1, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v3, p1, :cond_2

    if-eqz v3, :cond_3

    .line 2052
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    .line 1459
    :cond_4
    new-instance v0, Lo/emptyMap;

    iget-object v2, v1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v1, v1, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lo/loadTrackedQueries$ICustomTabsCallback;->onPostMessage(Lo/emptyMap;)V

    return-void
.end method


# virtual methods
.method public final applyRequestMetadata(Lo/loadTrackedQueries$onMessageChannelReady;Ljava/util/concurrent/Executor;Lo/loadTrackedQueries$ICustomTabsCallback;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->credentialsProvider:Lo/getOrgId;

    .line 48
    invoke-virtual {p1}, Lo/getOrgId;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p3}, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;->lambdaFactory$(Lo/loadTrackedQueries$ICustomTabsCallback;)Lo/addLifecycleEventListener;

    move-result-object v0

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p3}, Lo/getAccountReference;->lambdaFactory$(Lo/loadTrackedQueries$ICustomTabsCallback;)Lo/addBackgroundStateChangeListener;

    move-result-object p3

    .line 59
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final thisUsesUnstableApi()V
    .locals 0

    return-void
.end method
