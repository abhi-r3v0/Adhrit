.class public Lo/MetaDataStore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final treePath:Lo/ExecutorUtils$2;

.field private final writeTree:Lo/writeUserData;


# direct methods
.method public constructor <init>(Lo/ExecutorUtils$2;Lo/writeUserData;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    .line 48
    iput-object p2, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    return-void
.end method


# virtual methods
.method public calcCompleteChild(Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 123
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, p1, p2}, Lo/writeUserData;->calcCompleteChild(Lo/ExecutorUtils$2;Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, p2, v0}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/writeUserData;->calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventChildren(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 75
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, p1}, Lo/writeUserData;->calcCompleteEventChildren(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcEventCacheAfterServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 95
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/writeUserData;->calcEventCacheAfterServerOverwrite(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcNextNodeAfterPost(Lo/LogFileManager$DirectoryProvider;Lo/QueueFile;ZLo/setLogFile;)Lo/QueueFile;
    .locals 6

    .line 114
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/writeUserData;->calcNextNodeAfterPost(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/QueueFile;ZLo/setLogFile;)Lo/QueueFile;

    move-result-object p1

    return-object p1
.end method

.method public child(Lo/LogFileManager;)Lo/MetaDataStore;
    .locals 2

    .line 128
    new-instance v0, Lo/MetaDataStore;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v1, p1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    iget-object v1, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    invoke-direct {v0, p1, v1}, Lo/MetaDataStore;-><init>(Lo/ExecutorUtils$2;Lo/writeUserData;)V

    return-object v0
.end method

.method public shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 105
    iget-object v0, p0, Lo/MetaDataStore;->writeTree:Lo/writeUserData;

    iget-object v1, p0, Lo/MetaDataStore;->treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v1, p1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeUserData;->shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method
