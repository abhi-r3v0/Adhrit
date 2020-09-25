.class public final Lo/BankScreenResponse_ExistingAccountJsonAdapter$ICustomTabsCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BankScreenResponse_ExistingAccountJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/BankScreenResponse_ExistingAccountJsonAdapter;",
        "Lo/BankScreenResponse_ExistingAccountJsonAdapter$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->onNavigationEvent()Lo/BankScreenResponse_ExistingAccountJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BankScreenResponse_ScreenData_CtaJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/BankScreenResponse_ExistingAccountJsonAdapter$ICustomTabsCallback;-><init>()V

    return-void
.end method
