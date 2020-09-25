.class final Lo/getCompoundHash$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "asBinder"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 977
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->cancel(Lo/getCompoundHash;)Lo/unionWith$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->cancel(Lo/getCompoundHash;)Lo/unionWith$extraCallback;

    move-result-object v0

    .line 1215
    iget-object v1, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iget-boolean v1, v1, Lo/unionWith$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iget-boolean v0, v0, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->setDefaultImpl(Lo/getCompoundHash;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->INotificationSideChannel$Stub(Lo/getCompoundHash;)V

    goto :goto_1

    .line 1511
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name resolver must be started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onNavigationEvent(Lo/getCompoundHash;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/shouldIncludeCompoundHash;

    .line 2302
    iget-object v2, v1, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$5;

    invoke-direct {v3, v1}, Lo/shouldIncludeCompoundHash$5;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 987
    :cond_4
    iget-object v0, p0, Lo/getCompoundHash$asBinder;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->extraCallback(Lo/getCompoundHash;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3302
    iget-object v2, v1, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$5;

    invoke-direct {v3, v1}, Lo/shouldIncludeCompoundHash$5;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    return-void
.end method
