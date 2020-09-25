.class public final Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findReferenceChild;->onNavigationEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/findReferenceChild;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/findReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "owner"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-static {v1}, Lo/findReferenceChild;->onMessageChannelReady(Lo/findReferenceChild;)Lo/onDetach$AudioAttributesCompatParcelizer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 54
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 55
    new-instance v4, Lo/addChildDrawingOrderCallback;

    invoke-direct {v4}, Lo/addChildDrawingOrderCallback;-><init>()V

    .line 60
    move-object v5, v4

    check-cast v5, Landroidx/fragment/app/Fragment;

    new-instance v15, Lo/onDetach$INotificationSideChannel$Stub;

    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-static {v6}, Lo/findReferenceChild;->onPostMessage(Lo/findReferenceChild;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-static {v6}, Lo/findReferenceChild;->onMessageChannelReady(Lo/findReferenceChild;)Lo/onDetach$AudioAttributesCompatParcelizer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1165
    iget-wide v6, v6, Lo/onDetach$AudioAttributesCompatParcelizer;->ICustomTabsCallback:D

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :goto_0
    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v6, Lo/length;->extraCallback:Lo/length;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-static {v6}, Lo/findReferenceChild;->onMessageChannelReady(Lo/findReferenceChild;)Lo/onDetach$AudioAttributesCompatParcelizer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2165
    iget-object v6, v6, Lo/onDetach$AudioAttributesCompatParcelizer;->onNavigationEvent:Ljava/lang/String;

    move-object/from16 v22, v6

    goto :goto_1

    :cond_2
    move-object/from16 v22, v3

    .line 61
    :goto_1
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    invoke-static {v6}, Lo/findReferenceChild;->onMessageChannelReady(Lo/findReferenceChild;)Lo/onDetach$AudioAttributesCompatParcelizer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3165
    iget-object v6, v6, Lo/onDetach$AudioAttributesCompatParcelizer;->extraCallback:Ljava/lang/String;

    move-object/from16 v23, v6

    goto :goto_2

    :cond_3
    move-object/from16 v23, v3

    :goto_2
    const/16 v24, 0xfd

    const-string v17, "loan_payment"

    .line 61
    invoke-static/range {v16 .. v24}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x30

    const-string v7, "emi_payment"

    const-string v8, "emi_payment"

    move-object v6, v15

    .line 60
    invoke-direct/range {v6 .. v14}, Lo/onDetach$INotificationSideChannel$Stub;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v15, Landroid/os/Parcelable;

    const-string v6, "extra"

    .line 4016
    invoke-static {v5, v15, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    const-string v5, "DisbursalStatus"

    .line 59
    invoke-virtual {v4, v1, v5}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onPostMessage:Lo/findReferenceChild;

    .line 5000
    iget-object v1, v1, Lo/findReferenceChild;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 65
    invoke-static {v1, v3, v2, v4, v5}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 27
    :cond_5
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v3, v0

    check-cast v3, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/LoanPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
