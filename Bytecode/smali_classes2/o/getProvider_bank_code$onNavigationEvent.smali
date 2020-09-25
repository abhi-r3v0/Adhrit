.class public final Lo/getProvider_bank_code$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getProvider_bank_code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/getProvider_bank_code;",
        "Lo/getProvider_bank_code$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/getProvider_bank_code;->ICustomTabsCallback()Lo/getProvider_bank_code;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BankScreenResponse$ScreenData$Cta$$Parcelable;)V
    .locals 0

    invoke-direct {p0}, Lo/getProvider_bank_code$onNavigationEvent;-><init>()V

    return-void
.end method
