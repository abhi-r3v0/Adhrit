.class final Lo/LoanSummary_ScheduleChargeJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Lo/LoanSummary_ScheduleChargeJsonAdapter;


# instance fields
.field private final onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/PoweredBy<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/PollMessageJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LoanSummary_ScheduleChargeJsonAdapter;

    invoke-direct {v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;-><init>()V

    sput-object v0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback:Lo/LoanSummary_ScheduleChargeJsonAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "com.google.protobuf.AndroidProto3SchemaFactory"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)Lo/PollMessageJsonAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lo/LoanStatusResponse_SmsDataJsonAdapter;

    invoke-direct {v2}, Lo/LoanStatusResponse_SmsDataJsonAdapter;-><init>()V

    :cond_1
    iput-object v2, p0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onNavigationEvent:Lo/PollMessageJsonAdapter;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Lo/PollMessageJsonAdapter;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/PollMessageJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;
    .locals 1

    sget-object v0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback:Lo/LoanSummary_ScheduleChargeJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/PoweredBy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PoweredBy;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onNavigationEvent:Lo/PollMessageJsonAdapter;

    invoke-interface {v1, p1}, Lo/PollMessageJsonAdapter;->onPostMessage(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object v1

    invoke-static {p1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PoweredBy;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/PoweredBy<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object p1

    return-object p1
.end method
