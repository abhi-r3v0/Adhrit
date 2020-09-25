.class public Lo/LoanStatusResponse_OkycSetupJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;


# instance fields
.field private volatile ICustomTabsCallback:Lo/LoanSummary$Details;

.field private onMessageChannelReady:Lo/LoanStatusResponse$Input;

.field private volatile onPostMessage:Lo/LoanStatusResponse$Input;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    move-result-object v0

    sput-object v0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->extraCallback:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    sget-object p1, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object p1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;
    .locals 2

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    iput-object v1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    iput-object p1, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    iget-object v1, p1, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {p1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse$Input;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lo/LoanSummary$Details;->updateVisuals()Lo/LoanSummary$Details;

    move-result-object v1

    invoke-direct {p1, v1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lo/LoanSummary$Details;->updateVisuals()Lo/LoanSummary$Details;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    invoke-interface {v0}, Lo/LoanSummary$Details;->warmup()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/LoanStatusResponse$Input;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    if-nez v0, :cond_2

    sget-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    :goto_0
    iput-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$Details;

    invoke-interface {v0}, Lo/LoanSummary$Details;->getInterfaceDescriptor()Lo/LoanStatusResponse$Input;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage:Lo/LoanStatusResponse$Input;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
