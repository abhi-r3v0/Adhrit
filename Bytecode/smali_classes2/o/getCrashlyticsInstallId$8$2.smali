.class final Lo/getCrashlyticsInstallId$8$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId$8;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/getCrashlyticsInstallId$8;

.field final synthetic val$snap:Lo/CrashlyticsLifecycleEvents;

.field final synthetic val$txn:Lo/getCrashlyticsInstallId$onPostMessage;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId$8;Lo/getCrashlyticsInstallId$onPostMessage;Lo/CrashlyticsLifecycleEvents;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lo/getCrashlyticsInstallId$8$2;->this$1:Lo/getCrashlyticsInstallId$8;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$8$2;->val$txn:Lo/getCrashlyticsInstallId$onPostMessage;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$8$2;->val$snap:Lo/CrashlyticsLifecycleEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1007
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8$2;->val$txn:Lo/getCrashlyticsInstallId$onPostMessage;

    invoke-static {v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2300(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateExecutionData$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getCrashlyticsInstallId$8$2;->val$snap:Lo/CrashlyticsLifecycleEvents;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lo/populateExecutionData$onMessageChannelReady;->onComplete(Lo/getMarkerFile;ZLo/CrashlyticsLifecycleEvents;)V

    return-void
.end method
