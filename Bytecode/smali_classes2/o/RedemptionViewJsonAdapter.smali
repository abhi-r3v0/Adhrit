.class public abstract Lo/RedemptionViewJsonAdapter;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/ReelSymbol;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/CategoryJsonAdapter;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/Actionable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RedemptionViewJsonAdapter;->extraCallback(Lo/Actionable;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lo/StatementResponse$StatementDetails$CardLimits;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/StatementResponse$StatementDetails$CardLimits;

    invoke-virtual {p0, p1}, Lo/RedemptionViewJsonAdapter;->onPostMessage(Lo/StatementResponse$StatementDetails$CardLimits;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/ProfilePicResponse;->onMessageChannelReady(Landroid/os/IBinder;)Lo/getSignInMethods;

    move-result-object p1

    sget-object p4, Lo/setCurrentItem$default;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCurrentItem$default;

    invoke-virtual {p0, p1, p2}, Lo/RedemptionViewJsonAdapter;->ICustomTabsCallback(Lo/getSignInMethods;Lo/setCurrentItem$default;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/TemplatePropertiesMachineJsonAdapter;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Lo/TemplatePropertiesMachineJsonAdapter;

    goto :goto_0

    :cond_1
    new-instance p4, Lo/TemplatePropertiesSlotMachine;

    invoke-direct {p4, p1}, Lo/TemplatePropertiesSlotMachine;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p4}, Lo/RedemptionViewJsonAdapter;->onPostMessage(Lo/TemplatePropertiesMachineJsonAdapter;)V

    goto :goto_1

    :pswitch_4
    sget-object p1, Lo/activateCredProtect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/activateCredProtect;

    invoke-virtual {p0, p1}, Lo/RedemptionViewJsonAdapter;->onMessageChannelReady(Lo/activateCredProtect;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lo/MenuScrollHandler$1;->onPostMessage(Landroid/os/IBinder;)Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$updateProfilePicture$1$$special$$inlined$executeOnResume$1;->onPostMessage(Landroid/os/IBinder;)Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lo/RedemptionViewJsonAdapter;->extraCallback(Ljava/lang/String;Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showKeyBoard$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/os/IBinder;)Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RedemptionViewJsonAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showLoader$1$$special$$inlined$executeOnResume$1;->extraCallback(Landroid/os/IBinder;)Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RedemptionViewJsonAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/PendingUsers;

    if-eqz p4, :cond_3

    move-object p4, p2

    check-cast p4, Lo/PendingUsers;

    goto :goto_2

    :cond_3
    new-instance p4, Lo/PendingUsersJsonAdapter;

    invoke-direct {p4, p1}, Lo/PendingUsersJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p4}, Lo/RedemptionViewJsonAdapter;->extraCallback(Lo/PendingUsers;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lo/RedemptionViewJsonAdapter;->onNavigationEvent()Lo/PayoutClaimSlotMachineResponse;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
