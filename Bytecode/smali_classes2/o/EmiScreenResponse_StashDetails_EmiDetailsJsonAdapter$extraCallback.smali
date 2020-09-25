.class public final Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;",
        "Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->ICustomTabsCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiSummary;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-static {v0, p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->ICustomTabsCallback(Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;Lo/EmiScreenResponse$ChildCard;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-static {v0, p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->ICustomTabsCallback(Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;Ljava/lang/String;)V

    return-object p0
.end method
