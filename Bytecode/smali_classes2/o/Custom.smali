.class public final Lo/Custom;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Custom$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/Custom;",
        "Lo/Custom$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/Custom;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjk:Lo/Custom;


# instance fields
.field private zzdjj:Lo/Detail;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Custom;

    invoke-direct {v0}, Lo/Custom;-><init>()V

    sput-object v0, Lo/Custom;->zzdjk:Lo/Custom;

    const-class v1, Lo/Custom;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/Custom;
    .locals 1

    sget-object v0, Lo/Custom;->zzdjk:Lo/Custom;

    return-object v0
.end method

.method public static onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/Custom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/Custom;->zzdjk:Lo/Custom;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/Custom;

    return-object p0
.end method


# virtual methods
.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lo/DetailJsonAdapter;->onPostMessage:[I

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
    sget-object p1, Lo/Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/Custom;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/Custom;->zzdjk:Lo/Custom;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/Custom;->zzdjk:Lo/Custom;

    return-object p1

    :pswitch_4
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzdjj"

    aput-object p3, p1, p2

    sget-object p2, Lo/Custom;->zzdjk:Lo/Custom;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\t"

    invoke-static {p2, p3, p1}, Lo/Custom;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/Custom$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/Custom$ICustomTabsCallback;-><init>(Lo/DetailJsonAdapter;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/Custom;

    invoke-direct {p1}, Lo/Custom;-><init>()V

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

.method public final onPostMessage()Lo/Detail;
    .locals 1

    iget-object v0, p0, Lo/Custom;->zzdjj:Lo/Detail;

    if-nez v0, :cond_0

    invoke-static {}, Lo/Detail;->onNavigationEvent()Lo/Detail;

    move-result-object v0

    :cond_0
    return-object v0
.end method
