.class Lo/removeForwardSlashesIn$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/storeDataCollectionValueInSharedPreferences;
.implements Lo/removeForwardSlashesIn$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeForwardSlashesIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final tag:Lo/InstallerPackageNameProvider;

.field final synthetic this$0:Lo/removeForwardSlashesIn;

.field private final view:Lo/callTask;


# direct methods
.method public constructor <init>(Lo/removeForwardSlashesIn;Lo/callTask;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lo/removeForwardSlashesIn$extraCallback;->this$0:Lo/removeForwardSlashesIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    .line 103
    invoke-virtual {p2}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p2

    invoke-static {p1, p2}, Lo/removeForwardSlashesIn;->access$000(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object p1

    iput-object p1, p0, Lo/removeForwardSlashesIn$extraCallback;->tag:Lo/InstallerPackageNameProvider;

    return-void
.end method

.method static synthetic access$1400(Lo/removeForwardSlashesIn$extraCallback;)Lo/InstallerPackageNameProvider;
    .locals 0

    .line 97
    iget-object p0, p0, Lo/removeForwardSlashesIn$extraCallback;->tag:Lo/InstallerPackageNameProvider;

    return-object p0
.end method


# virtual methods
.method public getCompoundHash()Lo/waitForDataCollectionPermission;
    .locals 4

    .line 108
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {v0}, Lo/callTask;->getServerCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {v0}, Lo/clearLog;->fromNode(Lo/LogFileManager$DirectoryProvider;)Lo/clearLog;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lo/clearLog;->getPosts()Ljava/util/List;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    .line 112
    invoke-virtual {v3}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lo/waitForDataCollectionPermission;

    invoke-virtual {v0}, Lo/clearLog;->getHashes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lo/waitForDataCollectionPermission;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getSimpleHash()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {v0}, Lo/callTask;->getServerCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onListenComplete(Lo/getMarkerFile;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMarkerFile;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {p1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->tag:Lo/InstallerPackageNameProvider;

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lo/removeForwardSlashesIn$extraCallback;->this$0:Lo/removeForwardSlashesIn;

    invoke-virtual {p1, v0}, Lo/removeForwardSlashesIn;->applyTaggedListenComplete(Lo/InstallerPackageNameProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->this$0:Lo/removeForwardSlashesIn;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/removeForwardSlashesIn;->applyListenComplete(Lo/ExecutorUtils$2;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$100(Lo/removeForwardSlashesIn;)Lo/FileLogStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listen at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {v2}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->this$0:Lo/removeForwardSlashesIn;

    iget-object v1, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {v1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/removeForwardSlashesIn;->removeAllEventRegistrations(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getMarkerFile;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public shouldIncludeCompoundHash()Z
    .locals 5

    .line 124
    iget-object v0, p0, Lo/removeForwardSlashesIn$extraCallback;->view:Lo/callTask;

    invoke-virtual {v0}, Lo/callTask;->getServerCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {v0}, Lo/initializeAllApis;->estimateSerializedNodeSize(Lo/LogFileManager$DirectoryProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
