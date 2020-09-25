.class final Lo/LoanStatusResponse_BankDetailsJsonAdapter;
.super Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    invoke-virtual {p0, p1, v0}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V

    :cond_0
    return-object v0
.end method

.method final ICustomTabsCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Pitch;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final extraCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Pitch;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;TUB;",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;

    iget-object p1, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;->zzdtz:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    return-object p1
.end method

.method final extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpcomingEmiData;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onNavigationEvent(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback()V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;

    iput-object p2, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;->zzdtz:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    return-void
.end method

.method final onNavigationEvent(Lo/LoanStatusResponse$Input;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LoanStatusResponse$Input;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onPostMessage(Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanSummary$Details;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->ICustomTabsCallback(Lo/LoanSummary$Details;I)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage(Lo/LoanSummary$Details;)Z
    .locals 0

    instance-of p1, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;

    return p1
.end method
