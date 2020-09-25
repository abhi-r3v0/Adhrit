.class public final Lo/getCustom;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCustom$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/getCustom;",
        "Lo/getCustom$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/getCustom;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdin:Lo/getCustom;


# instance fields
.field private zzdil:Lo/getSupported_banks;

.field private zzdim:Lo/EmiDetailsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getCustom;

    invoke-direct {v0}, Lo/getCustom;-><init>()V

    sput-object v0, Lo/getCustom;->zzdin:Lo/getCustom;

    const-class v1, Lo/getCustom;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/LoanStatusResponse$Input;)Lo/getCustom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/getCustom;->zzdin:Lo/getCustom;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/getCustom;

    return-object p0
.end method

.method static synthetic onPostMessage()Lo/getCustom;
    .locals 1

    sget-object v0, Lo/getCustom;->zzdin:Lo/getCustom;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Lo/EmiDetailsJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/getCustom;->zzdim:Lo/EmiDetailsJsonAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lo/EmiDetailsJsonAdapter;->onPostMessage()Lo/EmiDetailsJsonAdapter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/getCta;->onPostMessage:[I

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
    sget-object p1, Lo/getCustom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/getCustom;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/getCustom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/getCustom;->zzdin:Lo/getCustom;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/getCustom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/getCustom;->zzdin:Lo/getCustom;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdil"

    aput-object v0, p1, p2

    const-string p2, "zzdim"

    aput-object p2, p1, p3

    sget-object p2, Lo/getCustom;->zzdin:Lo/getCustom;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\t"

    invoke-static {p2, p3, p1}, Lo/getCustom;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/getCustom$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/getCustom$ICustomTabsCallback;-><init>(Lo/getCta;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/getCustom;

    invoke-direct {p1}, Lo/getCustom;-><init>()V

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

.method public final onNavigationEvent()Lo/getSupported_banks;
    .locals 1

    iget-object v0, p0, Lo/getCustom;->zzdil:Lo/getSupported_banks;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getSupported_banks;->onMessageChannelReady()Lo/getSupported_banks;

    move-result-object v0

    :cond_0
    return-object v0
.end method
