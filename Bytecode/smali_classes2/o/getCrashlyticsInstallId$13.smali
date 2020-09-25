.class final Lo/getCrashlyticsInstallId$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->rerunTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$callbackError:Lo/getMarkerFile;

.field final synthetic val$snapshot:Lo/CrashlyticsLifecycleEvents;

.field final synthetic val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;Lo/CrashlyticsLifecycleEvents;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lo/getCrashlyticsInstallId$13;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$13;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$13;->val$callbackError:Lo/getMarkerFile;

    iput-object p4, p0, Lo/getCrashlyticsInstallId$13;->val$snapshot:Lo/CrashlyticsLifecycleEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1220
    iget-object v0, p0, Lo/getCrashlyticsInstallId$13;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    invoke-static {v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2300(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateExecutionData$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getCrashlyticsInstallId$13;->val$callbackError:Lo/getMarkerFile;

    iget-object v2, p0, Lo/getCrashlyticsInstallId$13;->val$snapshot:Lo/CrashlyticsLifecycleEvents;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/populateExecutionData$onMessageChannelReady;->onComplete(Lo/getMarkerFile;ZLo/CrashlyticsLifecycleEvents;)V

    return-void
.end method
