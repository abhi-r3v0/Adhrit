.class public final Lo/EmiScreenResponse$ChildCard;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "Lo/EmiScreenResponse$ChildCard;",
        "Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lo/LoanSummary_InfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanSummary_InfoJsonAdapter<",
            "Lo/EmiScreenResponse$ChildCard;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlp:Lo/EmiScreenResponse$ChildCard;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdll:Ljava/lang/String;

.field private zzdlm:I

.field private zzdln:Z

.field private zzdlo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EmiScreenResponse$ChildCard;

    invoke-direct {v0}, Lo/EmiScreenResponse$ChildCard;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    const-class v1, Lo/EmiScreenResponse$ChildCard;

    invoke-static {v1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdll:Ljava/lang/String;

    iput-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdks:Ljava/lang/String;

    iput-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdlo:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$ChildCard;->zzdll:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final ICustomTabsCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/EmiScreenResponse$ChildCard;->zzdln:Z

    return-void
.end method

.method public static asBinder()Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 3

    sget-object v0, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    check-cast v0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    return-object v0
.end method

.method private final extraCallback(I)V
    .locals 0

    iput p1, p0, Lo/EmiScreenResponse$ChildCard;->zzdlm:I

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$ChildCard;->zzdks:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic onMessageChannelReady(Lo/EmiScreenResponse$ChildCard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$ChildCard;->extraCallback(I)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$ChildCard;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/EmiScreenResponse$ChildCard;->zzdlo:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$ChildCard;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/EmiScreenResponse$ChildCard;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$ChildCard;->ICustomTabsCallback(Z)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/EmiScreenResponse$ChildCard;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onTransact()Lo/EmiScreenResponse$ChildCard;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdlo:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    iget v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdlm:I

    return v0
.end method

.method protected final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/EmiScreenResponse$Data;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/EmiScreenResponse$ChildCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_1

    const-class p2, Lo/EmiScreenResponse$ChildCard;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/EmiScreenResponse$ChildCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;

    sget-object p3, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    invoke-direct {p1, p3}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    sput-object p1, Lo/EmiScreenResponse$ChildCard;->zzakh:Lo/LoanSummary_InfoJsonAdapter;

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
    sget-object p1, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdll"

    aput-object v0, p1, p2

    const-string p2, "zzdks"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdln"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzdlo"

    aput-object p3, p1, p2

    sget-object p2, Lo/EmiScreenResponse$ChildCard;->zzdlp:Lo/EmiScreenResponse$ChildCard;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    invoke-static {p2, p3, p1}, Lo/EmiScreenResponse$ChildCard;->ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;-><init>(Lo/EmiScreenResponse$Data;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/EmiScreenResponse$ChildCard;

    invoke-direct {p1}, Lo/EmiScreenResponse$ChildCard;-><init>()V

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

.method public final onMessageChannelReady()Z
    .locals 1

    iget-boolean v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdln:Z

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdll:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard;->zzdks:Ljava/lang/String;

    return-object v0
.end method