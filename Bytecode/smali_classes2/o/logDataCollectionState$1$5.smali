.class final Lo/logDataCollectionState$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isAutomaticDataCollectionEnabled$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/logDataCollectionState$1;

.field final synthetic val$thisGetTokenAttempt:J


# direct methods
.method constructor <init>(Lo/logDataCollectionState$1;J)V
    .locals 0

    .line 614
    iput-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iput-wide p2, p0, Lo/logDataCollectionState$1$5;->val$thisGetTokenAttempt:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 6

    .line 641
    iget-wide v0, p0, Lo/logDataCollectionState$1$5;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v2, v2, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v2}, Lo/logDataCollectionState;->access$600(Lo/logDataCollectionState;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 642
    iget-object v0, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v0, v0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/logDataCollectionState;->access$502(Lo/logDataCollectionState;Lo/logDataCollectionState$ICustomTabsCallback;)Lo/logDataCollectionState$ICustomTabsCallback;

    .line 643
    iget-object v0, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v0, v0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error fetching token: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object p1, p1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$700(Lo/logDataCollectionState;)V

    return-void

    .line 646
    :cond_0
    iget-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object p1, p1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Ignoring getToken error, because this was not the latest attempt."

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 6

    .line 617
    iget-wide v0, p0, Lo/logDataCollectionState$1$5;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v2, v2, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v2}, Lo/logDataCollectionState;->access$600(Lo/logDataCollectionState;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    .line 620
    iget-object v0, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v0, v0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v0, v0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Successfully fetched token, opening connection"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v0, v0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-virtual {v0, p1}, Lo/logDataCollectionState;->openNetworkConnection(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_0
    iget-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object p1, p1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    .line 625
    invoke-static {p1}, Lo/logDataCollectionState;->access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object v1, v1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    .line 627
    invoke-static {v1}, Lo/logDataCollectionState;->access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Expected connection state disconnected, but was %s"

    .line 624
    invoke-static {p1, v1, v0}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 628
    iget-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object p1, p1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Not opening connection after token refresh, because connection was set to disconnected"

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 633
    :cond_2
    iget-object p1, p0, Lo/logDataCollectionState$1$5;->this$1:Lo/logDataCollectionState$1;

    iget-object p1, p1, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Ignoring getToken result, because this was not the latest attempt."

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
