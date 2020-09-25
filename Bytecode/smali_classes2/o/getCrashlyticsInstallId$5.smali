.class final Lo/getCrashlyticsInstallId$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getInstallerPackageName$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->runOnDisconnectEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lo/getCrashlyticsInstallId$5;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$5;->val$serverValues:Ljava/util/Map;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$5;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitTree(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 2

    .line 683
    iget-object v0, p0, Lo/getCrashlyticsInstallId$5;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$1000(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lo/removeForwardSlashesIn;->calcCompleteEventCache(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lo/getCrashlyticsInstallId$5;->val$serverValues:Ljava/util/Map;

    .line 685
    invoke-static {p2, v0, v1}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 686
    iget-object v0, p0, Lo/getCrashlyticsInstallId$5;->val$events:Ljava/util/List;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$5;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v1}, Lo/getCrashlyticsInstallId;->access$1000(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    iget-object p2, p0, Lo/getCrashlyticsInstallId$5;->this$0:Lo/getCrashlyticsInstallId;

    const/16 v0, -0x9

    invoke-static {p2, p1, v0}, Lo/getCrashlyticsInstallId;->access$1100(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 688
    iget-object p2, p0, Lo/getCrashlyticsInstallId$5;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {p2, p1}, Lo/getCrashlyticsInstallId;->access$1200(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    return-void
.end method
