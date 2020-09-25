.class public final Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/MoshiGradientOrientationAdapter;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/setVoucherCodeTitle;

    invoke-direct {v0, p0, p1}, Lo/setVoucherCodeTitle;-><init>(Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-static {p2}, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)Lo/BankAccountSyncRequestJsonAdapter;

    move-result-object p2

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MetaSlotMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lo/MetaSlotMachine;-><init>(Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->warmup()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MetaSlotMachine;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/MetaSlotMachine;-><init>(Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
