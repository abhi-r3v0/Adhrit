.class public final Lo/BankScreenResponse$ScreenData;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/BankScreenResponse$ScreenData;",
        "Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/BankScreenResponse$ScreenData;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdiq:Lo/BankScreenResponse$ScreenData;


# instance fields
.field private zzdih:I

.field private zzdio:Lo/getProvider_bank_code;

.field private zzdip:Lo/LoanStatusResponse$Input;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BankScreenResponse$ScreenData;

    invoke-direct {v0}, Lo/BankScreenResponse$ScreenData;-><init>()V

    sput-object v0, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    const-class v1, Lo/BankScreenResponse$ScreenData;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/BankScreenResponse$ScreenData;->zzdip:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/BankScreenResponse$ScreenData;Lo/getProvider_bank_code;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage(Lo/getProvider_bank_code;)V

    return-void
.end method

.method public static extraCallback()Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
    .locals 3

    sget-object v0, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/BankScreenResponse$ScreenData;
    .locals 1

    sget-object v0, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/BankScreenResponse$ScreenData;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/BankScreenResponse$ScreenData;Lo/LoanStatusResponse$Input;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage(Lo/LoanStatusResponse$Input;)V

    return-void
.end method

.method private final onPostMessage(I)V
    .locals 0

    iput p1, p0, Lo/BankScreenResponse$ScreenData;->zzdih:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/BankScreenResponse$ScreenData;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage(I)V

    return-void
.end method

.method private final onPostMessage(Lo/LoanStatusResponse$Input;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/BankScreenResponse$ScreenData;->zzdip:Lo/LoanStatusResponse$Input;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final onPostMessage(Lo/getProvider_bank_code;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/BankScreenResponse$ScreenData;->zzdio:Lo/getProvider_bank_code;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic onRelationshipValidationResult()Lo/BankScreenResponse$ScreenData;
    .locals 1

    sget-object v0, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/BankScreenResponse$ScreenData;->zzdih:I

    return v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/getExisting_accounts;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/BankScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/BankScreenResponse$ScreenData;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/BankScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/BankScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdio"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    sget-object p2, Lo/BankScreenResponse$ScreenData;->zzdiq:Lo/BankScreenResponse$ScreenData;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lo/BankScreenResponse$ScreenData;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;-><init>(Lo/getExisting_accounts;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/BankScreenResponse$ScreenData;

    invoke-direct {p1}, Lo/BankScreenResponse$ScreenData;-><init>()V

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

.method public final onNavigationEvent()Lo/getProvider_bank_code;
    .locals 1

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData;->zzdio:Lo/getProvider_bank_code;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getProvider_bank_code;->onPostMessage()Lo/getProvider_bank_code;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onPostMessage()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData;->zzdip:Lo/LoanStatusResponse$Input;

    return-object v0
.end method
