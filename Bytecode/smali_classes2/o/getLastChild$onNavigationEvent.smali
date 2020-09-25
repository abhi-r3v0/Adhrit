.class final Lo/getLastChild$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromQueryDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLastChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/fromQueryDefinition<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/util/concurrent/Executor;

.field final onNavigationEvent:Lo/fromQueryDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromQueryDefinition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lo/fromQueryDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/fromQueryDefinition<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/getLastChild$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/fromQueryDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/fromQueryDefinition<",
            "TT;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lo/getLastChild$onNavigationEvent;

    iget-object v1, p0, Lo/getLastChild$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v2}, Lo/fromQueryDefinition;->ICustomTabsCallback()Lo/fromQueryDefinition;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/getLastChild$onNavigationEvent;-><init>(Ljava/util/concurrent/Executor;Lo/fromQueryDefinition;)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1104
    new-instance v0, Lo/getLastChild$onNavigationEvent;

    iget-object v1, p0, Lo/getLastChild$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v2}, Lo/fromQueryDefinition;->ICustomTabsCallback()Lo/fromQueryDefinition;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/getLastChild$onNavigationEvent;-><init>(Ljava/util/concurrent/Executor;Lo/fromQueryDefinition;)V

    return-object v0
.end method

.method public final extraCallback(Lo/hasIndex;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasIndex<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 60
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    new-instance v1, Lo/getLastChild$onNavigationEvent$4;

    invoke-direct {v1, p0, p1}, Lo/getLastChild$onNavigationEvent$4;-><init>(Lo/getLastChild$onNavigationEvent;Lo/hasIndex;)V

    invoke-interface {v0, v1}, Lo/fromQueryDefinition;->extraCallback(Lo/hasIndex;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->onNavigationEvent()Z

    move-result v0

    return v0
.end method
