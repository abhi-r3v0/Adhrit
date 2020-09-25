.class Lo/logDataCollectionState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->tryScheduleReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;

.field final synthetic val$forceRefresh:Z


# direct methods
.method constructor <init>(Lo/logDataCollectionState;Z)V
    .locals 0

    .line 601
    iput-object p1, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    iput-boolean p2, p0, Lo/logDataCollectionState$1;->val$forceRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 604
    iget-object v0, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Trying to fetch auth token"

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    .line 606
    invoke-static {v0}, Lo/logDataCollectionState;->access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;

    move-result-object v0

    sget-object v2, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    .line 608
    invoke-static {v3}, Lo/logDataCollectionState;->access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Not in disconnected state: %s"

    .line 605
    invoke-static {v0, v1, v2}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/logDataCollectionState;->access$502(Lo/logDataCollectionState;Lo/logDataCollectionState$ICustomTabsCallback;)Lo/logDataCollectionState$ICustomTabsCallback;

    .line 610
    iget-object v0, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$608(Lo/logDataCollectionState;)J

    .line 611
    iget-object v0, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$600(Lo/logDataCollectionState;)J

    move-result-wide v0

    .line 612
    iget-object v2, p0, Lo/logDataCollectionState$1;->this$0:Lo/logDataCollectionState;

    invoke-static {v2}, Lo/logDataCollectionState;->access$800(Lo/logDataCollectionState;)Lo/isAutomaticDataCollectionEnabled;

    move-result-object v2

    iget-boolean v3, p0, Lo/logDataCollectionState$1;->val$forceRefresh:Z

    new-instance v4, Lo/logDataCollectionState$1$5;

    invoke-direct {v4, p0, v0, v1}, Lo/logDataCollectionState$1$5;-><init>(Lo/logDataCollectionState$1;J)V

    invoke-interface {v2, v3, v4}, Lo/isAutomaticDataCollectionEnabled;->getToken(ZLo/isAutomaticDataCollectionEnabled$onPostMessage;)V

    return-void
.end method
