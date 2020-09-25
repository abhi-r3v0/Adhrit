.class public final Lo/StashSummaryDataJsonAdapter;
.super Ljava/util/AbstractList;

# interfaces
.implements Lo/LoanStatusResponse_PollingDataJsonAdapter;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/LoanStatusResponse_PollingDataJsonAdapter;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;


# direct methods
.method public constructor <init>(Lo/LoanStatusResponse_PollingDataJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/StashSummaryDataJsonAdapter;)Lo/LoanStatusResponse_PollingDataJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Lo/LoanStatusResponse_PollingDataJsonAdapter;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/StashLandingItemJsonAdapter;

    invoke-direct {v0, p0}, Lo/StashLandingItemJsonAdapter;-><init>(Lo/StashSummaryDataJsonAdapter;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/StashSummaryData;

    invoke-direct {v0, p0, p1}, Lo/StashSummaryData;-><init>(Lo/StashSummaryDataJsonAdapter;I)V

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/LoanStatusResponse$Input;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lo/StashSummaryDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_PollingDataJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->size()I

    move-result v0

    return v0
.end method
