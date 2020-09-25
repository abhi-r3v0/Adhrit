.class public Lo/lambda$getSortedCustomAttributes$0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final filtered:Z

.field private final fullyInitialized:Z

.field private final indexedNode:Lo/discardOldLogFiles;


# direct methods
.method public constructor <init>(Lo/discardOldLogFiles;ZZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/lambda$getSortedCustomAttributes$0;->indexedNode:Lo/discardOldLogFiles;

    .line 36
    iput-boolean p2, p0, Lo/lambda$getSortedCustomAttributes$0;->fullyInitialized:Z

    .line 37
    iput-boolean p3, p0, Lo/lambda$getSortedCustomAttributes$0;->filtered:Z

    return-void
.end method


# virtual methods
.method public getIndexedNode()Lo/discardOldLogFiles;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/lambda$getSortedCustomAttributes$0;->indexedNode:Lo/discardOldLogFiles;

    return-object v0
.end method

.method public getNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/lambda$getSortedCustomAttributes$0;->indexedNode:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public isCompleteForChild(Lo/LogFileManager;)Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/lambda$getSortedCustomAttributes$0;->filtered:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/lambda$getSortedCustomAttributes$0;->indexedNode:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isCompleteForPath(Lo/ExecutorUtils$2;)Z
    .locals 1

    .line 56
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lo/lambda$getSortedCustomAttributes$0;->filtered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 59
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result p1

    return p1
.end method

.method public isFiltered()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lo/lambda$getSortedCustomAttributes$0;->filtered:Z

    return v0
.end method

.method public isFullyInitialized()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/lambda$getSortedCustomAttributes$0;->fullyInitialized:Z

    return v0
.end method
