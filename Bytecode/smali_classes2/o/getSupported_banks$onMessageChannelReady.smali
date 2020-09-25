.class public final Lo/getSupported_banks$onMessageChannelReady;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSupported_banks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/getSupported_banks;",
        "Lo/getSupported_banks$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/getSupported_banks;->onNavigationEvent()Lo/getSupported_banks;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BankScreenResponse$SupportedBank;)V
    .locals 0

    invoke-direct {p0}, Lo/getSupported_banks$onMessageChannelReady;-><init>()V

    return-void
.end method
