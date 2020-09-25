.class abstract Lo/LoanStatusResponse_ScheduleJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Lo/LoanStatusResponse_ScheduleJsonAdapter;

.field private static final onNavigationEvent:Lo/LoanStatusResponse_ScheduleJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LoanStatusResponse_SetupPitchJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;-><init>(Lo/LoanStatusResponse_SearchKYCJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_ScheduleJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_ScreenDataFlowJsonAdapter;

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_ScreenDataFlowJsonAdapter;-><init>(Lo/LoanStatusResponse_SearchKYCJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/LoanStatusResponse_SearchKYCJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_ScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/LoanStatusResponse_ScheduleJsonAdapter;
    .locals 1

    sget-object v0, Lo/LoanStatusResponse_ScheduleJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    return-object v0
.end method

.method static onMessageChannelReady()Lo/LoanStatusResponse_ScheduleJsonAdapter;
    .locals 1

    sget-object v0, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    return-object v0
.end method


# virtual methods
.method abstract extraCallback(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;J)V
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
