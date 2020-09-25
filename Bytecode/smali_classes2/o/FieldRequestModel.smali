.class final Lo/FieldRequestModel;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPrimaryButtonText$onMessageChannelReady;


# instance fields
.field private final synthetic onPostMessage:Lo/ValuesJsonAdapter;


# direct methods
.method constructor <init>(Lo/ValuesJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 2

    iget-object p1, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {p1}, Lo/ValuesJsonAdapter;->onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ValuesJsonAdapter;->extraCallback(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;)Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

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

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {p1}, Lo/ValuesJsonAdapter;->onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->onMessageChannelReady(Lo/ValuesJsonAdapter;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    iget-object v1, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {v1}, Lo/ValuesJsonAdapter;->onMessageChannelReady(Lo/ValuesJsonAdapter;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->extraCallback()Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ValuesJsonAdapter;->extraCallback(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;)Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->ICustomTabsCallback(Lo/ValuesJsonAdapter;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/FieldRequestModel;->onPostMessage:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
