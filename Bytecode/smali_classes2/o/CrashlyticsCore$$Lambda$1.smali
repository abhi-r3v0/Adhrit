.class final Lo/CrashlyticsCore$$Lambda$1;
.super Lo/CrashlyticsController$SendReportRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsCore$$Lambda$1$extraCallback;
    }
.end annotation


# instance fields
.field private final allowedDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegateContainer:Lo/logException;


# direct methods
.method constructor <init>(Lo/getNativeReportFiles;Lo/logException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getNativeReportFiles<",
            "*>;",
            "Lo/logException;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lo/CrashlyticsController$SendReportRunnable;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 39
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 40
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 41
    invoke-virtual {p1}, Lo/getNativeReportFiles;->getDependencies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/CrashlyticsCore$1;

    .line 42
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->isDirectInjection()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->isSet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->isSet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v5}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1}, Lo/getNativeReportFiles;->getPublishedEvents()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 57
    const-class v4, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedDirectInterfaces:Ljava/util/Set;

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedProviderInterfaces:Ljava/util/Set;

    .line 61
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 62
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 63
    invoke-virtual {p1}, Lo/getNativeReportFiles;->getPublishedEvents()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedPublishedEvents:Ljava/util/Set;

    .line 64
    iput-object p2, p0, Lo/CrashlyticsCore$$Lambda$1;->delegateContainer:Lo/logException;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->delegateContainer:Lo/logException;

    invoke-interface {v0, p1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    const-class v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 89
    :cond_0
    new-instance p1, Lo/CrashlyticsCore$$Lambda$1$extraCallback;

    iget-object v1, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedPublishedEvents:Ljava/util/Set;

    check-cast v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-direct {p1, v1, v0}, Lo/CrashlyticsCore$$Lambda$1$extraCallback;-><init>(Ljava/util/Set;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;)V

    return-object p1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Attempting to request an undeclared dependency %s."

    .line 76
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getProvider(Ljava/lang/Class;)Lo/access$lambda$4;
    .locals 3
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

    .line 100
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->delegateContainer:Lo/logException;

    invoke-interface {v0, p1}, Lo/logException;->getProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Attempting to request an undeclared dependency Provider<%s>."

    .line 102
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedSetDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->delegateContainer:Lo/logException;

    invoke-interface {v0, p1}, Lo/logException;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Attempting to request an undeclared dependency Set<%s>."

    .line 132
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOfProvider(Ljava/lang/Class;)Lo/access$lambda$4;
    .locals 3
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

    .line 115
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->allowedSetProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1;->delegateContainer:Lo/logException;

    invoke-interface {v0, p1}, Lo/logException;->setOfProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    .line 117
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
