.class final Lo/MetaSlotMachine;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

.field private final extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

.field private final onMessageChannelReady:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iput-object p3, p0, Lo/MetaSlotMachine;->ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

    iput-object p4, p0, Lo/MetaSlotMachine;->onMessageChannelReady:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder()Z

    iget-object v0, p0, Lo/MetaSlotMachine;->ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

    iget-object v0, v0, Lo/BankAccountSyncRequestJsonAdapter;->onMessageChannelReady:Lcom/google/android/gms/internal/ads/zzae;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/MetaSlotMachine;->ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

    iget-object v1, v1, Lo/BankAccountSyncRequestJsonAdapter;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/MetaSlotMachine;->ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

    iget-object v1, v1, Lo/BankAccountSyncRequestJsonAdapter;->onMessageChannelReady:Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V

    :goto_1
    iget-object v0, p0, Lo/MetaSlotMachine;->ICustomTabsCallback:Lo/BankAccountSyncRequestJsonAdapter;

    iget-boolean v0, v0, Lo/BankAccountSyncRequestJsonAdapter;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/MetaSlotMachine;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lo/MetaSlotMachine;->onMessageChannelReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
