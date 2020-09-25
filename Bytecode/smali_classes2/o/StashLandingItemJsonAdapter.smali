.class final Lo/StashLandingItemJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/StashSummaryDataJsonAdapter;

.field private onNavigationEvent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/StashSummaryDataJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/StashLandingItemJsonAdapter;->extraCallback:Lo/StashSummaryDataJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lo/StashLandingItemJsonAdapter;->extraCallback:Lo/StashSummaryDataJsonAdapter;

    invoke-static {p1}, Lo/StashSummaryDataJsonAdapter;->onMessageChannelReady(Lo/StashSummaryDataJsonAdapter;)Lo/LoanStatusResponse_PollingDataJsonAdapter;

    move-result-object p1

    invoke-interface {p1}, Lo/LoanStatusResponse_PollingDataJsonAdapter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/StashLandingItemJsonAdapter;->onNavigationEvent:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lo/StashLandingItemJsonAdapter;->onNavigationEvent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/StashLandingItemJsonAdapter;->onNavigationEvent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
