.class public final Lo/BankScreenResponse$ScreenData$$Parcelable;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/BankScreenResponse$ScreenData$$Parcelable;",
        "Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/BankScreenResponse$ScreenData$$Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;


# instance fields
.field private zzdih:I

.field private zzdip:Lo/LoanStatusResponse$Input;

.field private zzdiv:Lo/BankScreenResponseJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-direct {v0}, Lo/BankScreenResponse$ScreenData$$Parcelable;-><init>()V

    sput-object v0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    const-class v1, Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdip:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method static synthetic extraCallback()Lo/BankScreenResponse$ScreenData$$Parcelable;
    .locals 1

    sget-object v0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/BankScreenResponse$ScreenData$$Parcelable;Lo/LoanStatusResponse$Input;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)V

    return-void
.end method

.method private final onMessageChannelReady(I)V
    .locals 0

    iput p1, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdih:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/BankScreenResponse$ScreenData$$Parcelable;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->onMessageChannelReady(I)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/BankScreenResponseJsonAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiv:Lo/BankScreenResponseJsonAdapter;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final onMessageChannelReady(Lo/LoanStatusResponse$Input;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdip:Lo/LoanStatusResponse$Input;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public static onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData$$Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/BankScreenResponse$ScreenData$$Parcelable;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/BankScreenResponse$ScreenData$$Parcelable;Lo/BankScreenResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->onMessageChannelReady(Lo/BankScreenResponseJsonAdapter;)V

    return-void
.end method

.method public static onPostMessage()Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
    .locals 3

    sget-object v0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdih:I

    return v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/BankScreenResponse$ScreenData$Cta;->extraCallback:[I

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
    sget-object p1, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/BankScreenResponse$ScreenData$$Parcelable;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdiv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    sget-object p2, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiw:Lo/BankScreenResponse$ScreenData$$Parcelable;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;

    invoke-direct {p1, p2}, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;-><init>(Lo/BankScreenResponse$ScreenData$Cta;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-direct {p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;-><init>()V

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

.method public final onMessageChannelReady()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdip:Lo/LoanStatusResponse$Input;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/BankScreenResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable;->zzdiv:Lo/BankScreenResponseJsonAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lo/BankScreenResponseJsonAdapter;->ICustomTabsCallback()Lo/BankScreenResponseJsonAdapter;

    move-result-object v0

    :cond_0
    return-object v0
.end method
