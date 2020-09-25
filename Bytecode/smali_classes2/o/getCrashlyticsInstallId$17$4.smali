.class final Lo/getCrashlyticsInstallId$17$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId$17;->startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/getCrashlyticsInstallId$17;

.field final synthetic val$onComplete:Lo/removeForwardSlashesIn$onNavigationEvent;

.field final synthetic val$query:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId$17;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/removeForwardSlashesIn$onNavigationEvent;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/getCrashlyticsInstallId$17$4;->this$1:Lo/getCrashlyticsInstallId$17;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$17$4;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$17$4;->val$onComplete:Lo/removeForwardSlashesIn$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lo/getCrashlyticsInstallId$17$4;->this$1:Lo/getCrashlyticsInstallId$17;

    iget-object v0, v0, Lo/getCrashlyticsInstallId$17;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$300(Lo/getCrashlyticsInstallId;)Lo/getAppIdentifier;

    move-result-object v0

    iget-object v1, p0, Lo/getCrashlyticsInstallId$17$4;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getAppIdentifier;->getNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lo/getCrashlyticsInstallId$17$4;->this$1:Lo/getCrashlyticsInstallId$17;

    iget-object v1, v1, Lo/getCrashlyticsInstallId$17;->this$0:Lo/getCrashlyticsInstallId;

    .line 159
    invoke-static {v1}, Lo/getCrashlyticsInstallId;->access$400(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;

    move-result-object v1

    iget-object v2, p0, Lo/getCrashlyticsInstallId$17$4;->val$query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lo/getCrashlyticsInstallId$17$4;->this$1:Lo/getCrashlyticsInstallId$17;

    iget-object v1, v1, Lo/getCrashlyticsInstallId$17;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v1, v0}, Lo/getCrashlyticsInstallId;->access$500(Lo/getCrashlyticsInstallId;Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lo/getCrashlyticsInstallId$17$4;->val$onComplete:Lo/removeForwardSlashesIn$onNavigationEvent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/removeForwardSlashesIn$onNavigationEvent;->onListenComplete(Lo/getMarkerFile;)Ljava/util/List;

    :cond_0
    return-void
.end method
