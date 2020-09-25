.class public final Lo/onMoveFinished;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiUtils;",
        "",
        "()V",
        "getErrorData",
        "Lkotlin/Triple;",
        "",
        "errorCode",
        "getErrorObject",
        "Lcom/dreamplug/upi/UpiViewModel$UpiFailureResponse;",
        "showErrorCode",
        "",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/onMoveFinished;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/onMoveFinished;

    invoke-direct {v0}, Lo/onMoveFinished;-><init>()V

    sput-object v0, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    .line 377
    :cond_0
    invoke-static {p0}, Lo/onMoveFinished;->onMessageChannelReady(Ljava/lang/String;)Lo/fromPathMerge;

    move-result-object p0

    .line 1000
    iget-object p1, p0, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 377
    check-cast p1, Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    .line 377
    check-cast v0, Ljava/lang/String;

    .line 3000
    iget-object p0, p0, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 377
    check-cast p0, Ljava/lang/String;

    .line 380
    new-instance v1, Lo/snapFromFling$ICustomTabsCallback$Stub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lo/snapFromFling$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/fromPathMerge;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/fromPathMerge<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "errorCode"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string/jumbo v1, "we were unable to send sms, please try again"

    const-string/jumbo v2, "unable to fetch account"

    const-string/jumbo v3, "something went wrong, please try again"

    const/4 v4, 0x0

    const-string/jumbo v5, "unable to send sms, please ensure if the network and select sim is active and retry"

    const-string v6, "registration failed"

    const-string v7, "Something went wrong, please try again"

    const-string v8, "process failed"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string v0, "NO SMS PERMISSION"

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C103"

    const-string v1, "SMS permission is mandatory for UPI registration"

    goto/16 :goto_a

    :sswitch_1
    const-string v0, "SMS_VERIFICATION_EXPIRED"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C002"

    const-string/jumbo v1, "unable to verify the sms, please retry"

    goto/16 :goto_4

    :sswitch_2
    const-string v0, "SMS_SENDING_RADIO_OFF"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C003"

    goto/16 :goto_3

    :sswitch_3
    const-string v0, "BIND_DEVICE_LIMIT_EXCEEDED"

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C125"

    const-string/jumbo v2, "unable to proceed with request"

    const-string/jumbo v1, "we couldn\u2019t establish contact with the bank servers. give it sometime and retry later."

    goto/16 :goto_b

    :sswitch_4
    const-string v0, "DUPLICATE_REQUEST"

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C109"

    goto/16 :goto_9

    :sswitch_5
    const-string v0, "INVALID_CHECKSUM"

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C122"

    goto/16 :goto_5

    :sswitch_6
    const-string v0, "NO_PERMISSION"

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C111"

    goto/16 :goto_5

    :sswitch_7
    const-string v0, "SESSION_EXPIRED"

    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C120"

    goto/16 :goto_5

    :sswitch_8
    const-string v0, "SMS_SENDING_NULL_PDU"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C006"

    goto/16 :goto_3

    :sswitch_9
    const-string v0, "GATEWAY_TIMEOUT"

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C119"

    goto/16 :goto_5

    :sswitch_a
    const-string v0, "SMS_VERIFICATION_FAILED"

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C106"

    const-string v1, "Unable to verify device by sending an SMS"

    goto/16 :goto_4

    :sswitch_b
    const-string v0, "SIM_CARD_NOT_AVAILABLE"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C101"

    const-string v1, "No SIM Card found, for UPI registration a valid SIM card with bank accounts linked is required"

    goto/16 :goto_4

    :sswitch_c
    const-string v0, "REQUEST_EXPIRED"

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C121"

    goto/16 :goto_5

    :sswitch_d
    const-string v0, "X02"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "unable to set MPIN"

    const-string/jumbo v1, "transaction not permitted on your card, try with a different account or card"

    goto/16 :goto_b

    :sswitch_e
    const-string v0, "U78"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "U69"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your collect request has expired"

    goto/16 :goto_a

    :sswitch_10
    const-string v0, "U68"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "U67"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "U53"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_13
    const-string v0, "U31"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "U30"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "U28"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_16
    const-string v0, "U27"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_17
    const-string v0, "U26"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_18
    const-string v0, "U21"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "U20"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_1a
    const-string v0, "U18"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_1b
    const-string v0, "U16"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction declined by your bank due to risk, please try again in some time"

    goto/16 :goto_a

    :sswitch_1c
    const-string v0, "U09"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string v1, "bank is taking too long to respond. Please try again"

    goto/16 :goto_a

    :sswitch_1d
    const-string v0, "U03"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_1e
    const-string v0, "ZX"

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your account seems to be inactive, please try with a different account"

    goto/16 :goto_a

    :sswitch_1f
    const-string v0, "ZT"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "too many OTP attempts, please try again"

    goto/16 :goto_a

    :sswitch_20
    const-string v0, "ZS"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "otp entered has expired, please try again"

    goto/16 :goto_a

    :sswitch_21
    const-string v0, "ZR"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "otp entered is incorrect, please try again"

    goto/16 :goto_a

    :sswitch_22
    const-string v0, "ZM"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "UPI PIN entered was incorrect. Please try again"

    goto/16 :goto_a

    :sswitch_23
    const-string v0, "ZI"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction declined by your bank due to risk, please try again in some time \""

    goto/16 :goto_a

    :sswitch_24
    const-string v0, "ZD"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction has failed, please try again after sometime"

    goto/16 :goto_a

    :sswitch_25
    const-string v0, "ZA"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction declined by customer"

    goto/16 :goto_a

    :sswitch_26
    const-string v0, "Z9"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "insufficient funds in your account"

    goto/16 :goto_a

    :sswitch_27
    const-string v0, "Z8"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "limit for transaction amount exceeded as set by your bank"

    goto/16 :goto_a

    :sswitch_28
    const-string v0, "Z7"

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "limit for no. of transactions exceeded for this day"

    goto/16 :goto_a

    :sswitch_29
    const-string v0, "Z6"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "number of pin tries exceeded for the transaction"

    goto/16 :goto_a

    :sswitch_2a
    const-string v0, "YG"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_2b
    const-string v0, "YE"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "this account is blocked by your bank, please try with a different account"

    goto/16 :goto_a

    :sswitch_2c
    const-string v0, "YA"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your card is reported to be lost or stolen, try with a different account or card"

    goto/16 :goto_a

    :sswitch_2d
    const-string v0, "XY"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your bank system is offline, please try after sometime"

    goto/16 :goto_a

    :sswitch_2e
    const-string v0, "XU"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_2f
    const-string v0, "XT"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "bank system not available, please try after sometime"

    goto/16 :goto_a

    :sswitch_30
    const-string v0, "XR"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your card restricted for usage, try with a different account or card"

    goto/16 :goto_a

    :sswitch_31
    const-string v0, "Y1"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const-string/jumbo v1, "transaction declined, please try again after sometime"

    goto/16 :goto_a

    :sswitch_32
    const-string v0, "XN"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "incorrect card details, please try again"

    goto/16 :goto_a

    :sswitch_33
    const-string v0, "XL"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your card has expired, please try with a different card"

    goto/16 :goto_a

    :sswitch_34
    const-string v0, "XH"

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/getItemDelegate$asBinder;->upi_no_account_found_desc:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :sswitch_35
    const-string v0, "UT"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_36
    const-string v0, "SP"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "ATM PIN entered is incorrect"

    goto/16 :goto_a

    :sswitch_37
    const-string v0, "RZ"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "UPI PIN is already set for this account"

    goto/16 :goto_a

    :sswitch_38
    const-string v0, "RN"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "limit exceeded for registration attempts. Please try after 24 hours"

    goto/16 :goto_a

    :sswitch_39
    const-string v0, "RM"

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "weak UPI PIN as per bank policies, please set a strong UPI PIN"

    goto/16 :goto_a

    :sswitch_3a
    const-string v0, "RB"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_3b
    const-string v0, "ND"

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "debit not done"

    goto/16 :goto_a

    :sswitch_3c
    const-string v0, "K1"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction declined by your bank due to risk, please try again in some time "

    goto/16 :goto_a

    :sswitch_3d
    const-string v0, "FP"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "your bank has imposed a temporary freeze period after the first failed transaction. try again after 24 hours."

    goto/16 :goto_a

    :sswitch_3e
    const-string v0, "FL"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "baby steps. the first transaction through UPI is limited to \u20b9 5000. restrictions will be removed after 12 hours."

    goto/16 :goto_a

    :sswitch_3f
    const-string v0, "BT"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    const-string/jumbo v1, "transaction declined, please try again"

    goto/16 :goto_a

    :sswitch_40
    const-string v0, "BR"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v3

    goto/16 :goto_a

    :sswitch_41
    const-string v0, "B2"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "accounts with multiple owners are not allowed - Please try with a different account"

    goto/16 :goto_a

    :sswitch_42
    const-string v0, "B1"

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "mobile number linked to this account has been changed, please try with a different mobile no."

    goto/16 :goto_a

    :sswitch_43
    const-string v0, "AJ"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "ATM PIN does not exist for this account"

    goto/16 :goto_a

    :sswitch_44
    const-string v0, "EXCEPTION"

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C117"

    goto/16 :goto_5

    :sswitch_45
    const-string v0, "INVALID_SLOT_ID"

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C102"

    move-object v2, v6

    move-object v1, v7

    goto/16 :goto_b

    :sswitch_46
    const-string v0, "APP_TOGGLED"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C001"

    const-string v1, "device registration was unsuccessful due to app toggle during the process, please do not close or switch the app."

    goto/16 :goto_4

    :sswitch_47
    const-string v0, "MPIN_NOT_SET"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C110"

    goto/16 :goto_5

    :sswitch_48
    const-string v0, "INVALID_MERCHANT"

    .line 313
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C115"

    goto/16 :goto_5

    :sswitch_49
    const-string v0, "INTERNAL_SERVER_ERROR"

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C113"

    goto/16 :goto_5

    :sswitch_4a
    const-string v0, "SMS_SENDING_USER_CANCELLED"

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C127"

    goto/16 :goto_6

    :sswitch_4b
    const-string v0, "SMS_SENDING_TIMEOUT"

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C128"

    goto/16 :goto_6

    :sswitch_4c
    const-string v0, "NETWORK_ERROR"

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C118"

    goto/16 :goto_5

    :sswitch_4d
    const-string v0, "BAD_REQUEST"

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C112"

    goto/16 :goto_5

    :sswitch_4e
    const-string v0, "SMS_SENDING_NO_SERVICE"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C004"

    goto :goto_3

    :sswitch_4f
    const-string v0, "UNABLE_FETCH_ACCOUNTS"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C105"

    const-string v1, "Unable to talk to your bank, please try again"

    goto/16 :goto_b

    :sswitch_50
    const-string v0, "UNAUTHORIZED"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C107"

    const-string/jumbo v1, "uh-oh, your session has expired, please try again"

    goto/16 :goto_b

    :sswitch_51
    const-string v0, "INVALID_DATA"

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C114"

    goto :goto_5

    :sswitch_52
    const-string v0, "SMS_SENDING_GENERIC_FAILURE_21"

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C123"

    goto :goto_5

    :sswitch_53
    const-string v0, "SMS_SENDING_FAILED"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C104"

    const-string v1, "We were unable to send SMS, please try again"

    goto :goto_4

    :sswitch_54
    const-string v0, "SIM_CARD_NOT_ACTIVE"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C005"

    :goto_3
    move-object v1, v5

    :goto_4
    move-object v2, v6

    goto :goto_b

    :sswitch_55
    const-string v0, "USER_ABORTED"

    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "C108"

    const-string v1, "Activity was aborted, please try again?"

    goto :goto_a

    :sswitch_56
    const-string v0, "SERVICE_UNAVAILABLE"

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C116"

    :goto_5
    move-object v2, v4

    move-object v1, v7

    goto :goto_7

    :sswitch_57
    const-string v0, "INVALID_SDK_CHECKSUM"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C126"

    move-object v1, v3

    :goto_6
    move-object v2, v4

    :goto_7
    move-object v4, v0

    goto :goto_b

    :cond_0
    :goto_8
    const-string v4, "C124"

    :goto_9
    move-object v1, v7

    :goto_a
    move-object v2, v8

    .line 372
    :goto_b
    new-instance v0, Lo/fromPathMerge;

    if-nez v4, :cond_1

    goto :goto_c

    :cond_1
    move-object p0, v4

    :goto_c
    if-nez v2, :cond_2

    goto :goto_d

    :cond_2
    move-object v8, v2

    :goto_d
    invoke-direct {v0, p0, v8, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fe1e3d0 -> :sswitch_57
        -0x7f831a7a -> :sswitch_56
        -0x6602c0c5 -> :sswitch_55
        -0x62987ce7 -> :sswitch_54
        -0x5bf38358 -> :sswitch_53
        -0x56dabf59 -> :sswitch_52
        -0x54b8ceee -> :sswitch_51
        -0x50debf0c -> :sswitch_50
        -0x4d714dc9 -> :sswitch_4f
        -0x46b586fe -> :sswitch_4e
        -0x3b8c8feb -> :sswitch_4d
        -0x34711f89 -> :sswitch_4c
        -0x30098dca -> :sswitch_4b
        -0x25b390d8 -> :sswitch_4a
        -0x25910fd2 -> :sswitch_49
        -0x2563f0d0 -> :sswitch_48
        -0x1bfd9e81 -> :sswitch_47
        -0x12a4b0ce -> :sswitch_46
        -0x2523f6c -> :sswitch_45
        -0x1981fd1 -> :sswitch_44
        0x829 -> :sswitch_43
        0x82f -> :sswitch_42
        0x830 -> :sswitch_41
        0x850 -> :sswitch_40
        0x852 -> :sswitch_3f
        0x8c6 -> :sswitch_3e
        0x8ca -> :sswitch_3d
        0x946 -> :sswitch_3c
        0x9b6 -> :sswitch_3b
        0xa30 -> :sswitch_3a
        0xa3b -> :sswitch_39
        0xa3c -> :sswitch_38
        0xa48 -> :sswitch_37
        0xa5d -> :sswitch_36
        0xa9f -> :sswitch_35
        0xaf0 -> :sswitch_34
        0xaf4 -> :sswitch_33
        0xaf6 -> :sswitch_32
        0xaf8 -> :sswitch_31
        0xafa -> :sswitch_30
        0xafc -> :sswitch_2f
        0xafd -> :sswitch_2e
        0xb01 -> :sswitch_2d
        0xb08 -> :sswitch_2c
        0xb0c -> :sswitch_2b
        0xb0e -> :sswitch_2a
        0xb1c -> :sswitch_29
        0xb1d -> :sswitch_28
        0xb1e -> :sswitch_27
        0xb1f -> :sswitch_26
        0xb27 -> :sswitch_25
        0xb2a -> :sswitch_24
        0xb2f -> :sswitch_23
        0xb33 -> :sswitch_22
        0xb38 -> :sswitch_21
        0xb39 -> :sswitch_20
        0xb3a -> :sswitch_1f
        0xb3e -> :sswitch_1e
        0x14518 -> :sswitch_1d
        0x1451e -> :sswitch_1c
        0x1453a -> :sswitch_1b
        0x1453c -> :sswitch_1a
        0x14553 -> :sswitch_19
        0x14554 -> :sswitch_18
        0x14559 -> :sswitch_17
        0x1455a -> :sswitch_16
        0x1455b -> :sswitch_15
        0x14572 -> :sswitch_14
        0x14573 -> :sswitch_13
        0x145b3 -> :sswitch_12
        0x145d6 -> :sswitch_11
        0x145d7 -> :sswitch_10
        0x145d8 -> :sswitch_f
        0x145f6 -> :sswitch_e
        0x1505a -> :sswitch_d
        0x13ba7935 -> :sswitch_c
        0x18e32db6 -> :sswitch_b
        0x2d76badb -> :sswitch_a
        0x303dee26 -> :sswitch_9
        0x39108bd4 -> :sswitch_8
        0x440b123c -> :sswitch_7
        0x4aac0b0d -> :sswitch_6
        0x5455a1ab -> :sswitch_5
        0x6118671b -> :sswitch_4
        0x6bcc25fe -> :sswitch_3
        0x6f5046a0 -> :sswitch_2
        0x741b5427 -> :sswitch_1
        0x7cc25f55 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic onMessageChannelReady(Lo/onMoveFinished;Ljava/lang/String;)Lo/snapFromFling$ICustomTabsCallback$Stub;
    .locals 0

    const/4 p0, 0x1

    .line 375
    invoke-static {p1, p0}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object p0

    return-object p0
.end method
