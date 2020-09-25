.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;
.super Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runStreamingResponseRpc$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
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

.field final synthetic val$call:Lo/resetPreviouslyActiveTrackedQueries;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$tcs:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Ljava/util/List;Lo/resetPreviouslyActiveTrackedQueries;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$results:Ljava/util/List;

    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$call:Lo/resetPreviouslyActiveTrackedQueries;

    iput-object p4, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$tcs:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 1516
    sget-object p2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v0, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 204
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$tcs:Lo/removeBackgroundStateChangeListener;

    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$results:Ljava/util/List;

    .line 2008
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 206
    :cond_1
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$tcs:Lo/removeBackgroundStateChangeListener;

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p1

    .line 2011
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$5;->val$call:Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V

    return-void
.end method
