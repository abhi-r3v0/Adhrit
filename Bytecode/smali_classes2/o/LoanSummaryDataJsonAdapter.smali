.class final Lo/LoanSummaryDataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PoweredBy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/PoweredBy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/LoanSummary$Details;


# direct methods
.method private constructor <init>(Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanSummary$Details;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;",
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;",
            "Lo/LoanSummary$Details;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {p2, p3}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onPostMessage(Lo/LoanSummary$Details;)Z

    move-result p1

    iput-boolean p1, p0, Lo/LoanSummaryDataJsonAdapter;->onNavigationEvent:Z

    iput-object p2, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    iput-object p3, p0, Lo/LoanSummaryDataJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    return-void
.end method

.method static extraCallback(Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanSummary$Details;)Lo/LoanSummaryDataJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;",
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;",
            "Lo/LoanSummary$Details;",
            ")",
            "Lo/LoanSummaryDataJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/LoanSummaryDataJsonAdapter;

    invoke-direct {v0, p0, p1, p2}, Lo/LoanSummaryDataJsonAdapter;-><init>(Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanSummary$Details;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    invoke-interface {v0}, Lo/LoanSummary$Details;->requestPostMessageChannel()Lo/LoanSummaryData;

    move-result-object v0

    invoke-interface {v0}, Lo/LoanSummaryData;->extraCallback()Lo/LoanSummary$Details;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/PossibleValues;->onPostMessage(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo/LoanSummaryDataJsonAdapter;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/PossibleValues;->extraCallback(Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;[BIILo/LoanStatusResponse$ErrorObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lo/LoanStatusResponse$ErrorObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object v0, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/StashDataResponse$ScreenData;->ICustomTabsCallback()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    iput-object v0, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    :cond_0
    move-object p1, v0

    :goto_0
    if-ge p3, p4, :cond_8

    invoke-static {p2, p3, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v0, p5, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    const/16 p3, 0xb

    const/4 v1, 0x2

    if-eq v0, p3, :cond_2

    and-int/lit8 p3, v0, 0x7

    if-ne p3, v1, :cond_1

    move-object v1, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage(I[BIILo/StashDataResponse$ScreenData;Lo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, p2, v2, p4, p5}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback(I[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v2, p4, :cond_6

    invoke-static {p2, v2, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v3, p5, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, v1, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, v1, :cond_5

    invoke-static {p2, v2, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-object v0, p5, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v0, Lo/LoanStatusResponse$Input;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget p3, p5, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    invoke-static {v3, p2, v2, p4, p5}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback(I[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v1

    invoke-virtual {p1, p3, v0}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    :cond_7
    move p3, v2

    goto :goto_0

    :cond_8
    if-ne p3, p4, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onRelationshipValidationResult()Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/StashDataResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lo/LoanSummaryDataJsonAdapter;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v1, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback$Stub()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v1, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lo/LoanSummaryDataJsonAdapter;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p2}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lo/LoanSummaryDataJsonAdapter;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v1, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;)V

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/Pitch;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/Pitch;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    iget-object v1, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v3

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsCallback()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1, v2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lo/Pitch;->onMessageChannelReady()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lo/LoanSummaryDataJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onPostMessage(Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanSummary$Details;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2, v4, p3, v3}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->ICustomTabsCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, p2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/Pitch;)Z

    move-result v4

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lo/Pitch;->onNavigationEvent()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :cond_5
    :goto_0
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsCallback()I

    move-result v8

    if-eq v8, v5, :cond_9

    invoke-interface {p2}, Lo/Pitch;->onMessageChannelReady()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lo/Pitch;->newSession()I

    move-result v4

    iget-object v6, p0, Lo/LoanSummaryDataJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    invoke-virtual {v1, p3, v6, v4}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onPostMessage(Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanSummary$Details;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v1, p2, v6, p3, v3}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->ICustomTabsCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object v7

    goto :goto_0

    :cond_8
    invoke-interface {p2}, Lo/Pitch;->onNavigationEvent()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    invoke-interface {p2}, Lo/Pitch;->onMessageChannelReady()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {v1, v7, v6, p3, v3}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse$Input;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILo/LoanStatusResponse$Input;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v2}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->extraCallback()Lo/TotalPayable;

    move-result-object v3

    sget-object v4, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lo/LoanStatusResponse_InputJsonAdapter;

    invoke-interface {v2}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->ICustomTabsCallback()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lo/LoanStatusResponse_InputJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback()Lo/LoanStatusResponse_InputDataJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lo/UpcomingEmiData;->onPostMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lo/LoanSummaryDataJsonAdapter;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Lo/UpcomingEmiData;)V

    return-void
.end method
