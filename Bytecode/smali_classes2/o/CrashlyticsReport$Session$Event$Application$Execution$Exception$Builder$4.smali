.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;
.super Lo/pathPrefixStartToPrefixEnd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->runBidiStreamingRpc(Lo/reverseIterator;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)Lo/resetPreviouslyActiveTrackedQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pathPrefixStartToPrefixEnd<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field final synthetic val$call:[Lo/resetPreviouslyActiveTrackedQueries;

.field final synthetic val$clientCall:Lcom/google/android/gms/tasks/Task;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$clientCall:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Lo/pathPrefixStartToPrefixEnd;-><init>()V

    return-void
.end method


# virtual methods
.method public final delegate()Lo/resetPreviouslyActiveTrackedQueries;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ClientCall used before onOpen() callback"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final halfClose()V
    .locals 3

    .line 168
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->val$clientCall:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$4;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;)Lo/CrashlyticsReport$Type;

    move-result-object v1

    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;->lambdaFactory$()Lo/addLifecycleEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 171
    :cond_0
    invoke-super {p0}, Lo/pathPrefixStartToPrefixEnd;->halfClose()V

    return-void
.end method
