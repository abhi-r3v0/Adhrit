.class Lo/getCrashlyticsInstallId$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->sendTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$path:Lo/ExecutorUtils$2;

.field final synthetic val$queue:Ljava/util/List;

.field final synthetic val$repo:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Ljava/util/List;Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$8;->val$path:Lo/ExecutorUtils$2;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$8;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lo/getCrashlyticsInstallId$8;->val$repo:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 984
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    .line 985
    iget-object p2, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->val$path:Lo/ExecutorUtils$2;

    const-string v1, "Transaction"

    invoke-static {p2, v1, v0, p1}, Lo/getCrashlyticsInstallId;->access$700(Lo/getCrashlyticsInstallId;Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V

    .line 986
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    .line 989
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 990
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 991
    sget-object v2, Lo/getCrashlyticsInstallId$onMessageChannelReady;->COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v1, v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 992
    iget-object v2, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    .line 993
    invoke-static {v2}, Lo/getCrashlyticsInstallId;->access$1000(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;

    move-result-object v3

    .line 994
    invoke-static {v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v2}, Lo/getCrashlyticsInstallId;->access$2200(Lo/getCrashlyticsInstallId;)Lo/removeAllReports;

    move-result-object v8

    .line 993
    invoke-virtual/range {v3 .. v8}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v2

    .line 992
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 998
    invoke-static {v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1600(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    .line 999
    iget-object v3, p0, Lo/getCrashlyticsInstallId$8;->val$repo:Lo/getCrashlyticsInstallId;

    .line 1001
    invoke-static {v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-static {v3, v4}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object v3

    invoke-static {v2}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v2

    .line 1000
    invoke-static {v3, v2}, Lo/zzac;->createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;

    move-result-object v2

    .line 1003
    new-instance v3, Lo/getCrashlyticsInstallId$8$2;

    invoke-direct {v3, p0, v1, v2}, Lo/getCrashlyticsInstallId$8$2;-><init>(Lo/getCrashlyticsInstallId$8;Lo/getCrashlyticsInstallId$onPostMessage;Lo/CrashlyticsLifecycleEvents;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v2, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    new-instance v3, Lo/writeKeyData;

    .line 1014
    invoke-static {v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateSessionDeviceData;

    move-result-object v4

    .line 1015
    invoke-static {v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-static {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 1011
    invoke-virtual {v2, v3}, Lo/getCrashlyticsInstallId;->removeEventCallback(Lo/addDelayedShutdownHook;)V

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$2500(Lo/getCrashlyticsInstallId;)Lo/persistEvent;

    move-result-object v1

    iget-object v2, p0, Lo/getCrashlyticsInstallId$8;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {v1, v2}, Lo/persistEvent;->subTree(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lo/getCrashlyticsInstallId;->access$2600(Lo/getCrashlyticsInstallId;Lo/persistEvent;)V

    .line 1022
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$2700(Lo/getCrashlyticsInstallId;)V

    .line 1024
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->val$repo:Lo/getCrashlyticsInstallId;

    invoke-static {v0, p2}, Lo/getCrashlyticsInstallId;->access$500(Lo/getCrashlyticsInstallId;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 1027
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1028
    iget-object v0, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 1032
    :cond_2
    invoke-virtual {p1}, Lo/getMarkerFile;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1033
    iget-object p1, p0, Lo/getCrashlyticsInstallId$8;->val$queue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1034
    invoke-static {p2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v0

    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v0, v1, :cond_3

    .line 1035
    sget-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {p2, v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    goto :goto_2

    .line 1037
    :cond_3
    sget-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {p2, v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    goto :goto_2

    .line 1041
    :cond_4
    iget-object p2, p0, Lo/getCrashlyticsInstallId$8;->val$queue:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1042
    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v0, v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 1043
    invoke-static {v0, p1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2802(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;)Lo/getMarkerFile;

    goto :goto_3

    .line 1049
    :cond_5
    iget-object p1, p0, Lo/getCrashlyticsInstallId$8;->this$0:Lo/getCrashlyticsInstallId;

    iget-object p2, p0, Lo/getCrashlyticsInstallId$8;->val$path:Lo/ExecutorUtils$2;

    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$1200(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    return-void
.end method
