.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008]\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00eb\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0010\u0008\u0001\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010!\u0012\n\u0008\u0001\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010$\u0012\n\u0008\u0001\u0010%\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0001\u0010\'\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010(\u001a\u0004\u0018\u00010)\u0012\u0008\u0010*\u001a\u0004\u0018\u00010+\u0012\n\u0008\u0001\u0010,\u001a\u0004\u0018\u00010-\u0012\u0008\u0010.\u001a\u0004\u0018\u00010/\u0012\n\u0008\u0001\u00100\u001a\u0004\u0018\u000101\u0012\n\u0008\u0001\u00102\u001a\u0004\u0018\u000103\u0012\n\u0008\u0001\u00104\u001a\u0004\u0018\u000105\u0012\n\u0008\u0001\u00106\u001a\u0004\u0018\u000107\u00a2\u0006\u0002\u00108J\u000b\u0010p\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u0011\u0010r\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\t\u0010v\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003\u00a2\u0006\u0002\u0010gJ\u000b\u0010y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003J\t\u0010{\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010!H\u00c6\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010!H\u00c6\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010$H\u00c6\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010&H\u00c6\u0003J\u0011\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003\u00a2\u0006\u0002\u0010gJ\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010)H\u00c6\u0003J\u000c\u0010\u0082\u0001\u001a\u0004\u0018\u00010+H\u00c6\u0003J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010-H\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010/H\u00c6\u0003J\u0011\u0010\u0085\u0001\u001a\u0004\u0018\u000101H\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\n\u0010\u0086\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0087\u0001\u001a\u0004\u0018\u000103H\u00c6\u0003J\u000c\u0010\u0088\u0001\u001a\u0004\u0018\u000105H\u00c6\u0003J\u000c\u0010\u0089\u0001\u001a\u0004\u0018\u000107H\u00c6\u0003J\u000c\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008f\u0001\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u0090\u0003\u0010\u0090\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\u0008\u0003\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010!2\n\u0008\u0003\u0010\"\u001a\u0004\u0018\u00010!2\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010$2\n\u0008\u0003\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0003\u0010\'\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\u0008\u0003\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\u0008\u0003\u00100\u001a\u0004\u0018\u0001012\n\u0008\u0003\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0003\u00104\u001a\u0004\u0018\u0001052\n\u0008\u0003\u00106\u001a\u0004\u0018\u000107H\u00c6\u0001\u00a2\u0006\u0003\u0010\u0091\u0001J\n\u0010\u0092\u0001\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010\u0093\u0001\u001a\u00020\u001c2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u00d6\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0005H\u00d6\u0001J\n\u0010\u0097\u0001\u001a\u00020\u0003H\u00d6\u0001J\u001e\u0010\u0098\u0001\u001a\u00030\u0099\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010 \u001a\u0004\u0018\u00010!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0013\u0010#\u001a\u0004\u0018\u00010$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0013\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010:R\u0013\u0010%\u001a\u0004\u0018\u00010&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0013\u0010.\u001a\u0004\u0018\u00010/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR\u0015\u00100\u001a\u0004\u0018\u000101\u00a2\u0006\n\n\u0002\u0010D\u001a\u0004\u0008B\u0010CR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u0013\u00102\u001a\u0004\u0018\u000103\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010LR\u0013\u00104\u001a\u0004\u0018\u000105\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR\u0013\u00106\u001a\u0004\u0018\u000107\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010PR\u0013\u0010*\u001a\u0004\u0018\u00010+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010RR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010JR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010JR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010XR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010JR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010JR\u0013\u0010(\u001a\u0004\u0018\u00010)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010\\R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010^R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008_\u0010JR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010aR\u0013\u0010,\u001a\u0004\u0018\u00010-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010cR\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010eR\u0015\u0010\'\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\n\n\u0002\u0010h\u001a\u0004\u0008f\u0010gR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010jR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010JR\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\n\n\u0002\u0010h\u001a\u0004\u0008l\u0010gR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010JR\u0011\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010UR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010J\u00a8\u0006\u009d\u0001"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;",
        "Landroid/os/Parcelable;",
        "bgCol",
        "",
        "id",
        "",
        "identifier_name",
        "header",
        "title",
        "subtitle",
        "locInstrumentId",
        "loanInstrumentId",
        "ckyc_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;",
        "kycData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
        "requiredData",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;",
        "message",
        "auto_debit_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
        "stashSummaryData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
        "version",
        "mandateDetails",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;",
        "switchWorkflow",
        "",
        "workflowId",
        "okycSetup",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;",
        "aadhaarAutoFill",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
        "aadhaarManual",
        "aadhaarCaptcha",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;",
        "aadhaarOtp",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;",
        "reset",
        "mandate",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
        "flow",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;",
        "pollingData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;",
        "account_details",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;",
        "amountValue",
        "",
        "bankDetails",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;",
        "disbursalDetails",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;",
        "errorObject",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)V",
        "getAadhaarAutoFill",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
        "getAadhaarCaptcha",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;",
        "getAadhaarManual",
        "getAadhaarOtp",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;",
        "getAccount_details",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;",
        "getAmountValue",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getAuto_debit_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
        "getBankDetails",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;",
        "getBgCol",
        "()Ljava/lang/String;",
        "getCkyc_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;",
        "getDisbursalDetails",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;",
        "getErrorObject",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;",
        "getFlow",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;",
        "getHeader",
        "getId",
        "()I",
        "getIdentifier_name",
        "getKycData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
        "getLoanInstrumentId",
        "getLocInstrumentId",
        "getMandate",
        "()Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
        "getMandateDetails",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;",
        "getMessage",
        "getOkycSetup",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;",
        "getPollingData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;",
        "getRequiredData",
        "()Ljava/util/List;",
        "getReset",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getStashSummaryData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
        "getSubtitle",
        "getSwitchWorkflow",
        "getTitle",
        "getVersion",
        "getWorkflowId",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component32",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

