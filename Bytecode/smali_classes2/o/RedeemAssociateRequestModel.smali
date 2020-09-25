.class final Lo/RedeemAssociateRequestModel;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# instance fields
.field private final synthetic extraCallback:Lo/ValuesJsonAdapter;


# direct methods
.method constructor <init>(Lo/ValuesJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/setReferenceId;)V
    .locals 2

    iget-object p1, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    invoke-static {p1}, Lo/ValuesJsonAdapter;->onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ValuesJsonAdapter;->extraCallback(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;)Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    iget-object v0, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->onMessageChannelReady(Lo/ValuesJsonAdapter;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    invoke-static {v0, v1}, Lo/ValuesJsonAdapter;->onNavigationEvent(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    :cond_0
    iget-object v0, p0, Lo/RedeemAssociateRequestModel;->extraCallback:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
