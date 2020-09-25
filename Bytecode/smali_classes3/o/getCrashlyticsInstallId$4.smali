.class final Lo/getCrashlyticsInstallId$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->onDisconnectCancel(Lo/ExecutorUtils$2;Lo/isPresent$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$onComplete:Lo/isPresent$onPostMessage;

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/isPresent$onPostMessage;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lo/getCrashlyticsInstallId$4;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$4;->val$path:Lo/ExecutorUtils$2;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$4;->val$onComplete:Lo/isPresent$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 589
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 591
    iget-object p2, p0, Lo/getCrashlyticsInstallId$4;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {p2}, Lo/getCrashlyticsInstallId;->access$900(Lo/getCrashlyticsInstallId;)Lo/getInstallerPackageName;

    move-result-object p2

    iget-object v0, p0, Lo/getCrashlyticsInstallId$4;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {p2, v0}, Lo/getInstallerPackageName;->forget(Lo/ExecutorUtils$2;)Z

    .line 593
    :cond_0
    iget-object p2, p0, Lo/getCrashlyticsInstallId$4;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$4;->val$onComplete:Lo/isPresent$onPostMessage;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$4;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {p2, v0, p1, v1}, Lo/getCrashlyticsInstallId;->callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V

    return-void
.end method
