.class public abstract Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/openGameRewards;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static extraCallback(Landroid/os/IBinder;)Lo/openGameRewards;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/openGameRewards;

    if-eqz v1, :cond_1

    check-cast v0, Lo/openGameRewards;

    return-object v0

    :cond_1
    new-instance v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$hideLoader$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$hideLoader$1$$special$$inlined$executeOnResume$1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->ICustomTabsCallback()Lo/getEventName;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onPostMessage(Lo/getEventName;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onNavigationEvent()Lo/getEventName;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onRelationshipValidationResult()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onPostMessage()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onMessageChannelReady()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->extraCallback()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_3

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)Lo/enableDarkMode;

    move-result-object p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
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
