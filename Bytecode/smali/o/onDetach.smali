.class public final Lo/onDetach;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDetach$RemoteActionCompatParcelizer;,
        Lo/onDetach$ICustomTabsService$Stub$Proxy;,
        Lo/onDetach$ICustomTabsService;,
        Lo/onDetach$warmup;,
        Lo/onDetach$ICustomTabsCallback$Stub$Proxy;,
        Lo/onDetach$IPostMessageService$Stub;,
        Lo/onDetach$validateRelationship;,
        Lo/onDetach$getInterfaceDescriptor;,
        Lo/onDetach$updateVisuals;,
        Lo/onDetach$onMessageChannelReady;,
        Lo/onDetach$onNavigationEvent;,
        Lo/onDetach$getDefaultImpl;,
        Lo/onDetach$onRelationshipValidationResult;,
        Lo/onDetach$newSession;,
        Lo/onDetach$asBinder;,
        Lo/onDetach$onTransact;,
        Lo/onDetach$postMessage;,
        Lo/onDetach$extraCallback;,
        Lo/onDetach$ICustomTabsCallback;,
        Lo/onDetach$onPostMessage;,
        Lo/onDetach$asInterface;,
        Lo/onDetach$read;,
        Lo/onDetach$write;,
        Lo/onDetach$INotificationSideChannel$Stub;,
        Lo/onDetach$mayLaunchUrl;,
        Lo/onDetach$requestPostMessageChannel;,
        Lo/onDetach$INotificationSideChannel;,
        Lo/onDetach$ICustomTabsService$Stub;,
        Lo/onDetach$notify;,
        Lo/onDetach$cancelAll;,
        Lo/onDetach$IPostMessageService$Stub$Proxy;,
        Lo/onDetach$INotificationSideChannel$Default;,
        Lo/onDetach$AudioAttributesCompatParcelizer;,
        Lo/onDetach$cancel;,
        Lo/onDetach$INotificationSideChannel$Stub$Proxy;,
        Lo/onDetach$ICustomTabsCallback$Stub;,
        Lo/onDetach$IPostMessageService;,
        Lo/onDetach$extraCommand;,
        Lo/onDetach$IconCompatParcelizer;,
        Lo/onDetach$setDefaultImpl;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008,\u0018\u00002\u00020\u0001:*\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData;",
        "",
        "()V",
        "ActivateCredProtectExtra",
        "AutoDebitAddAccountExtra",
        "AutoDebitBankExtra",
        "AutoDebitBankListExtra",
        "AutoDebitUpiPitchExtra",
        "BankGeneralCharges",
        "BankIntrumentInfo",
        "BankItemData",
        "BankOffersCategory",
        "BankOffersDetailsExtra",
        "BankOffersExtra",
        "BankRewardsPoint",
        "CashBackLimitDialogExtra",
        "ClaimedRewardExtra",
        "ControlLandingExtra",
        "CredCurrencyExtra",
        "DateSelector",
        "InstrumentBottomSheetExtra",
        "InstrumentSelectorDialogExtra",
        "LendingAutoDebitSuccess",
        "LendingFailureDialogExtra",
        "LendingWithdrawalExtra",
        "LoanDetailsDialogExtra",
        "LoanManagementExtra",
        "RaffleTicketDialogExtra",
        "RemoteControlData",
        "RentPayExtra",
        "RepaymentScheduleDialogExtra",
        "RepaymentSummaryDialogExtra",
        "SeeCalculationDialogExtra",
        "SeeScheduleDialogExtra",
        "SourceExtra",
        "StashGeneralCharges",
        "StashLandingData",
        "StashNameExtra",
        "StashOrderStatusExtra",
        "StashPayExtra",
        "StashPayStatusExtra",
        "StashProcessingExtra",
        "StashWorkFlowExtra",
        "TabHolderExtra",
        "WinDetailsData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/io/FileOutputStream;

.field private final onMessageChannelReady:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/onDetach;->ICustomTabsCallback:Ljava/io/FileOutputStream;

    .line 1039
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1042
    iget-object v0, p0, Lo/onDetach;->ICustomTabsCallback:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1046
    :cond_0
    iput-object p1, p0, Lo/onDetach;->onMessageChannelReady:Ljava/nio/channels/FileLock;

    return-void

    :catchall_0
    move-exception p1

    .line 1042
    iget-object v0, p0, Lo/onDetach;->ICustomTabsCallback:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1044
    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    :try_start_0
    iget-object v0, p0, Lo/onDetach;->onMessageChannelReady:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lo/onDetach;->onMessageChannelReady:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lo/onDetach;->ICustomTabsCallback:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/onDetach;->ICustomTabsCallback:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1057
    throw v0
.end method
