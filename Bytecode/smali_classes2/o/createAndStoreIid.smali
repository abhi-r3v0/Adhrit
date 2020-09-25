.class public Lo/createAndStoreIid;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final instance:Lo/createAndStoreIid;


# instance fields
.field private final repos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getNamedThreadFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getCrashlyticsInstallId;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lo/createAndStoreIid;

    invoke-direct {v0}, Lo/createAndStoreIid;-><init>()V

    sput-object v0, Lo/createAndStoreIid;->instance:Lo/createAndStoreIid;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lo/createAndStoreIid;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    return-object p0
.end method

.method private createLocalRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;Lo/onUserId;)Lo/getCrashlyticsInstallId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->freeze()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lo/getOsDisplayVersionString;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 97
    iget-object v3, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v2, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 100
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    new-instance v3, Lo/getCrashlyticsInstallId;

    invoke-direct {v3, p2, p1, p3}, Lo/getCrashlyticsInstallId;-><init>(Lo/getOsDisplayVersionString;Lo/getNamedThreadFactory;Lo/onUserId;)V

    .line 102
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v1

    return-object v3

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "createLocalRepo() called for existing repo."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static createRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;Lo/onUserId;)Lo/getCrashlyticsInstallId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 42
    sget-object v0, Lo/createAndStoreIid;->instance:Lo/createAndStoreIid;

    invoke-direct {v0, p0, p1, p2}, Lo/createAndStoreIid;->createLocalRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;Lo/onUserId;)Lo/getCrashlyticsInstallId;

    move-result-object p0

    return-object p0
.end method

.method private getLocalRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;)Lo/getCrashlyticsInstallId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->freeze()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lo/getOsDisplayVersionString;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lo/buildSingleThreadScheduledExecutorService;

    .line 83
    invoke-static {v2, p2, v3}, Lo/zzac;->createDatabaseForTests(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)Lo/onUserId;

    .line 86
    :cond_1
    iget-object p2, p0, Lo/createAndStoreIid;->repos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCrashlyticsInstallId;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v1

    throw p1
.end method

.method public static getRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;)Lo/getCrashlyticsInstallId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 37
    sget-object v0, Lo/createAndStoreIid;->instance:Lo/createAndStoreIid;

    invoke-direct {v0, p0, p1}, Lo/createAndStoreIid;->getLocalRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;)Lo/getCrashlyticsInstallId;

    move-result-object p0

    return-object p0
.end method

.method public static interrupt(Lo/getCrashlyticsInstallId;)V
    .locals 1

    .line 50
    new-instance v0, Lo/createAndStoreIid$2;

    invoke-direct {v0, p0}, Lo/createAndStoreIid$2;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-virtual {p0, v0}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static interrupt(Lo/getNamedThreadFactory;)V
    .locals 1

    .line 46
    sget-object v0, Lo/createAndStoreIid;->instance:Lo/createAndStoreIid;

    invoke-direct {v0, p0}, Lo/createAndStoreIid;->interruptInternal(Lo/getNamedThreadFactory;)V

    return-void
.end method

.method private interruptInternal(Lo/getNamedThreadFactory;)V
    .locals 2

    .line 111
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->getRunLoop()Lo/migrateLegacyId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lo/createAndStoreIid$5;

    invoke-direct {v1, p0, p1}, Lo/createAndStoreIid$5;-><init>(Lo/createAndStoreIid;Lo/getNamedThreadFactory;)V

    invoke-interface {v0, v1}, Lo/migrateLegacyId;->scheduleNow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static resume(Lo/getCrashlyticsInstallId;)V
    .locals 1

    .line 60
    new-instance v0, Lo/createAndStoreIid$4;

    invoke-direct {v0, p0}, Lo/createAndStoreIid$4;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-virtual {p0, v0}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static resume(Lo/getNamedThreadFactory;)V
    .locals 1

    .line 70
    sget-object v0, Lo/createAndStoreIid;->instance:Lo/createAndStoreIid;

    invoke-direct {v0, p0}, Lo/createAndStoreIid;->resumeInternal(Lo/getNamedThreadFactory;)V

    return-void
.end method

.method private resumeInternal(Lo/getNamedThreadFactory;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->getRunLoop()Lo/migrateLegacyId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lo/createAndStoreIid$1;

    invoke-direct {v1, p0, p1}, Lo/createAndStoreIid$1;-><init>(Lo/createAndStoreIid;Lo/getNamedThreadFactory;)V

    invoke-interface {v0, v1}, Lo/migrateLegacyId;->scheduleNow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
