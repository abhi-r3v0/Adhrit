.class final Lo/getCrashlyticsInstallId$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->startTransaction(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$handler:Lo/populateExecutionData$onMessageChannelReady;

.field final synthetic val$innerClassError:Lo/getMarkerFile;

.field final synthetic val$snap:Lo/CrashlyticsLifecycleEvents;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/populateExecutionData$onMessageChannelReady;Lo/getMarkerFile;Lo/CrashlyticsLifecycleEvents;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lo/getCrashlyticsInstallId$9;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$9;->val$handler:Lo/populateExecutionData$onMessageChannelReady;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$9;->val$innerClassError:Lo/getMarkerFile;

    iput-object p4, p0, Lo/getCrashlyticsInstallId$9;->val$snap:Lo/CrashlyticsLifecycleEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 858
    iget-object v0, p0, Lo/getCrashlyticsInstallId$9;->val$handler:Lo/populateExecutionData$onMessageChannelReady;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$9;->val$innerClassError:Lo/getMarkerFile;

    iget-object v2, p0, Lo/getCrashlyticsInstallId$9;->val$snap:Lo/CrashlyticsLifecycleEvents;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/populateExecutionData$onMessageChannelReady;->onComplete(Lo/getMarkerFile;ZLo/CrashlyticsLifecycleEvents;)V

    return-void
.end method
