.class public final Lo/markInitializationComplete;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/markInitializationComplete$onNavigationEvent;,
        Lo/markInitializationComplete$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/parseEventExecution;

.field private final arg$2:Landroid/util/Pair;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/parseEventExecution;Landroid/util/Pair;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/markInitializationComplete;->arg$1:Lo/parseEventExecution;

    iput-object p2, p0, Lo/markInitializationComplete;->arg$2:Landroid/util/Pair;

    return-void
.end method

.method static detect(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getNativeReportFiles<",
            "*>;>;)V"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lo/markInitializationComplete;->toGraph(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lo/markInitializationComplete;->getRoots(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/markInitializationComplete$onNavigationEvent;

    .line 106
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 109
    invoke-virtual {v3}, Lo/markInitializationComplete$onNavigationEvent;->getDependencies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/markInitializationComplete$onNavigationEvent;

    .line 110
    invoke-virtual {v5, v3}, Lo/markInitializationComplete$onNavigationEvent;->removeDependent(Lo/markInitializationComplete$onNavigationEvent;)V

    .line 111
    invoke-virtual {v5}, Lo/markInitializationComplete$onNavigationEvent;->isRoot()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v2, p0, :cond_3

    return-void

    .line 124
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/markInitializationComplete$onNavigationEvent;

    .line 126
    invoke-virtual {v1}, Lo/markInitializationComplete$onNavigationEvent;->isRoot()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lo/markInitializationComplete$onNavigationEvent;->isLeaf()Z

    move-result v2

    if-nez v2, :cond_4

    .line 127
    invoke-virtual {v1}, Lo/markInitializationComplete$onNavigationEvent;->getComponent()Lo/getNativeReportFiles;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_5
    new-instance v0, Lcom/google/firebase/components/DependencyCycleException;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/DependencyCycleException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method private static getRoots(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;)",
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/markInitializationComplete$onNavigationEvent;

    .line 184
    invoke-virtual {v1}, Lo/markInitializationComplete$onNavigationEvent;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toGraph(Ljava/util/List;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getNativeReportFiles<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getNativeReportFiles;

    .line 137
    new-instance v3, Lo/markInitializationComplete$onNavigationEvent;

    invoke-direct {v3, v1}, Lo/markInitializationComplete$onNavigationEvent;-><init>(Lo/getNativeReportFiles;)V

    .line 138
    invoke-virtual {v1}, Lo/getNativeReportFiles;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 139
    new-instance v6, Lo/markInitializationComplete$onPostMessage;

    invoke-virtual {v1}, Lo/getNativeReportFiles;->isValue()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-direct {v6, v5, v7, v2}, Lo/markInitializationComplete$onPostMessage;-><init>(Ljava/lang/Class;ZLo/markInitializationComplete$3;)V

    .line 140
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 141
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 144
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v6}, Lo/markInitializationComplete$onPostMessage;->access$100(Lo/markInitializationComplete$onPostMessage;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const-string v1, "Multiple components provide %s."

    .line 146
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_3
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 153
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/markInitializationComplete$onNavigationEvent;

    .line 154
    invoke-virtual {v3}, Lo/markInitializationComplete$onNavigationEvent;->getComponent()Lo/getNativeReportFiles;

    move-result-object v4

    invoke-virtual {v4}, Lo/getNativeReportFiles;->getDependencies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/CrashlyticsCore$1;

    .line 155
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->isDirectInjection()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 159
    new-instance v6, Lo/markInitializationComplete$onPostMessage;

    .line 160
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->isSet()Z

    move-result v5

    invoke-direct {v6, v7, v5, v2}, Lo/markInitializationComplete$onPostMessage;-><init>(Ljava/lang/Class;ZLo/markInitializationComplete$3;)V

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_7

    .line 164
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/markInitializationComplete$onNavigationEvent;

    .line 165
    invoke-virtual {v3, v6}, Lo/markInitializationComplete$onNavigationEvent;->addDependency(Lo/markInitializationComplete$onNavigationEvent;)V

    .line 166
    invoke-virtual {v6, v3}, Lo/markInitializationComplete$onNavigationEvent;->addDependent(Lo/markInitializationComplete$onNavigationEvent;)V

    goto :goto_2

    .line 172
    :cond_8
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 174
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/markInitializationComplete;->arg$1:Lo/parseEventExecution;

    iget-object v1, p0, Lo/markInitializationComplete;->arg$2:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lo/parseEventExecution;->lambda$getOrStartGetTokenRequest$0$RequestDeduplicator(Landroid/util/Pair;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
