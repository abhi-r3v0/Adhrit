.class public final Lo/EmiScreenResponse$Custom;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$Custom$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$Custom;",
        "Lo/EmiScreenResponse$Custom$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$Custom;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlk:Lo/EmiScreenResponse$Custom;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdkt:Lo/LoanStatusResponse$Input;

.field private zzdlj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$Custom;

    invoke-direct {v0}, Lo/EmiScreenResponse$Custom;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

    const-class v1, Lo/EmiScreenResponse$Custom;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponse$Custom;->zzdks:Ljava/lang/String;

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/EmiScreenResponse$Custom;->zzdkt:Lo/LoanStatusResponse$Input;

    return-void
.end method

.method public static onNavigationEvent()Lo/EmiScreenResponse$Custom;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

    return-object v0
.end method

.method static synthetic onPostMessage()Lo/EmiScreenResponse$Custom;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$Custom;->zzdkt:Lo/LoanStatusResponse$Input;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$Custom;->zzdks:Ljava/lang/String;

    return-object v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiScreenResponse$CardData;->onNavigationEvent:[I

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
    sget-object p1, Lo/EmiScreenResponse$Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$Custom;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$Custom;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

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

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$Custom;->zzdlk:Lo/EmiScreenResponse$Custom;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$Custom;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$Custom$extraCallback;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$Custom$extraCallback;-><init>(Lo/EmiScreenResponse$CardData;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$Custom;

    invoke-direct {p1}, Lo/EmiScreenResponse$Custom;-><init>()V

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
