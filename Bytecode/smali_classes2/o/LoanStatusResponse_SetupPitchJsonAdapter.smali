.class final Lo/LoanStatusResponse_SetupPitchJsonAdapter;
.super Lo/LoanStatusResponse_ScheduleJsonAdapter;


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_ScheduleJsonAdapter;-><init>(Lo/LoanStatusResponse_SearchKYCJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/LoanStatusResponse_SearchKYCJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, v0, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Lo/LoanStatusResponse_OtpInputJsonAdapter;

    invoke-direct {v0, p3}, Lo/LoanStatusResponse_OtpInputJsonAdapter;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v1, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->extraCallback:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {p0, p1, p2, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lo/StashSummaryDataJsonAdapter;

    if-eqz v1, :cond_3

    new-instance v1, Lo/LoanStatusResponse_OtpInputJsonAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lo/LoanStatusResponse_OtpInputJsonAdapter;-><init>(I)V

    check-cast v0, Lo/StashSummaryDataJsonAdapter;

    invoke-virtual {v1, v0}, Lo/LoanStatusResponse$Detail;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
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

    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->extraCallback()Lo/LoanStatusResponse_PollingDataJsonAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->extraCallback:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lo/LoanStatusResponse_SetupPitchJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p1, p3, p4, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
