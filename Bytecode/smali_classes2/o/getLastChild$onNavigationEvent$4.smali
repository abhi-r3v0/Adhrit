.class final Lo/getLastChild$onNavigationEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLastChild$onNavigationEvent;->extraCallback(Lo/hasIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasIndex<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/hasIndex;

.field final synthetic onMessageChannelReady:Lo/getLastChild$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getLastChild$onNavigationEvent;Lo/hasIndex;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iput-object p2, p0, Lo/getLastChild$onNavigationEvent$4;->extraCallback:Lo/hasIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromQueryDefinition<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iget-object p1, p1, Lo/getLastChild$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/getLastChild$onNavigationEvent$4$4;

    invoke-direct {v0, p0, p2}, Lo/getLastChild$onNavigationEvent$4$4;-><init>(Lo/getLastChild$onNavigationEvent$4;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueryDefinition;Lo/getMinNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromQueryDefinition<",
            "TT;>;",
            "Lo/getMinNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iget-object p1, p1, Lo/getLastChild$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/getLastChild$onNavigationEvent$4$3;

    invoke-direct {v0, p0, p2}, Lo/getLastChild$onNavigationEvent$4$3;-><init>(Lo/getLastChild$onNavigationEvent$4;Lo/getMinNode;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
