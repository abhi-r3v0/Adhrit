.class public Lo/checkForPreviousCrash;
.super Lo/CrashlyticsController$SendReportRunnable;
.source ""


# static fields
.field private static final EMPTY_PROVIDER:Lo/access$lambda$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/access$lambda$4<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getNativeReportFiles<",
            "*>;",
            "Lo/CrashlyticsCore$4<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final eventBus:Lo/CrashlyticsCore$3;

.field private final lazyInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/CrashlyticsCore$4<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lazySetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/CrashlyticsCore$4<",
            "Ljava/util/Set<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lo/markInitializationStarted;->lambdaFactory$()Lo/access$lambda$4;

    move-result-object v0

    sput-object v0, Lo/checkForPreviousCrash;->EMPTY_PROVIDER:Lo/access$lambda$4;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lo/getNativeReportFiles;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;[",
            "Lo/getNativeReportFiles<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lo/CrashlyticsController$SendReportRunnable;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkForPreviousCrash;->lazyInstanceMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkForPreviousCrash;->lazySetMap:Ljava/util/Map;

    .line 50
    new-instance v0, Lo/CrashlyticsCore$3;

    invoke-direct {v0, p1}, Lo/CrashlyticsCore$3;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lo/checkForPreviousCrash;->eventBus:Lo/CrashlyticsCore$3;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lo/checkForPreviousCrash;->eventBus:Lo/CrashlyticsCore$3;

    const-class v1, Lo/CrashlyticsCore$3;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lo/getNativeReportFiles;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo/getNativeReportFiles;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    .line 55
    invoke-interface {v0}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 57
    :cond_0
    array-length p2, p3

    :goto_1
    if-ge v4, p2, :cond_2

    aget-object v0, p3, v4

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {p1}, Lo/markInitializationComplete;->detect(Ljava/util/List;)V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getNativeReportFiles;

    .line 66
    new-instance p3, Lo/CrashlyticsCore$4;

    invoke-static {p0, p2}, Lo/didPreviousInitializationFail;->lambdaFactory$(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)Lo/access$lambda$4;

    move-result-object v0

    invoke-direct {p3, v0}, Lo/CrashlyticsCore$4;-><init>(Lo/access$lambda$4;)V

    .line 71
    iget-object v0, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_3
    invoke-direct {p0}, Lo/checkForPreviousCrash;->processInstanceComponents()V

    .line 74
    invoke-direct {p0}, Lo/checkForPreviousCrash;->processSetComponents()V

    return-void
.end method

.method static synthetic lambda$new$0(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)Ljava/lang/Object;
    .locals 2

    .line 69
    invoke-virtual {p1}, Lo/getNativeReportFiles;->getFactory()Lo/doBackgroundInitializationAsync;

    move-result-object v0

    new-instance v1, Lo/CrashlyticsCore$$Lambda$1;

    invoke-direct {v1, p1, p0}, Lo/CrashlyticsCore$$Lambda$1;-><init>(Lo/getNativeReportFiles;Lo/logException;)V

    invoke-interface {v0, v1}, Lo/doBackgroundInitializationAsync;->create(Lo/logException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$processSetComponents$1(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsCore$4;

    .line 121
    invoke-virtual {v1}, Lo/CrashlyticsCore$4;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private processInstanceComponents()V
    .locals 5

    .line 78
    iget-object v0, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNativeReportFiles;

    .line 80
    invoke-virtual {v2}, Lo/getNativeReportFiles;->isValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsCore$4;

    .line 85
    invoke-virtual {v2}, Lo/getNativeReportFiles;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 86
    iget-object v4, p0, Lo/checkForPreviousCrash;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lo/checkForPreviousCrash;->validateDependencies()V

    return-void
.end method

.method private processSetComponents()V
    .locals 6

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getNativeReportFiles;

    .line 99
    invoke-virtual {v3}, Lo/getNativeReportFiles;->isValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsCore$4;

    .line 105
    invoke-virtual {v3}, Lo/getNativeReportFiles;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 106
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 115
    iget-object v3, p0, Lo/checkForPreviousCrash;->lazySetMap:Ljava/util/Map;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-instance v4, Lo/CrashlyticsCore$4;

    invoke-static {v2}, Lo/isBuildIdValid;->lambdaFactory$(Ljava/util/Set;)Lo/access$lambda$4;

    move-result-object v2

    invoke-direct {v4, v2}, Lo/CrashlyticsCore$4;-><init>(Lo/access$lambda$4;)V

    .line 115
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private validateDependencies()V
    .locals 6

    .line 166
    iget-object v0, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getNativeReportFiles;

    .line 167
    invoke-virtual {v1}, Lo/getNativeReportFiles;->getDependencies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsCore$1;

    .line 168
    invoke-virtual {v3}, Lo/CrashlyticsCore$1;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo/checkForPreviousCrash;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v3}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unsatisfied dependency for component %s: %s"

    .line 170
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lo/CrashlyticsController$SendReportRunnable;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Ljava/lang/Class;)Lo/access$lambda$4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/access$lambda$4<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null interface requested."

    .line 131
    invoke-static {p1, v0}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lo/checkForPreviousCrash;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/access$lambda$4;

    return-object p1
.end method

.method public initializeEagerComponents(Z)V
    .locals 4

    .line 153
    iget-object v0, p0, Lo/checkForPreviousCrash;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNativeReportFiles;

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsCore$4;

    .line 157
    invoke-virtual {v2}, Lo/getNativeReportFiles;->isAlwaysEager()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lo/getNativeReportFiles;->isEagerInDefaultApp()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 158
    :cond_1
    invoke-virtual {v1}, Lo/CrashlyticsCore$4;->get()Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_2
    iget-object p1, p0, Lo/checkForPreviousCrash;->eventBus:Lo/CrashlyticsCore$3;

    invoke-virtual {p1}, Lo/CrashlyticsCore$3;->enablePublishingAndFlushPending()V

    return-void
.end method

.method public bridge synthetic setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lo/CrashlyticsController$SendReportRunnable;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public setOfProvider(Ljava/lang/Class;)Lo/access$lambda$4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/access$lambda$4<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/checkForPreviousCrash;->lazySetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsCore$4;

    if-eqz p1, :cond_0

    return-object p1

    .line 142
    :cond_0
    sget-object p1, Lo/checkForPreviousCrash;->EMPTY_PROVIDER:Lo/access$lambda$4;

    return-object p1
.end method
