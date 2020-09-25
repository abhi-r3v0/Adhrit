.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Data;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CurrentData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Bank;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SearchKYC;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$InputData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Detail;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$EmiSchedule;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OtpInput;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarInfo;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CaptchaInput;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsPermissionConfirmation;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$UnregisteredMobile;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Incorrect;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$UserDetail;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008)\u0008\u0087\u0008\u0018\u00002\u00020\u0001:(\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006="
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "",
        "screen_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;",
        "status",
        "Lcom/dreamplug/fabrik/ui/lending/model/Status;",
        "(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;Lcom/dreamplug/fabrik/ui/lending/model/Status;)V",
        "getScreen_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;",
        "getStatus",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Status;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "AadhaarCaptcha",
        "AadhaarFillDetails",
        "AadhaarInfo",
        "AadhaarOtp",
        "AccountDetails",
        "Bank",
        "BankDetails",
        "Body",
        "BreakDownData",
        "BreakDownDetails",
        "CaptchaInput",
        "CkycData",
        "CurrentData",
        "Data",
        "Detail",
        "DisbursalDetails",
        "EmiSchedule",
        "ErrorObject",
        "Incorrect",
        "Input",
        "InputData",
        "KycData",
        "MandateDetails",
        "OkycSetup",
        "OtpInput",
        "PollingData",
        "Prefill",
        "RequiredData",
        "Schedule",
        "ScreenData",
        "ScreenDataFlow",
        "SearchKYC",
        "SetupPitch",
        "SmsData",
        "SmsPermissionConfirmation",
        "StashDetails",
        "StashSummaryData",
        "Summary",
        "UnregisteredMobile",
        "UserDetail",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;Lcom/dreamplug/fabrik/ui/lending/model/Status;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoanStatusResponse(screen_data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
