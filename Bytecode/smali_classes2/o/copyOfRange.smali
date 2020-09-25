.class final Lo/copyOfRange;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/isCancelled;


# direct methods
.method constructor <init>(Lo/isCancelled;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/copyOfRange;->ICustomTabsCallback:Lo/isCancelled;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 3
    iget-object v0, p0, Lo/copyOfRange;->ICustomTabsCallback:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/copyOfRange;->ICustomTabsCallback:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->ICustomTabsCallback$Stub()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/copyOfRange;->ICustomTabsCallback:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->size()I

    move-result v0

    return v0
.end method
