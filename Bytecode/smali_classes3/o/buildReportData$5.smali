.class final Lo/buildReportData$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildReportData;->addEventRegistration(Lo/addDelayedShutdownHook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/buildReportData;

.field final synthetic val$listener:Lo/addDelayedShutdownHook;


# direct methods
.method constructor <init>(Lo/buildReportData;Lo/addDelayedShutdownHook;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lo/buildReportData$5;->this$0:Lo/buildReportData;

    iput-object p2, p0, Lo/buildReportData$5;->val$listener:Lo/addDelayedShutdownHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lo/buildReportData$5;->this$0:Lo/buildReportData;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/buildReportData$5;->val$listener:Lo/addDelayedShutdownHook;

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->addEventCallback(Lo/addDelayedShutdownHook;)V

    return-void
.end method
