.class final Lo/getCrashlyticsInstallId$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->abortTransactionsAtNode(Lo/persistEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$abortError:Lo/getMarkerFile;

.field final synthetic val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lo/getCrashlyticsInstallId$19;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$19;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$19;->val$abortError:Lo/getMarkerFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1354
    iget-object v0, p0, Lo/getCrashlyticsInstallId$19;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    invoke-static {v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2300(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateExecutionData$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getCrashlyticsInstallId$19;->val$abortError:Lo/getMarkerFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/populateExecutionData$onMessageChannelReady;->onComplete(Lo/getMarkerFile;ZLo/CrashlyticsLifecycleEvents;)V

    return-void
.end method
