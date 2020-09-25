.class public final Lo/LoanStatusResponse$StashSummaryData;
.super Ljava/lang/Object;

# interfaces
.implements Lo/UpcomingEmiData;


# instance fields
.field private final onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbav;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbav;

    iput-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent:Lo/LoanStatusResponse$StashSummaryData;

    return-void
.end method

.method public static ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzbav;)Lo/LoanStatusResponse$StashSummaryData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent:Lo/LoanStatusResponse$StashSummaryData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent:Lo/LoanStatusResponse$StashSummaryData;

    return-object p0

    :cond_0
    new-instance v0, Lo/LoanStatusResponse$StashSummaryData;

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$StashSummaryData;-><init>(Lcom/google/android/gms/internal/ads/zzbav;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IF)V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(II)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IJ)V

    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LoanStatusResponse$Input;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILo/LoanStatusResponse$Input;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;Lo/PoweredBy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/PoweredBy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILo/LoanStatusResponse$Input;)V

    return-void
.end method

.method public final ICustomTabsCallback(ILo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    iget-object v1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lo/LoanStatusResponse_SummaryJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    iget-object v1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lo/LoanStatusResponse_SummaryJsonAdapter;->extraCallback(Lcom/google/android/gms/internal/ads/zzbav;Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ICustomTabsService(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final asBinder(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(II)V

    return-void
.end method

.method public final asBinder(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final asInterface(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final extraCallback(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    return-void
.end method

.method public final extraCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(II)V

    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public final extraCallback(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final extraCallback(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(IZ)V

    return-void
.end method

.method public final getInterfaceDescriptor(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final newSession(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(II)V

    return-void
.end method

.method public final onMessageChannelReady(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IJ)V

    return-void
.end method

.method public final onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast p2, Lo/LoanSummary$Details;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(ILo/LoanSummary$Details;Lo/PoweredBy;)V

    return-void
.end method

.method public final onMessageChannelReady(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    instance-of v0, p2, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lo/LoanStatusResponse_PollingDataJsonAdapter;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast v2, Lo/LoanStatusResponse$Input;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILo/LoanStatusResponse$Input;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast p2, Lo/LoanSummary$Details;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent:Lo/LoanStatusResponse$StashSummaryData;

    invoke-interface {p3, p2, v1}, Lo/PoweredBy;->onPostMessage(Ljava/lang/Object;Lo/UpcomingEmiData;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILjava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/util/List;Lo/PoweredBy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/PoweredBy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lo/LoanStatusResponse$StashSummaryData;->onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onPostMessage()I
    .locals 1

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->asInterface:I

    return v0
.end method

.method public final onPostMessage(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(ID)V

    return-void
.end method

.method public final onPostMessage(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onPostMessage(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(IJ)V

    return-void
.end method

.method public final onPostMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lo/LoanStatusResponse$Input;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast p2, Lo/LoanStatusResponse$Input;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    check-cast p2, Lo/LoanSummary$Details;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(ILo/LoanSummary$Details;)V

    return-void
.end method

.method public final onPostMessage(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onRelationshipValidationResult(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onTransact(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->warmup(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final warmup(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Lo/LoanStatusResponse$StashSummaryData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
