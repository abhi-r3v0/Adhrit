.class final Lo/cancelSentTransactions$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/cancelSentTransactions;

.field private synthetic extraCallback:Ljava/util/concurrent/Future;

.field private synthetic onMessageChannelReady:Ljava/util/Collection;

.field private synthetic onNavigationEvent:Ljava/util/concurrent/Future;

.field private synthetic onPostMessage:Lo/cancelSentTransactions$validateRelationship;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lo/cancelSentTransactions$onNavigationEvent;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iput-object p2, p0, Lo/cancelSentTransactions$onNavigationEvent;->onMessageChannelReady:Ljava/util/Collection;

    iput-object p3, p0, Lo/cancelSentTransactions$onNavigationEvent;->onPostMessage:Lo/cancelSentTransactions$validateRelationship;

    iput-object p4, p0, Lo/cancelSentTransactions$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lo/cancelSentTransactions$onNavigationEvent;->onNavigationEvent:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lo/cancelSentTransactions$onNavigationEvent;->onMessageChannelReady:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cancelSentTransactions$validateRelationship;

    .line 165
    iget-object v2, p0, Lo/cancelSentTransactions$onNavigationEvent;->onPostMessage:Lo/cancelSentTransactions$validateRelationship;

    if-eq v1, v2, :cond_0

    .line 166
    iget-object v1, v1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-static {}, Lo/cancelSentTransactions;->ICustomTabsCallback()Lo/emptyMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lo/cancelSentTransactions$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 170
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 172
    :cond_2
    iget-object v0, p0, Lo/cancelSentTransactions$onNavigationEvent;->onNavigationEvent:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 176
    :cond_3
    iget-object v0, p0, Lo/cancelSentTransactions$onNavigationEvent;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-virtual {v0}, Lo/cancelSentTransactions;->onNavigationEvent()V

    return-void
.end method
