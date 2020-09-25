.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;
.super Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runBidiStreamingRpc$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field final synthetic val$call:[Lo/resetPreviouslyActiveTrackedQueries;

.field final synthetic val$observer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;[Lo/resetPreviouslyActiveTrackedQueries;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$observer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 0

    .line 135
    :try_start_0
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$observer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    invoke-interface {p2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;->onClose(Lo/emptyMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 137
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;)Lo/CrashlyticsReport$Type;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/CrashlyticsReport$Type;->panic(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onHeaders(Lo/getPredecessorKey;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$observer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;->onHeaders(Lo/getPredecessorKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;)Lo/CrashlyticsReport$Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->panic(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$observer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;->onNext(Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->val$call:[Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 128
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$3;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;)Lo/CrashlyticsReport$Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->panic(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onReady()V
    .locals 0

    return-void
.end method
