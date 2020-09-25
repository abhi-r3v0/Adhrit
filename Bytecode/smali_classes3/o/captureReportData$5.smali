.class final Lo/captureReportData$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/captureReportData;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/captureReportData;

.field final synthetic val$parsedUpdate:Ljava/util/Map;

.field final synthetic val$update:Ljava/util/Map;

.field final synthetic val$wrapped:Lo/getSortedCustomAttributes;


# direct methods
.method constructor <init>(Lo/captureReportData;Ljava/util/Map;Lo/getSortedCustomAttributes;Ljava/util/Map;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lo/captureReportData$5;->this$0:Lo/captureReportData;

    iput-object p2, p0, Lo/captureReportData$5;->val$parsedUpdate:Ljava/util/Map;

    iput-object p3, p0, Lo/captureReportData$5;->val$wrapped:Lo/getSortedCustomAttributes;

    iput-object p4, p0, Lo/captureReportData$5;->val$update:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 213
    iget-object v0, p0, Lo/captureReportData$5;->this$0:Lo/captureReportData;

    invoke-static {v0}, Lo/captureReportData;->access$100(Lo/captureReportData;)Lo/getCrashlyticsInstallId;

    move-result-object v0

    iget-object v1, p0, Lo/captureReportData$5;->this$0:Lo/captureReportData;

    invoke-static {v1}, Lo/captureReportData;->access$000(Lo/captureReportData;)Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/captureReportData$5;->val$parsedUpdate:Ljava/util/Map;

    iget-object v3, p0, Lo/captureReportData$5;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-virtual {v3}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isPresent$onPostMessage;

    iget-object v4, p0, Lo/captureReportData$5;->val$update:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/getCrashlyticsInstallId;->onDisconnectUpdate(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/isPresent$onPostMessage;Ljava/util/Map;)V

    return-void
.end method
