.class public Lo/onCustomKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final authProvider:Lo/buildSingleThreadExecutorService;

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getOsDisplayVersionString;",
            "Lo/onUserId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onCustomKey;->instances:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lo/onCustomKey;->app:Lcom/google/firebase/FirebaseApp;

    if-eqz p2, :cond_0

    .line 45
    invoke-static {p2}, Lo/populateSessionOperatingSystemData;->forAuthenticatedAccess(Lo/getNativeSessionFilesDir;)Lo/buildSingleThreadExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/onCustomKey;->authProvider:Lo/buildSingleThreadExecutorService;

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lo/populateSessionOperatingSystemData;->forUnauthenticatedAccess()Lo/buildSingleThreadExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/onCustomKey;->authProvider:Lo/buildSingleThreadExecutorService;

    return-void
.end method


# virtual methods
.method declared-synchronized get(Lo/getOsDisplayVersionString;)Lo/onUserId;
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lo/onCustomKey;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onUserId;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lo/buildSingleThreadScheduledExecutorService;

    invoke-direct {v0}, Lo/buildSingleThreadScheduledExecutorService;-><init>()V

    .line 60
    iget-object v1, p0, Lo/onCustomKey;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lo/onCustomKey;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/buildSingleThreadScheduledExecutorService;->setSessionPersistenceKey(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lo/onCustomKey;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1}, Lo/buildSingleThreadScheduledExecutorService;->setFirebaseApp(Lcom/google/firebase/FirebaseApp;)V

    .line 64
    iget-object v1, p0, Lo/onCustomKey;->authProvider:Lo/buildSingleThreadExecutorService;

    invoke-virtual {v0, v1}, Lo/buildSingleThreadScheduledExecutorService;->setAuthTokenProvider(Lo/buildSingleThreadExecutorService;)V

    .line 66
    new-instance v1, Lo/onUserId;

    iget-object v2, p0, Lo/onCustomKey;->app:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v1, v2, p1, v0}, Lo/onUserId;-><init>(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)V

    .line 67
    iget-object v0, p0, Lo/onCustomKey;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 69
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