.field public final ICustomTabsService:Ljava/lang/String;

.field public final ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

.field public final ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

.field public final INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

.field public final INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

.field public final IPostMessageService:Ljava/lang/Boolean;

.field public final IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

.field public final IPostMessageService$Stub$Proxy:Ljava/lang/Double;

.field public final asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

.field public final asInterface:Ljava/lang/String;

.field public final cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

.field public final cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

.field final extraCallback:Ljava/lang/String;

.field public final extraCommand:Ljava/lang/Boolean;

.field public final getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

.field public final getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;",
            ">;"
        }
    .end annotation
.end field

.field public final mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

.field public final newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

.field public final notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:I

.field final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

.field public final onTransact:Ljava/lang/String;

.field public final postMessage:Ljava/lang/String;

.field final requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

.field public final updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

.field public final validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

.field final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)V
    .locals 3
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "loc_instrument_id"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "loan_instrument_id"
        .end annotation
    .end param
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "kyc_data"
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "required_data"
        .end annotation
    .end param
    .param p14    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "stash_summary_data"
        .end annotation
    .end param
    .param p16    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "mandate_details"
        .end annotation
    .end param
    .param p17    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "switch_workflow"
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "workflow_id"
        .end annotation
    .end param
    .param p19    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "okyc_setup"
        .end annotation
    .end param
    .param p20    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_autofill"
        .end annotation
    .end param
    .param p21    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_manual"
        .end annotation
    .end param
    .param p22    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_captcha"
        .end annotation
    .end param
    .param p23    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_otp"
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "reset"
        .end annotation
    .end param
    .param p27    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "polling_data"
        .end annotation
    .end param
    .param p29    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "amount_value"
        .end annotation
    .end param
    .param p30    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "bank_details"
        .end annotation
    .end param
    .param p31    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "disbursal_details"
        .end annotation
    .end param
    .param p32    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
            "I",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;",
            "Ljava/lang/Boolean;",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;",
            "Ljava/lang/Double;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    const-string v2, "identifier_name"

    invoke-static {p3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    move v2, p2

    iput v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    move-object v1, p10

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    move-object v1, p11

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    move/from16 v1, p15

    iput v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;
    .locals 34
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "loc_instrument_id"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "loan_instrument_id"
        .end annotation
    .end param
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "kyc_data"
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "required_data"
        .end annotation
    .end param
    .param p14    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "stash_summary_data"
        .end annotation
    .end param
    .param p16    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "mandate_details"
        .end annotation
    .end param
    .param p17    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "switch_workflow"
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "workflow_id"
        .end annotation
    .end param
    .param p19    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "okyc_setup"
        .end annotation
    .end param
    .param p20    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_autofill"
        .end annotation
    .end param
    .param p21    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_manual"
        .end annotation
    .end param
    .param p22    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_captcha"
        .end annotation
    .end param
    .param p23    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "aadhaar_otp"
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "reset"
        .end annotation
    .end param
    .param p27    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "polling_data"
        .end annotation
    .end param
    .param p29    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "amount_value"
        .end annotation
    .end param
    .param p30    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "bank_details"
        .end annotation
    .end param
    .param p31    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "disbursal_details"
        .end annotation
    .end param
    .param p32    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
            "I",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;",
            "Ljava/lang/Boolean;",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;",
            "Ljava/lang/Double;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    const-string v0, "identifier_name"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v33, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v32}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)V

    return-object v33
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    .line 1025
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    .line 2025
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_19
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1b
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1c
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenData(bgCol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifier_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locInstrumentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loanInstrumentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ckyc_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kycData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auto_debit_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stashSummaryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mandateDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", switchWorkflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workflowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", okycSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aadhaarAutoFill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aadhaarManual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aadhaarCaptcha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aadhaarOtp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mandate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pollingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", account_details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bankDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disbursalDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->warmup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->postMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->updateVisuals:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    if-eqz p2, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    if-eqz p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->validateRelationship:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    if-eqz p2, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    if-eqz p2, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService:Ljava/lang/Boolean;

    if-eqz p2, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    if-eqz p2, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    if-eqz p2, :cond_f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    if-eqz p2, :cond_10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    if-eqz p2, :cond_11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    if-eqz p2, :cond_12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_11

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    if-eqz p2, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->getDefaultImpl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    if-eqz p2, :cond_14

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel$Default:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    if-eqz p2, :cond_15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
