.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;
.super Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runRpc$2(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
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

.field final synthetic val$tcs:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->val$tcs:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 2

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

    .line 244
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->val$tcs:Lo/removeBackgroundStateChangeListener;

    .line 2014
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 244
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_2

    .line 245
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->val$tcs:Lo/removeBackgroundStateChangeListener;

    new-instance p2, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INTERNAL:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v1, "Received onClose with status OK, but no message."

    invoke-direct {p2, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 3011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 251
    :cond_1
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->val$tcs:Lo/removeBackgroundStateChangeListener;

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p1

    .line 4011
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public final onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder$2;->val$tcs:Lo/removeBackgroundStateChangeListener;

    .line 1008
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
