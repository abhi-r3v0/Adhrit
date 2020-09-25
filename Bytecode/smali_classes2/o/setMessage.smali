.class final Lo/setMessage;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;I)V
    .locals 0

    iput-object p1, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    iput p2, p0, Lo/setMessage;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 11

    new-instance v9, Lo/setStatus;

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-boolean v1, v0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->AudioAttributesCompatParcelizer()Z

    move-result v2

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-static {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)Z

    move-result v3

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-static {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)F

    move-result v4

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-boolean v0, v0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    const/4 v10, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lo/setMessage;->onNavigationEvent:I

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-static {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCallback(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)Z

    move-result v6

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v7, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IconCompatParcelizer:Z

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v8, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesImplApi21Parcelizer:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/setStatus;-><init>(ZZZFIZZZ)V

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancelAll()I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onTransact:I

    :cond_1
    move v5, v0

    new-instance v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v3, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v4, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v0, p0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v7, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancel:Ljava/lang/String;

    move-object v0, v10

    move-object v1, v3

    move-object v2, v3

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ILo/DataListJsonAdapter;Ljava/lang/String;Lo/setStatus;)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/getStatus;

    invoke-direct {v1, p0, v10}, Lo/getStatus;-><init>(Lo/setMessage;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
