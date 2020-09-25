.class public final Lo/EmiSchedule$EmiCard;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiSchedule$EmiCard$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiSchedule$EmiCard;",
        "Lo/EmiSchedule$EmiCard$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiSchedule$EmiCard;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkn:Lo/EmiSchedule$EmiCard;


# instance fields
.field private zzdih:I

.field private zzdip:Lo/LoanStatusResponse$Input;

.field private zzdkm:Lo/EmiSchedule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiSchedule$EmiCard;

    invoke-direct {v0}, Lo/EmiSchedule$EmiCard;-><init>()V

    sput-object v0, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    const-class v1, Lo/EmiSchedule$EmiCard;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/EmiSchedule$EmiCard;->zzdip:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 0

    iput p1, p0, Lo/EmiSchedule$EmiCard;->zzdih:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/EmiSchedule$EmiCard;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback(I)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiSchedule$EmiCard;->zzdip:Lo/LoanStatusResponse$Input;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public static extraCallback(Lo/LoanStatusResponse$Input;)Lo/EmiSchedule$EmiCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/EmiSchedule$EmiCard;

    return-object p0
.end method

.method public static onMessageChannelReady()Lo/EmiSchedule$EmiCard$onNavigationEvent;
    .locals 3

    sget-object v0, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/EmiSchedule$EmiCard$onNavigationEvent;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/EmiSchedule$EmiCard;Lo/EmiSchedule;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiSchedule$EmiCard;->onMessageChannelReady(Lo/EmiSchedule;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/EmiSchedule;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiSchedule$EmiCard;->zzdkm:Lo/EmiSchedule;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public static onNavigationEvent()Lo/EmiSchedule$EmiCard;
    .locals 1

    sget-object v0, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/EmiSchedule$EmiCard;Lo/LoanStatusResponse$Input;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult()Lo/EmiSchedule$EmiCard;
    .locals 1

    sget-object v0, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/EmiSchedule$EmiCard;->zzdip:Lo/LoanStatusResponse$Input;

    return-object v0
.end method

.method public final extraCallback()Lo/EmiSchedule;
    .locals 1

    iget-object v0, p0, Lo/EmiSchedule$EmiCard;->zzdkm:Lo/EmiSchedule;

    if-nez v0, :cond_0

    invoke-static {}, Lo/EmiSchedule;->onNavigationEvent()Lo/EmiSchedule;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiScheduleJsonAdapter;->onNavigationEvent:[I

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
    sget-object p1, Lo/EmiSchedule$EmiCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiSchedule$EmiCard;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiSchedule$EmiCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiSchedule$EmiCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdkm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiSchedule$EmiCard;->zzdkn:Lo/EmiSchedule$EmiCard;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiSchedule$EmiCard$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/EmiSchedule$EmiCard$onNavigationEvent;-><init>(Lo/EmiScheduleJsonAdapter;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiSchedule$EmiCard;

    invoke-direct {p1}, Lo/EmiSchedule$EmiCard;-><init>()V

    return-object p1

    nop

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

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/EmiSchedule$EmiCard;->zzdih:I

    return v0
.end method
