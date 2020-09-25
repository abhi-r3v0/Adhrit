.class public final Lo/EmiScreenResponse$StashDetails$onPostMessage;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$StashDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$StashDetails$onPostMessage;",
        "Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$StashDetails$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdlj:I

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-direct {v0}, Lo/EmiScreenResponse$StashDetails$onPostMessage;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    const-class v1, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdks:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    .locals 3

    sget-object v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    return-object v0
.end method

.method static synthetic onMessageChannelReady()Lo/EmiScreenResponse$StashDetails$onPostMessage;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/EmiScreenResponse$StashDetails$onPostMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/EmiScreenResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EmiScreenResponse;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdlv:I

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdks:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onPostMessage(I)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;Lo/EmiScreenResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onMessageChannelReady(Lo/EmiScreenResponse;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onPostMessage(Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V

    return-void
.end method

.method private final onPostMessage(I)V
    .locals 0

    iput p1, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdlw:I

    return-void
.end method

.method private final onPostMessage(Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EmiScreenResponse_ItemDetailsJsonAdapter;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdlj:I

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiScreenResponse$ItemDetails;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdlv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$StashDetails$onPostMessage;->zzdma:Lo/EmiScreenResponse$StashDetails$onPostMessage;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;-><init>(Lo/EmiScreenResponse$ItemDetails;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-direct {p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;-><init>()V

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
