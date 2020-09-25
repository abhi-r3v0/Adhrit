.class Lo/markInitializationComplete$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/markInitializationComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final component:Lo/getNativeReportFiles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getNativeReportFiles<",
            "*>;"
        }
    .end annotation
.end field

.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final dependents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getNativeReportFiles;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getNativeReportFiles<",
            "*>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependencies:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependents:Ljava/util/Set;

    .line 60
    iput-object p1, p0, Lo/markInitializationComplete$onNavigationEvent;->component:Lo/getNativeReportFiles;

    return-void
.end method


# virtual methods
.method addDependency(Lo/markInitializationComplete$onNavigationEvent;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addDependent(Lo/markInitializationComplete$onNavigationEvent;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getComponent()Lo/getNativeReportFiles;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->component:Lo/getNativeReportFiles;

    return-object v0
.end method

.method getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/markInitializationComplete$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method isLeaf()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependencies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isRoot()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeDependent(Lo/markInitializationComplete$onNavigationEvent;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/markInitializationComplete$onNavigationEvent;->dependents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
