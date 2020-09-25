.class final Lo/populateThreadsList$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateThreadsList;->pruneTreeRecursive(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/persistFatalEvent;Lo/ResponseParser;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/populateThreadsList;

.field final synthetic val$currentNode:Lo/LogFileManager$DirectoryProvider;

.field final synthetic val$relativePath:Lo/ExecutorUtils$2;

.field final synthetic val$rowIdsToKeep:Lo/persistFatalEvent;

.field final synthetic val$rowsToResaveAccumulator:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/populateThreadsList;Lo/persistFatalEvent;Ljava/util/List;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lo/populateThreadsList$4;->this$0:Lo/populateThreadsList;

    iput-object p2, p0, Lo/populateThreadsList$4;->val$rowIdsToKeep:Lo/persistFatalEvent;

    iput-object p3, p0, Lo/populateThreadsList$4;->val$rowsToResaveAccumulator:Ljava/util/List;

    iput-object p4, p0, Lo/populateThreadsList$4;->val$relativePath:Lo/ExecutorUtils$2;

    iput-object p5, p0, Lo/populateThreadsList$4;->val$currentNode:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 717
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lo/populateThreadsList$4;->onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 721
    iget-object p2, p0, Lo/populateThreadsList$4;->val$rowIdsToKeep:Lo/persistFatalEvent;

    invoke-virtual {p2, p1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 722
    iget-object p2, p0, Lo/populateThreadsList$4;->val$rowsToResaveAccumulator:Ljava/util/List;

    new-instance p3, Lo/getSortedCustomAttributes;

    iget-object v0, p0, Lo/populateThreadsList$4;->val$relativePath:Lo/ExecutorUtils$2;

    .line 724
    invoke-virtual {v0, p1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/populateThreadsList$4;->val$currentNode:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lo/getSortedCustomAttributes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 722
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
