.class final Lo/getCrashlyticsInstallId$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->onDisconnectUpdate(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/isPresent$onPostMessage;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$listener:Lo/isPresent$onPostMessage;

.field final synthetic val$newChildren:Ljava/util/Map;

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Ljava/util/Map;Lo/isPresent$onPostMessage;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lo/getCrashlyticsInstallId$1;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$1;->val$path:Lo/ExecutorUtils$2;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$1;->val$newChildren:Ljava/util/Map;

    iput-object p4, p0, Lo/getCrashlyticsInstallId$1;->val$listener:Lo/isPresent$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 570
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    .line 571
    iget-object p2, p0, Lo/getCrashlyticsInstallId$1;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$1;->val$path:Lo/ExecutorUtils$2;

    const-string v1, "onDisconnect().updateChildren"

    invoke-static {p2, v1, v0, p1}, Lo/getCrashlyticsInstallId;->access$700(Lo/getCrashlyticsInstallId;Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V

    if-nez p1, :cond_0

    .line 573
    iget-object p2, p0, Lo/getCrashlyticsInstallId$1;->val$newChildren:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 574
    iget-object v1, p0, Lo/getCrashlyticsInstallId$1;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v1}, Lo/getCrashlyticsInstallId;->access$900(Lo/getCrashlyticsInstallId;)Lo/getInstallerPackageName;

    move-result-object v1

    iget-object v2, p0, Lo/getCrashlyticsInstallId$1;->val$path:Lo/ExecutorUtils$2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    invoke-virtual {v2, v3}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v1, v2, v0}, Lo/getInstallerPackageName;->remember(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p2, p0, Lo/getCrashlyticsInstallId$1;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$1;->val$listener:Lo/isPresent$onPostMessage;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$1;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {p2, v0, p1, v1}, Lo/getCrashlyticsInstallId;->callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V

    return-void
.end method
