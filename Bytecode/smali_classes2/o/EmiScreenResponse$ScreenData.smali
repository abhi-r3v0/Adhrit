.class public final Lo/EmiScreenResponse$ScreenData;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$ScreenData$onMessageChannelReady;,
        Lo/EmiScreenResponse$ScreenData$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$ScreenData;",
        "Lo/EmiScreenResponse$ScreenData$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$ScreenData;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlt:Lo/EmiScreenResponse$ScreenData;


# instance fields
.field private zzdlq:I

.field private zzdlr:I

.field private zzdls:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_MandateDetailsJsonAdapter<",
            "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$ScreenData;

    invoke-direct {v0}, Lo/EmiScreenResponse$ScreenData;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    const-class v1, Lo/EmiScreenResponse$ScreenData;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    invoke-static {}, Lo/EmiScreenResponse$ScreenData;->postMessage()Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/EmiScreenResponse$ScreenData;->zzdls:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    return-void
.end method

.method public static extraCallback([B)Lo/EmiScreenResponse$ScreenData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    invoke-static {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onPostMessage(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;[B)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/EmiScreenResponse$ScreenData;

    return-object p0
.end method

.method static synthetic onPostMessage()Lo/EmiScreenResponse$ScreenData;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$ScreenData;->zzdlr:I

    return v0
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/EmiScreenResponse$ScreenData;->zzdls:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ScreenData;->zzdls:Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->size()I

    move-result v0

    return v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiScreenResponse$StashDetails$Detail;->extraCallback:[I

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
    sget-object p1, Lo/EmiScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$ScreenData;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$ScreenData;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdlq"

    aput-object v0, p1, p2

    const-string p2, "zzdlr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdls"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$ScreenData;->zzdlt:Lo/EmiScreenResponse$ScreenData;

    const-string p3, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$ScreenData;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$ScreenData$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$ScreenData$onMessageChannelReady;-><init>(Lo/EmiScreenResponse$StashDetails$Detail;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$ScreenData;

    invoke-direct {p1}, Lo/EmiScreenResponse$ScreenData;-><init>()V

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
