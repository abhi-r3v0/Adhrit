.class public final Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$ScreenData$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
        "Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onTransact()Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse$StashDetails$Detail;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;-><init>()V

    return-void
.end method
