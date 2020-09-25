.class abstract Lo/Onboarding$2;
.super Lo/handleBreadcrumb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/handleBreadcrumb<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:I

.field private final onNavigationEvent:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/handleBreadcrumb;-><init>()V

    .line 62
    invoke-static {p2, p1}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 63
    iput p1, p0, Lo/Onboarding$2;->onNavigationEvent:I

    .line 64
    iput p2, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .line 69
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    iget v1, p0, Lo/Onboarding$2;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 87
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lo/Onboarding$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    invoke-virtual {p0, v0}, Lo/Onboarding$2;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lo/Onboarding$2;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    invoke-virtual {p0, v0}, Lo/Onboarding$2;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 100
    iget v0, p0, Lo/Onboarding$2;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
