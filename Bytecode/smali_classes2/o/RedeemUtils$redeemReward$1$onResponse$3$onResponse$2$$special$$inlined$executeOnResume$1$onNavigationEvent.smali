.class public final Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$ICustomTabsCallback;,
        Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;",
        "Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {v0}, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;-><init>()V

    sput-object v0, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    const-class v1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic extraCallback()Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;
    .locals 1

    sget-object v0, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lo/RedeemUtils$redeemReward$1$onResponse$4$$special$$inlined$executeOnResume$1;->extraCallback:[I

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
    sget-object p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    return-object p1

    :pswitch_4
    sget-object p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->zzakg:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    const-string p3, "\u0001\u0000"

    invoke-static {p1, p3, p2}, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/RedeemUtils$redeemReward$1$onResponse$4$$special$$inlined$executeOnResume$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {p1}, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent;-><init>()V

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
