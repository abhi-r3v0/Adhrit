.class public final Lo/EmiScreenResponseJsonAdapter;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponseJsonAdapter$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponseJsonAdapter;",
        "Lo/EmiScreenResponseJsonAdapter$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdme:Lo/EmiScreenResponseJsonAdapter;


# instance fields
.field private zzdmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponseJsonAdapter;

    invoke-direct {v0}, Lo/EmiScreenResponseJsonAdapter;-><init>()V

    sput-object v0, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    const-class v1, Lo/EmiScreenResponseJsonAdapter;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponseJsonAdapter;->zzdmd:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady()Lo/EmiScreenResponseJsonAdapter;
    .locals 1

    sget-object v0, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    return-object v0
.end method

.method public static onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/EmiScreenResponseJsonAdapter;

    return-object p0
.end method

.method static synthetic onPostMessage()Lo/EmiScreenResponseJsonAdapter;
    .locals 1

    sget-object v0, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponseJsonAdapter;->zzdmd:Ljava/lang/String;

    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lo/EmiScreenResponse_ChildCardJsonAdapter;->extraCallback:[I

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
    sget-object p1, Lo/EmiScreenResponseJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponseJsonAdapter;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponseJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponseJsonAdapter;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    return-object p1

    :pswitch_4
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzdmd"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponseJsonAdapter;->zzdme:Lo/EmiScreenResponseJsonAdapter;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0208"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponseJsonAdapter;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponseJsonAdapter$onPostMessage;

    invoke-direct {p1, p2}, Lo/EmiScreenResponseJsonAdapter$onPostMessage;-><init>(Lo/EmiScreenResponse_ChildCardJsonAdapter;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponseJsonAdapter;

    invoke-direct {p1}, Lo/EmiScreenResponseJsonAdapter;-><init>()V

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
