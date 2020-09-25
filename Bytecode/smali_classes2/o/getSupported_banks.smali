.class public final Lo/getSupported_banks;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSupported_banks$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/getSupported_banks;",
        "Lo/getSupported_banks$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/getSupported_banks;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdis:Lo/getSupported_banks;


# instance fields
.field private zzdio:Lo/getProvider_bank_code;

.field private zzdir:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getSupported_banks;

    invoke-direct {v0}, Lo/getSupported_banks;-><init>()V

    sput-object v0, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    const-class v1, Lo/getSupported_banks;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/getSupported_banks;
    .locals 1

    sget-object v0, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/getSupported_banks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/getSupported_banks;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Lo/getSupported_banks;
    .locals 1

    sget-object v0, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Lo/getProvider_bank_code;
    .locals 1

    iget-object v0, p0, Lo/getSupported_banks;->zzdio:Lo/getProvider_bank_code;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getProvider_bank_code;->onPostMessage()Lo/getProvider_bank_code;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/BankScreenResponse$SupportedBank;->onNavigationEvent:[I

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
    sget-object p1, Lo/getSupported_banks;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/getSupported_banks;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/getSupported_banks;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/getSupported_banks;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdio"

    aput-object v0, p1, p2

    const-string p2, "zzdir"

    aput-object p2, p1, p3

    sget-object p2, Lo/getSupported_banks;->zzdis:Lo/getSupported_banks;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b"

    invoke-static {p2, p3, p1}, Lo/getSupported_banks;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/getSupported_banks$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/getSupported_banks$onMessageChannelReady;-><init>(Lo/BankScreenResponse$SupportedBank;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/getSupported_banks;

    invoke-direct {p1}, Lo/getSupported_banks;-><init>()V

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

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/getSupported_banks;->zzdir:I

    return v0
.end method
