.class public Lo/race;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final eventSnap:Lo/lambda$getSortedCustomAttributes$0;

.field private final serverSnap:Lo/lambda$getSortedCustomAttributes$0;


# direct methods
.method public constructor <init>(Lo/lambda$getSortedCustomAttributes$0;Lo/lambda$getSortedCustomAttributes$0;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/race;->eventSnap:Lo/lambda$getSortedCustomAttributes$0;

    .line 27
    iput-object p2, p0, Lo/race;->serverSnap:Lo/lambda$getSortedCustomAttributes$0;

    return-void
.end method


# virtual methods
.method public getCompleteEventSnap()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/race;->eventSnap:Lo/lambda$getSortedCustomAttributes$0;

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/race;->eventSnap:Lo/lambda$getSortedCustomAttributes$0;

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/race;->serverSnap:Lo/lambda$getSortedCustomAttributes$0;

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/race;->serverSnap:Lo/lambda$getSortedCustomAttributes$0;

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventCache()Lo/lambda$getSortedCustomAttributes$0;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/race;->eventSnap:Lo/lambda$getSortedCustomAttributes$0;

    return-object v0
.end method

.method public getServerCache()Lo/lambda$getSortedCustomAttributes$0;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/race;->serverSnap:Lo/lambda$getSortedCustomAttributes$0;

    return-object v0
.end method

.method public updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;
    .locals 2

    .line 31
    new-instance v0, Lo/race;

    new-instance v1, Lo/lambda$getSortedCustomAttributes$0;

    invoke-direct {v1, p1, p2, p3}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    iget-object p1, p0, Lo/race;->serverSnap:Lo/lambda$getSortedCustomAttributes$0;

    invoke-direct {v0, v1, p1}, Lo/race;-><init>(Lo/lambda$getSortedCustomAttributes$0;Lo/lambda$getSortedCustomAttributes$0;)V

    return-object v0
.end method

.method public updateServerSnap(Lo/discardOldLogFiles;ZZ)Lo/race;
    .locals 3

    .line 35
    new-instance v0, Lo/race;

    iget-object v1, p0, Lo/race;->eventSnap:Lo/lambda$getSortedCustomAttributes$0;

    new-instance v2, Lo/lambda$getSortedCustomAttributes$0;

    invoke-direct {v2, p1, p2, p3}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    invoke-direct {v0, v1, v2}, Lo/race;-><init>(Lo/lambda$getSortedCustomAttributes$0;Lo/lambda$getSortedCustomAttributes$0;)V

    return-object v0
.end method
