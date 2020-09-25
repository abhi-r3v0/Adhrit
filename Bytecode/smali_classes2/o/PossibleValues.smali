.class final Lo/PossibleValues;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/StashDataResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/StashDataResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/PossibleValues;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/PossibleValues;->onMessageChannelReady:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/PossibleValues;->onPostMessage(Z)Lo/StashDataResponseJsonAdapter;

    move-result-object v0

    sput-object v0, Lo/PossibleValues;->extraCallback:Lo/StashDataResponseJsonAdapter;

    const/4 v0, 0x1

    invoke-static {v0}, Lo/PossibleValues;->onPostMessage(Z)Lo/StashDataResponseJsonAdapter;

    move-result-object v0

    sput-object v0, Lo/PossibleValues;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    new-instance v0, Lo/StashLandingResponseJsonAdapter;

    invoke-direct {v0}, Lo/StashLandingResponseJsonAdapter;-><init>()V

    sput-object v0, Lo/PossibleValues;->onPostMessage:Lo/StashDataResponseJsonAdapter;

    return-void
.end method

.method static ICustomTabsCallback(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->onNavigationEvent(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static ICustomTabsCallback(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->extraCallback(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static ICustomTabsCallback(ILjava/util/List;Lo/LoanStatusResponse_DataJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "*>;TUB;",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v3}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v3, p3, p4}, Lo/PossibleValues;->onPostMessage(IILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_6

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {p0, v0, p3, p4}, Lo/PossibleValues;->onPostMessage(IILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    :goto_3
    return-object p3
.end method

.method public static ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->newSession(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static ICustomTabsCallback$Stub(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->onTransact(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static ICustomTabsCallback$Stub(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->asBinder(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onTransact(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static asBinder(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static asBinder(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->warmup(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static asInterface(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static asInterface(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->extraCallback(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static extraCallback(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p0, p0, v0

    instance-of v2, p1, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    if-eqz v2, :cond_2

    check-cast p1, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lo/LoanStatusResponse$Input;

    if-eqz v3, :cond_1

    check-cast v2, Lo/LoanStatusResponse$Input;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanStatusResponse$Input;)I

    move-result v2

    goto :goto_1

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lo/LoanStatusResponse$Input;

    if-eqz v3, :cond_3

    check-cast v2, Lo/LoanStatusResponse$Input;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanStatusResponse$Input;)I

    move-result v2

    goto :goto_3

    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Ljava/lang/String;)I

    move-result v2

    :goto_3
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return p0
.end method

.method static extraCallback(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static extraCallback(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->extraCallback(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->warmup(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->warmup(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static extraCallback()Lo/StashDataResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lo/PossibleValues;->ICustomTabsCallback:Lo/StashDataResponseJsonAdapter;

    return-object v0
.end method

.method public static extraCallback(ILjava/util/List;Lo/UpcomingEmiData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/LoanStatusResponse$Input;",
            ">;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onPostMessage(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static extraCallback(Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
            "TFT;>;>(",
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback(Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(III)Z
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0x28

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    int-to-long p0, p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x1

    add-long/2addr v1, p0

    const-wide/16 p0, 0x2

    int-to-long v3, p2

    mul-long p0, p0, v3

    const-wide/16 v5, 0x3

    add-long/2addr p0, v5

    add-long/2addr v3, v5

    const-wide/16 v7, 0x9

    add-long/2addr v1, v7

    mul-long v3, v3, v5

    add-long/2addr p0, v3

    cmp-long p2, v1, p0

    if-gtz p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->asInterface(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->getInterfaceDescriptor(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onMessageChannelReady(ILjava/util/List;Lo/PoweredBy;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/LoanSummary$Details;",
            ">;",
            "Lo/PoweredBy;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LoanSummary$Details;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static onMessageChannelReady(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->extraCallback(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static onMessageChannelReady(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->ICustomTabsCallback(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static onMessageChannelReady()Lo/StashDataResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lo/PossibleValues;->onPostMessage:Lo/StashDataResponseJsonAdapter;

    return-object v0
.end method

.method public static onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->ICustomTabsCallback$Stub(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onNavigationEvent(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/LoanStatusResponse$Input;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int v0, v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse$Input;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanStatusResponse$Input;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static onNavigationEvent(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->onMessageChannelReady(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static onNavigationEvent(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->ICustomTabsCallback(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/UpcomingEmiData;",
            "Lo/PoweredBy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILjava/util/List;Lo/PoweredBy;)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onRelationshipValidationResult(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/PossibleValues;->onMessageChannelReady:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static onPostMessage(ILjava/lang/Object;Lo/PoweredBy;)I
    .locals 1

    instance-of v0, p1, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanStatusResponse_OkycSetupJsonAdapter;)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Lo/LoanSummary$Details;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result p0

    return p0
.end method

.method static onPostMessage(ILjava/util/List;Lo/PoweredBy;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/PoweredBy;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    if-eqz v3, :cond_1

    check-cast v2, Lo/LoanStatusResponse_OkycSetupJsonAdapter;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanStatusResponse_OkycSetupJsonAdapter;)I

    move-result v2

    goto :goto_1

    :cond_1
    check-cast v2, Lo/LoanSummary$Details;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method static onPostMessage(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->onPostMessage(Ljava/util/List;)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static onPostMessage(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->ICustomTabsCallback(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static onPostMessage(IILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method public static onPostMessage()Lo/StashDataResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lo/PossibleValues;->extraCallback:Lo/StashDataResponseJsonAdapter;

    return-object v0
.end method

.method private static onPostMessage(Z)Lo/StashDataResponseJsonAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lo/PossibleValues;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/StashDataResponseJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/UpcomingEmiData;",
            "Lo/PoweredBy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/util/List;Lo/PoweredBy;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onPostMessage(Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;",
            "TT;TT;J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3, p4, p0}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static onPostMessage(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static onRelationshipValidationResult(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lo/PossibleValues;->asInterface(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static onRelationshipValidationResult(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->extraCallback(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onTransact(ILjava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static onTransact(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->extraCallback(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->ICustomTabsService(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/UpcomingEmiData;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
