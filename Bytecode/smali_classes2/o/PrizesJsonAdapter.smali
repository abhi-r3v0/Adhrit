.class public final Lo/PrizesJsonAdapter;
.super Lo/ClaimedRewardResponse;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Object;

.field private static volatile onPostMessage:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/PrizesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V
    .locals 7

    const/16 v6, 0x16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    return-void
.end method


# virtual methods
.method protected final onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lo/PrizesJsonAdapter;->onPostMessage:Ljava/lang/Long;

    if-nez v0, :cond_1

    sget-object v0, Lo/PrizesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/PrizesJsonAdapter;->onPostMessage:Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/PrizesJsonAdapter;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lo/PrizesJsonAdapter;->onPostMessage:Ljava/lang/Long;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lo/PrizesJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lo/PrizesJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    sget-object v2, Lo/PrizesJsonAdapter;->onPostMessage:Ljava/lang/Long;

    iput-object v2, v1, Lo/LoanStatusResponse$CaptchaInput;->getInterfaceDescriptor:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
