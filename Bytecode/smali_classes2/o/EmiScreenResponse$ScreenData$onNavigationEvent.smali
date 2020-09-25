.class public final Lo/EmiScreenResponse$ScreenData$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$ScreenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
        "Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;


# instance fields
.field private zzdlj:I

.field private zzdlu:Lo/EmiScreenResponse$BottomBanner;

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-direct {v0}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    const-class v1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic onTransact()Lo/EmiScreenResponse$ScreenData$onNavigationEvent;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlu:Lo/EmiScreenResponse$BottomBanner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Lo/EmiScreenResponse_ItemDetailsJsonAdapter;
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlj:I

    invoke-static {v0}, Lo/EmiScreenResponse_ItemDetailsJsonAdapter;->onMessageChannelReady(I)Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/EmiScreenResponse_ItemDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    :cond_0
    return-object v0
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
    sget-object p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdlu"

    aput-object v0, p1, p2

    const-string p2, "zzdlv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlx:Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/EmiScreenResponse$StashDetails$Detail;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-direct {p1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;-><init>()V

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

.method public final onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlu:Lo/EmiScreenResponse$BottomBanner;

    if-nez v0, :cond_0

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->onPostMessage()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlw:I

    return v0
.end method

.method public final onPostMessage()Lo/EmiScreenResponse;
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->zzdlv:I

    invoke-static {v0}, Lo/EmiScreenResponse;->ICustomTabsCallback(I)Lo/EmiScreenResponse;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/EmiScreenResponse;->onMessageChannelReady:Lo/EmiScreenResponse;

    :cond_0
    return-object v0
.end method
