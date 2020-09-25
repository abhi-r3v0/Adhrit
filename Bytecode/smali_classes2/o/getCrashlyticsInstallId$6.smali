.class final Lo/getCrashlyticsInstallId$6;
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

.field final synthetic val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lo/getCrashlyticsInstallId$6;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$6;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1207
    iget-object v0, p0, Lo/getCrashlyticsInstallId$6;->this$0:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/writeKeyData;

    iget-object v2, p0, Lo/getCrashlyticsInstallId$6;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1210
    invoke-static {v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateSessionDeviceData;

    move-result-object v2

    iget-object v3, p0, Lo/getCrashlyticsInstallId$6;->val$transaction:Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1211
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-static {v3}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 1207
    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->removeEventCallback(Lo/addDelayedShutdownHook;)V

    return-void
.end method
