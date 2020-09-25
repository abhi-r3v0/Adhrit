.class final Lo/removeForwardSlashesIn$8;
.super Lo/getCurrentTimeMillis$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyOperationDescendantsHelper(Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
        "Lo/LogFileManager;",
        "Lo/persistFatalEvent<",
        "Lo/getModelName;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/removeForwardSlashesIn;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$operation:Lo/getKeysFileForSession;

.field final synthetic val$resolvedServerCache:Lo/LogFileManager$DirectoryProvider;

.field final synthetic val$writesCache:Lo/MetaDataStore;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/getKeysFileForSession;Ljava/util/List;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lo/removeForwardSlashesIn$8;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$8;->val$resolvedServerCache:Lo/LogFileManager$DirectoryProvider;

    iput-object p3, p0, Lo/removeForwardSlashesIn$8;->val$writesCache:Lo/MetaDataStore;

    iput-object p4, p0, Lo/removeForwardSlashesIn$8;->val$operation:Lo/getKeysFileForSession;

    iput-object p5, p0, Lo/removeForwardSlashesIn$8;->val$events:Ljava/util/List;

    invoke-direct {p0}, Lo/getCurrentTimeMillis$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 952
    check-cast p1, Lo/LogFileManager;

    check-cast p2, Lo/persistFatalEvent;

    invoke-virtual {p0, p1, p2}, Lo/removeForwardSlashesIn$8;->visitEntry(Lo/LogFileManager;Lo/persistFatalEvent;)V

    return-void
.end method

.method public final visitEntry(Lo/LogFileManager;Lo/persistFatalEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager;",
            "Lo/persistFatalEvent<",
            "Lo/getModelName;",
            ">;)V"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lo/removeForwardSlashesIn$8;->val$resolvedServerCache:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    .line 957
    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 959
    :goto_0
    iget-object v1, p0, Lo/removeForwardSlashesIn$8;->val$writesCache:Lo/MetaDataStore;

    invoke-virtual {v1, p1}, Lo/MetaDataStore;->child(Lo/LogFileManager;)Lo/MetaDataStore;

    move-result-object v1

    .line 960
    iget-object v2, p0, Lo/removeForwardSlashesIn$8;->val$operation:Lo/getKeysFileForSession;

    invoke-virtual {v2, p1}, Lo/getKeysFileForSession;->operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 962
    iget-object v2, p0, Lo/removeForwardSlashesIn$8;->val$events:Ljava/util/List;

    iget-object v3, p0, Lo/removeForwardSlashesIn$8;->this$0:Lo/removeForwardSlashesIn;

    .line 963
    invoke-static {v3, p1, p2, v0, v1}, Lo/removeForwardSlashesIn;->access$1700(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;)Ljava/util/List;

    move-result-object p1

    .line 962
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
