.class public final Lo/Details;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Details$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/Details;",
        "Lo/Details$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/Details;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjx:Lo/Details;


# instance fields
.field private zzdju:I

.field private zzdjv:I

.field private zzdjw:Lo/LoanStatusResponse$Input;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Details;

    invoke-direct {v0}, Lo/Details;-><init>()V

    sput-object v0, Lo/Details;->zzdjx:Lo/Details;

    const-class v1, Lo/Details;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/Details;->zzdjw:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method public static extraCallback()Lo/Details;
    .locals 1

    sget-object v0, Lo/Details;->zzdjx:Lo/Details;

    return-object v0
.end method

.method static synthetic onMessageChannelReady()Lo/Details;
    .locals 1

    sget-object v0, Lo/Details;->zzdjx:Lo/Details;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/DraftDataJsonAdapter;
    .locals 1

    iget v0, p0, Lo/Details;->zzdju:I

    invoke-static {v0}, Lo/DraftDataJsonAdapter;->ICustomTabsCallback(I)Lo/DraftDataJsonAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/DraftDataJsonAdapter;->onPostMessage:Lo/DraftDataJsonAdapter;

    :cond_0
    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/DetailXJsonAdapter;->onPostMessage:[I

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
    sget-object p1, Lo/Details;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/Details;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/Details;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/Details;->zzdjx:Lo/Details;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/Details;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/Details;->zzdjx:Lo/Details;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdju"

    aput-object v0, p1, p2

    const-string p2, "zzdjv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjw"

    aput-object p3, p1, p2

    sget-object p2, Lo/Details;->zzdjx:Lo/Details;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u000b\u000c\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lo/Details;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/Details$extraCallback;

    invoke-direct {p1, p2}, Lo/Details$extraCallback;-><init>(Lo/DetailXJsonAdapter;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/Details;

    invoke-direct {p1}, Lo/Details;-><init>()V

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

.method public final onNavigationEvent()Lo/EmiCard;
    .locals 1

    iget v0, p0, Lo/Details;->zzdjv:I

    invoke-static {v0}, Lo/EmiCard;->onPostMessage(I)Lo/EmiCard;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/EmiCard;->onPostMessage:Lo/EmiCard;

    :cond_0
    return-object v0
.end method

.method public final onPostMessage()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/Details;->zzdjw:Lo/LoanStatusResponse$Input;

    return-object v0
.end method
