.class final Lo/isPresent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isPresent;->runTransaction(Lo/populateExecutionData$onMessageChannelReady;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/isPresent;

.field final synthetic val$fireLocalEvents:Z

.field final synthetic val$handler:Lo/populateExecutionData$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/isPresent;Lo/populateExecutionData$onMessageChannelReady;Z)V
    .locals 0

    .line 489
    iput-object p1, p0, Lo/isPresent$1;->this$0:Lo/isPresent;

    iput-object p2, p0, Lo/isPresent$1;->val$handler:Lo/populateExecutionData$onMessageChannelReady;

    iput-boolean p3, p0, Lo/isPresent$1;->val$fireLocalEvents:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 492
    iget-object v0, p0, Lo/isPresent$1;->this$0:Lo/isPresent;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/isPresent$1;->this$0:Lo/isPresent;

    invoke-virtual {v1}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/isPresent$1;->val$handler:Lo/populateExecutionData$onMessageChannelReady;

    iget-boolean v3, p0, Lo/isPresent$1;->val$fireLocalEvents:Z

    invoke-virtual {v0, v1, v2, v3}, Lo/getCrashlyticsInstallId;->startTransaction(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Z)V

    return-void
.end method
