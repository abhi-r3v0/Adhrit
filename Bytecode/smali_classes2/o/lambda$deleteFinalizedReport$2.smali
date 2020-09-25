.class public Lo/lambda$deleteFinalizedReport$2;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile INSTANCE:Lo/lambda$deleteFinalizedReport$2;


# instance fields
.field private final infos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/readTextFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/lambda$deleteFinalizedReport$2;->infos:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lo/lambda$deleteFinalizedReport$2;
    .locals 2

    .line 54
    sget-object v0, Lo/lambda$deleteFinalizedReport$2;->INSTANCE:Lo/lambda$deleteFinalizedReport$2;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lo/lambda$deleteFinalizedReport$2;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lo/lambda$deleteFinalizedReport$2;->INSTANCE:Lo/lambda$deleteFinalizedReport$2;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lo/lambda$deleteFinalizedReport$2;

    invoke-direct {v1}, Lo/lambda$deleteFinalizedReport$2;-><init>()V

    sput-object v1, Lo/lambda$deleteFinalizedReport$2;->INSTANCE:Lo/lambda$deleteFinalizedReport$2;

    .line 61
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method getRegisteredVersions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/readTextFile;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/lambda$deleteFinalizedReport$2;->infos:Ljava/util/Set;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lo/lambda$deleteFinalizedReport$2;->infos:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    throw v1
.end method

.method public registerVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lo/lambda$deleteFinalizedReport$2;->infos:Ljava/util/Set;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lo/lambda$deleteFinalizedReport$2;->infos:Ljava/util/Set;

    invoke-static {p1, p2}, Lo/readTextFile;->create(Ljava/lang/String;Ljava/lang/String;)Lo/readTextFile;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
