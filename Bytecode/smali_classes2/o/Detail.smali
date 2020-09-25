.class public final Lo/Detail;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Detail$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/Detail;",
        "Lo/Detail$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/Detail;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjo:Lo/Detail;


# instance fields
.field private zzdjl:Lo/Details;

.field private zzdjm:Lo/ConfirmDetails;

.field private zzdjn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Detail;

    invoke-direct {v0}, Lo/Detail;-><init>()V

    sput-object v0, Lo/Detail;->zzdjo:Lo/Detail;

    const-class v1, Lo/Detail;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic onMessageChannelReady()Lo/Detail;
    .locals 1

    sget-object v0, Lo/Detail;->zzdjo:Lo/Detail;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/Detail;
    .locals 1

    sget-object v0, Lo/Detail;->zzdjo:Lo/Detail;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ConfirmDetails;
    .locals 1

    iget-object v0, p0, Lo/Detail;->zzdjm:Lo/ConfirmDetails;

    if-nez v0, :cond_0

    invoke-static {}, Lo/ConfirmDetails;->onPostMessage()Lo/ConfirmDetails;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final extraCallback()Lo/Details;
    .locals 1

    iget-object v0, p0, Lo/Detail;->zzdjl:Lo/Details;

    if-nez v0, :cond_0

    invoke-static {}, Lo/Details;->extraCallback()Lo/Details;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/DetailX;->onNavigationEvent:[I

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
    sget-object p1, Lo/Detail;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/Detail;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/Detail;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/Detail;->zzdjo:Lo/Detail;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/Detail;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/Detail;->zzdjo:Lo/Detail;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdjl"

    aput-object v0, p1, p2

    const-string p2, "zzdjm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjn"

    aput-object p3, p1, p2

    sget-object p2, Lo/Detail;->zzdjo:Lo/Detail;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lo/Detail;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/Detail$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/Detail$onMessageChannelReady;-><init>(Lo/DetailX;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/Detail;

    invoke-direct {p1}, Lo/Detail;-><init>()V

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

.method public final onPostMessage()Lo/CommonPitchItemJsonAdapter;
    .locals 1

    iget v0, p0, Lo/Detail;->zzdjn:I

    invoke-static {v0}, Lo/CommonPitchItemJsonAdapter;->onNavigationEvent(I)Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/CommonPitchItemJsonAdapter;->ICustomTabsCallback:Lo/CommonPitchItemJsonAdapter;

    :cond_0
    return-object v0
.end method
