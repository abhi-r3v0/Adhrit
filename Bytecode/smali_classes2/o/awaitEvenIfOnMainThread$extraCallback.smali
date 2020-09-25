.class final Lo/awaitEvenIfOnMainThread$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils$3$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/awaitEvenIfOnMainThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final optCompleteServerCache:Lo/LogFileManager$DirectoryProvider;

.field private final viewCache:Lo/race;

.field private final writes:Lo/MetaDataStore;


# direct methods
.method public constructor <init>(Lo/MetaDataStore;Lo/race;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->writes:Lo/MetaDataStore;

    .line 699
    iput-object p2, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->viewCache:Lo/race;

    .line 700
    iput-object p3, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->optCompleteServerCache:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method


# virtual methods
.method public final getChildAfterChild(Lo/setLogFile;Lo/QueueFile;Z)Lo/QueueFile;
    .locals 2

    .line 727
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->optCompleteServerCache:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 730
    :goto_0
    iget-object v1, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->writes:Lo/MetaDataStore;

    invoke-virtual {v1, v0, p2, p3, p1}, Lo/MetaDataStore;->calcNextNodeAfterPost(Lo/LogFileManager$DirectoryProvider;Lo/QueueFile;ZLo/setLogFile;)Lo/QueueFile;

    move-result-object p1

    return-object p1
.end method

.method public final getCompleteChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
    .locals 4

    .line 705
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p1}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 710
    :cond_0
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->optCompleteServerCache:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_1

    .line 712
    new-instance v1, Lo/lambda$getSortedCustomAttributes$0;

    .line 714
    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object v2

    invoke-static {v0, v2}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v1

    .line 720
    :goto_0
    iget-object v0, p0, Lo/awaitEvenIfOnMainThread$extraCallback;->writes:Lo/MetaDataStore;

    invoke-virtual {v0, p1, v1}, Lo/MetaDataStore;->calcCompleteChild(Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method
