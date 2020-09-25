.class final Lo/removeForwardSlashesIn$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lo/Utils;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/removeForwardSlashesIn;

.field final synthetic val$cancelError:Lo/getMarkerFile;

.field final synthetic val$eventRegistration:Lo/addDelayedShutdownHook;

.field final synthetic val$query:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    iput-object p3, p0, Lo/removeForwardSlashesIn$2;->val$eventRegistration:Lo/addDelayedShutdownHook;

    iput-object p4, p0, Lo/removeForwardSlashesIn$2;->val$cancelError:Lo/getMarkerFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getModelName;

    .line 593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_e

    .line 598
    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 599
    invoke-virtual {v3}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1, v3}, Lo/getModelName;->viewExistsForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 602
    :cond_0
    iget-object v2, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->val$eventRegistration:Lo/addDelayedShutdownHook;

    iget-object v4, p0, Lo/removeForwardSlashesIn$2;->val$cancelError:Lo/getMarkerFile;

    .line 603
    invoke-virtual {v1, v2, v3, v4}, Lo/getModelName;->removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Lo/getSortedCustomAttributes;

    move-result-object v2

    .line 604
    invoke-virtual {v1}, Lo/getModelName;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/persistFatalEvent;->remove(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object v3

    invoke-static {v1, v3}, Lo/removeForwardSlashesIn;->access$702(Lo/removeForwardSlashesIn;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    .line 607
    :cond_1
    invoke-virtual {v2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 608
    invoke-virtual {v2}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 616
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 617
    iget-object v8, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v8}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v8

    iget-object v9, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-interface {v8, v9}, Lo/NativeSessionFileGzipper;->setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    if-nez v5, :cond_3

    .line 618
    invoke-virtual {v6}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 620
    :cond_4
    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v3

    .line 622
    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getModelName;

    invoke-virtual {v6}, Lo/getModelName;->hasCompleteView()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 623
    :goto_1
    invoke-virtual {v0}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/LogFileManager;

    .line 624
    invoke-virtual {v3, v9}, Lo/persistFatalEvent;->getChild(Lo/LogFileManager;)Lo/persistFatalEvent;

    move-result-object v3

    if-nez v6, :cond_8

    .line 627
    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 628
    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getModelName;

    invoke-virtual {v6}, Lo/getModelName;->hasCompleteView()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_9

    .line 629
    invoke-virtual {v3}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_9
    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    .line 635
    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 640
    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3, v0}, Lo/removeForwardSlashesIn;->access$1200(Lo/removeForwardSlashesIn;Lo/persistFatalEvent;)Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/callTask;

    .line 644
    new-instance v8, Lo/removeForwardSlashesIn$extraCallback;

    iget-object v9, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-direct {v8, v9, v3}, Lo/removeForwardSlashesIn$extraCallback;-><init>(Lo/removeForwardSlashesIn;Lo/callTask;)V

    .line 645
    invoke-virtual {v3}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    .line 646
    iget-object v9, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v9}, Lo/removeForwardSlashesIn;->access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;

    move-result-object v9

    iget-object v10, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    .line 647
    invoke-static {v10, v3}, Lo/removeForwardSlashesIn;->access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    invoke-static {v8}, Lo/removeForwardSlashesIn$extraCallback;->access$1400(Lo/removeForwardSlashesIn$extraCallback;)Lo/InstallerPackageNameProvider;

    move-result-object v10

    .line 646
    invoke-interface {v9, v3, v10, v8, v8}, Lo/removeForwardSlashesIn$onPostMessage;->startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V

    goto :goto_4

    :cond_a
    if-nez v6, :cond_d

    .line 658
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lo/removeForwardSlashesIn$2;->val$cancelError:Lo/getMarkerFile;

    if-nez v0, :cond_d

    if-eqz v5, :cond_b

    .line 663
    iget-object v0, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;

    move-result-object v0

    iget-object v3, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    iget-object v4, p0, Lo/removeForwardSlashesIn$2;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-static {v3, v4}, Lo/removeForwardSlashesIn;->access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lo/removeForwardSlashesIn$onPostMessage;->stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V

    goto :goto_7

    .line 665
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 666
    iget-object v5, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v5, v3}, Lo/removeForwardSlashesIn;->access$000(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 667
    :goto_6
    invoke-static {v6}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 668
    iget-object v6, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v6}, Lo/removeForwardSlashesIn;->access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;

    move-result-object v6

    iget-object v8, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v8, v3}, Lo/removeForwardSlashesIn;->access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Lo/removeForwardSlashesIn$onPostMessage;->stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V

    goto :goto_5

    .line 673
    :cond_d
    :goto_7
    iget-object v0, p0, Lo/removeForwardSlashesIn$2;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$1600(Lo/removeForwardSlashesIn;Ljava/util/List;)V

    :cond_e
    return-object v2
.end method
