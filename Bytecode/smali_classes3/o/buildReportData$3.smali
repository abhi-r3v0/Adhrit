.class final Lo/buildReportData$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildReportData;->keepSynced(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/buildReportData;

.field final synthetic val$keepSynced:Z


# direct methods
.method constructor <init>(Lo/buildReportData;Z)V
    .locals 0

    .line 252
    iput-object p1, p0, Lo/buildReportData$3;->this$0:Lo/buildReportData;

    iput-boolean p2, p0, Lo/buildReportData$3;->val$keepSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lo/buildReportData$3;->this$0:Lo/buildReportData;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/buildReportData$3;->this$0:Lo/buildReportData;

    invoke-virtual {v1}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    iget-boolean v2, p0, Lo/buildReportData$3;->val$keepSynced:Z

    invoke-virtual {v0, v1, v2}, Lo/getCrashlyticsInstallId;->keepSynced(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V

    return-void
.end method
