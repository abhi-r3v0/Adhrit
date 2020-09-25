.class public final Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;",
        "Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;


# instance fields
.field private zzdlq:I

.field private zzdmr:Ljava/lang/String;

.field private zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_MandateDetailsJsonAdapter<",
            "Lo/EmiScreenResponse$ChildCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-direct {v0}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;-><init>()V

    sput-object v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    const-class v1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmr:Ljava/lang/String;

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->postMessage()Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;Lo/EmiScreenResponse$ChildCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->onNavigationEvent(Lo/EmiScreenResponse$ChildCard;)V

    return-void
.end method

.method public static extraCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;
    .locals 3

    sget-object v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    return-object v0
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmr:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final onNavigationEvent(Lo/EmiScreenResponse$ChildCard;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    :cond_1
    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiSummary;->onNavigationEvent:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdlq"

    aput-object v0, p1, p2

    const-string p2, "zzdmr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdms"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/EmiScreenResponse$ChildCard;

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdmt:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    const-string p3, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;-><init>(Lo/EmiSummary;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-direct {p1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/EmiScreenResponse$ChildCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->zzdms:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    return-object v0
.end method
