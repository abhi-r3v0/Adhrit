.class final Lo/captureReportData$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/captureReportData;->cancelInternal(Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/captureReportData;

.field final synthetic val$wrapped:Lo/getSortedCustomAttributes;


# direct methods
.method constructor <init>(Lo/captureReportData;Lo/getSortedCustomAttributes;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lo/captureReportData$2;->this$0:Lo/captureReportData;

    iput-object p2, p0, Lo/captureReportData$2;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lo/captureReportData$2;->this$0:Lo/captureReportData;

    invoke-static {v0}, Lo/captureReportData;->access$100(Lo/captureReportData;)Lo/getCrashlyticsInstallId;

    move-result-object v0

    iget-object v1, p0, Lo/captureReportData$2;->this$0:Lo/captureReportData;

    invoke-static {v1}, Lo/captureReportData;->access$000(Lo/captureReportData;)Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/captureReportData$2;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-virtual {v2}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isPresent$onPostMessage;

    invoke-virtual {v0, v1, v2}, Lo/getCrashlyticsInstallId;->onDisconnectCancel(Lo/ExecutorUtils$2;Lo/isPresent$onPostMessage;)V

    return-void
.end method
