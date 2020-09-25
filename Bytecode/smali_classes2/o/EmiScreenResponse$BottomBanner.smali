.class public final Lo/EmiScreenResponse$BottomBanner;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;,
        Lo/EmiScreenResponse$BottomBanner$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$BottomBanner;",
        "Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$BottomBanner;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkv:Lo/EmiScreenResponse$BottomBanner;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdkt:Lo/LoanStatusResponse$Input;

.field private zzdku:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$BottomBanner;

    invoke-direct {v0}, Lo/EmiScreenResponse$BottomBanner;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    const-class v1, Lo/EmiScreenResponse$BottomBanner;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponse$BottomBanner;->zzdks:Ljava/lang/String;

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/EmiScreenResponse$BottomBanner;->zzdkt:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/EmiScreenResponse$BottomBanner;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    return-object v0
.end method

.method public static extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;
    .locals 3

    sget-object v0, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$BottomBanner;->zzdks:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic extraCallback(Lo/EmiScreenResponse$BottomBanner;Lo/LoanStatusResponse$Input;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/EmiScreenResponse$BottomBanner$extraCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/EmiScreenResponse$BottomBanner;->zzdku:I

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final onMessageChannelReady(Lo/LoanStatusResponse$Input;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$BottomBanner;->zzdkt:Lo/LoanStatusResponse$Input;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public static onPostMessage()Lo/EmiScreenResponse$BottomBanner;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/EmiScreenResponse$BottomBanner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$BottomBanner;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/EmiScreenResponse$BottomBanner;Lo/EmiScreenResponse$BottomBanner$extraCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady(Lo/EmiScreenResponse$BottomBanner$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$BottomBanner;->zzdks:Ljava/lang/String;

    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiSchedule_DetailsJsonAdapter;->onMessageChannelReady:[I

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
    sget-object p1, Lo/EmiScreenResponse$BottomBanner;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$BottomBanner;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$BottomBanner;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$BottomBanner;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdkt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdku"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$BottomBanner;->zzdkv:Lo/EmiScreenResponse$BottomBanner;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$BottomBanner;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;-><init>(Lo/EmiSchedule_DetailsJsonAdapter;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$BottomBanner;

    invoke-direct {p1}, Lo/EmiScreenResponse$BottomBanner;-><init>()V

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

.method public final onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner$extraCallback;
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$BottomBanner;->zzdku:I

    invoke-static {v0}, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback(I)Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback$Stub:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$BottomBanner;->zzdkt:Lo/LoanStatusResponse$Input;

    return-object v0
.end method
