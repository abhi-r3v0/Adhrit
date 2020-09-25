.class final Lo/LoanStatusResponse$SetupPitch;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Pitch;


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/LoanStatusResponse$ScreenData;


# direct methods
.method private constructor <init>(Lo/LoanStatusResponse$ScreenData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse$ScreenData;

    iput-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    iput-object p0, p1, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady:Lo/LoanStatusResponse$SetupPitch;

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1
.end method

.method private final extraCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    :try_start_0
    invoke-interface {p1}, Lo/PoweredBy;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lo/PoweredBy;->onPostMessage(Ljava/lang/Object;Lo/Pitch;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    invoke-interface {p1, v1}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    iget p2, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    throw p1
.end method

.method private final extraCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1
.end method

.method private final onMessageChannelReady(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    iget v1, v1, Lo/LoanStatusResponse$ScreenData;->extraCallback:I

    iget-object v2, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    iget v2, v2, Lo/LoanStatusResponse$ScreenData;->onPostMessage:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1, v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback(I)I

    move-result v0

    invoke-interface {p1}, Lo/PoweredBy;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    iget v3, v2, Lo/LoanStatusResponse$ScreenData;->extraCallback:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo/LoanStatusResponse$ScreenData;->extraCallback:I

    invoke-interface {p1, v1, p0, p2}, Lo/PoweredBy;->onPostMessage(Ljava/lang/Object;Lo/Pitch;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    invoke-interface {p1, v1}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    iget p2, p1, Lo/LoanStatusResponse$ScreenData;->extraCallback:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/LoanStatusResponse$ScreenData;->extraCallback:I

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1, v0}, Lo/LoanStatusResponse$ScreenData;->extraCallback(I)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbu;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onMessageChannelReady(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method private final onNavigationEvent(Lo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getStatus_message;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo/LoanStatusResponse$Summary;->extraCallback:[I

    invoke-virtual {p1}, Lo/getStatus_message;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->asInterface()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->newSession()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->mayLaunchUrl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->requestPostMessageChannel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->extraCommand()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->updateVisuals()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->asBinder()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->onRelationshipValidationResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->extraCallback()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback$Stub()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->postMessage()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback$Stub$Proxy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onNavigationEvent(Lo/LoanStatusResponse$ScreenData;)Lo/LoanStatusResponse$SetupPitch;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady:Lo/LoanStatusResponse$SetupPitch;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady:Lo/LoanStatusResponse$SetupPitch;

    return-object p0

    :cond_0
    new-instance v0, Lo/LoanStatusResponse$SetupPitch;

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$SetupPitch;-><init>(Lo/LoanStatusResponse$ScreenData;)V

    return-object v0
.end method

.method private final onNavigationEvent(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    :cond_0
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget p2, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->warmup()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1
.end method

.method private static onPostMessage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    if-eqz v0, :cond_0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    const/4 v0, 0x0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    :goto_0
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eqz v0, :cond_2

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final ICustomTabsCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    invoke-direct {p0, p1, p2}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/LoanStatusResponse$Input;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onTransact()Z

    move-result v0

    return v0
.end method

.method public final ICustomTabsService()Lo/LoanStatusResponse$Input;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->newSession()Lo/LoanStatusResponse$Input;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->getInterfaceDescriptor()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->getInterfaceDescriptor()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->getInterfaceDescriptor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->getInterfaceDescriptor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final asBinder()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asBinder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent(Ljava/util/List;Z)V

    return-void
.end method

.method public final asInterface()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asInterface(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->asInterface()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->asInterface()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final extraCallback()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCallback()F

    move-result v0

    return v0
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse$StashDetails;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse$StashDetails;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse$StashDetails;->onNavigationEvent(D)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse$StashDetails;->onNavigationEvent(D)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final extraCommand()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->updateVisuals()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInterfaceDescriptor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->warmup()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->warmup()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->warmup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->warmup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final mayLaunchUrl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public final newSession()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    return v0
.end method

.method public final newSession(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/List;Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1, v0}, Lo/LoanStatusResponse$ScreenData;->onMessageChannelReady(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent()D

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    invoke-direct {p0, p1, p2}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->extraCallback()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onPostMessage(F)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->extraCallback()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onPostMessage(F)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCallback()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCallback()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/PoweredBy<",
            "TT;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lo/LoanStatusResponse$SetupPitch;->onMessageChannelReady(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage(Ljava/util/Map;Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter<",
            "TK;TV;>;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v1

    iget-object v2, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v2, v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback(I)I

    move-result v1

    iget-object v2, p2, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onPostMessage:Ljava/lang/Object;

    iget-object v3, p2, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v5}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p2, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    iget-object v5, p2, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent(Lo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onMessageChannelReady:Lo/getStatus_message;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent(Lo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1, v1}, Lo/LoanStatusResponse$ScreenData;->extraCallback(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p2, v1}, Lo/LoanStatusResponse$ScreenData;->extraCallback(I)V

    throw p1
.end method

.method public final onRelationshipValidationResult()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub()I

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent(Ljava/util/List;Z)V

    return-void
.end method

.method public final onTransact()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->asInterface()I

    move-result v0

    return v0
.end method

.method public final onTransact(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse$InputData;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse$InputData;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onTransact()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse$InputData;->ICustomTabsCallback(Z)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onTransact()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse$InputData;->ICustomTabsCallback(Z)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onTransact()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onTransact()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final postMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->warmup()I

    move-result v0

    return v0
.end method

.method public final postMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->requestPostMessageChannel()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->requestPostMessageChannel()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->requestPostMessageChannel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->requestPostMessageChannel()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final requestPostMessageChannel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCommand()I

    move-result v0

    return v0
.end method

.method public final updateVisuals()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->getInterfaceDescriptor()I

    move-result v0

    return v0
.end method

.method public final updateVisuals(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lo/LoanStatusResponse$SetupPitch;->extraCallback(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->asBinder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    iget p1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->updateVisuals()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->updateVisuals()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {p1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result p1

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void

    :cond_4
    iget v0, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$SetupPitch;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v1}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->updateVisuals()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->ICustomTabsService$Stub()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->updateVisuals()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/LoanStatusResponse$SetupPitch;->onPostMessage:Lo/LoanStatusResponse$ScreenData;

    invoke-virtual {v0}, Lo/LoanStatusResponse$ScreenData;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:I

    return-void
.end method
