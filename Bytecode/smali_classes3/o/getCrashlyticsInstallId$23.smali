.class final Lo/getCrashlyticsInstallId$23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->updateChildren(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/isPresent$onPostMessage;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$onComplete:Lo/isPresent$onPostMessage;

.field final synthetic val$path:Lo/ExecutorUtils$2;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;JLo/isPresent$onPostMessage;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lo/getCrashlyticsInstallId$23;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$23;->val$path:Lo/ExecutorUtils$2;

    iput-wide p3, p0, Lo/getCrashlyticsInstallId$23;->val$writeId:J

    iput-object p5, p0, Lo/getCrashlyticsInstallId$23;->val$onComplete:Lo/isPresent$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 503
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lo/getCrashlyticsInstallId$23;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$23;->val$path:Lo/ExecutorUtils$2;

    const-string v1, "updateChildren"

    invoke-static {p2, v1, v0, p1}, Lo/getCrashlyticsInstallId;->access$700(Lo/getCrashlyticsInstallId;Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V

    .line 505
    iget-object p2, p0, Lo/getCrashlyticsInstallId$23;->this$0:Lo/getCrashlyticsInstallId;

    iget-wide v0, p0, Lo/getCrashlyticsInstallId$23;->val$writeId:J

    iget-object v2, p0, Lo/getCrashlyticsInstallId$23;->val$path:Lo/ExecutorUtils$2;

    invoke-static {p2, v0, v1, v2, p1}, Lo/getCrashlyticsInstallId;->access$800(Lo/getCrashlyticsInstallId;JLo/ExecutorUtils$2;Lo/getMarkerFile;)V

    .line 506
    iget-object p2, p0, Lo/getCrashlyticsInstallId$23;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$23;->val$onComplete:Lo/isPresent$onPostMessage;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$23;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {p2, v0, p1, v1}, Lo/getCrashlyticsInstallId;->callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V

    return-void
.end method
