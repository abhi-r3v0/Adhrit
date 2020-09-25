.class final Lo/BreadcrumbHandler$extraCallback;
.super Lo/BreadcrumbHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BreadcrumbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BreadcrumbHandler<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient ICustomTabsCallback:I

.field private transient onNavigationEvent:I

.field private synthetic onPostMessage:Lo/BreadcrumbHandler;


# direct methods
.method constructor <init>(Lo/BreadcrumbHandler;II)V
    .locals 0

    .line 436
    iput-object p1, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    invoke-direct {p0}, Lo/BreadcrumbHandler;-><init>()V

    .line 437
    iput p2, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    .line 438
    iput p3, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 2

    .line 458
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    invoke-virtual {v0}, Lo/BreadcrumbHandler;->extraCallback()I

    move-result v0

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method final extraCallback()I
    .locals 2

    .line 453
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    invoke-virtual {v0}, Lo/BreadcrumbHandler;->extraCallback()I

    move-result v0

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 463
    iget v0, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(II)I

    .line 464
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/BreadcrumbHandler;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 432
    invoke-super {p0}, Lo/BreadcrumbHandler;->onMessageChannelReady()Lo/DisabledBreadcrumbSource;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 432
    invoke-super {p0}, Lo/BreadcrumbHandler;->asBinder()Lo/handleBreadcrumb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 432
    invoke-super {p0, p1}, Lo/BreadcrumbHandler;->onPostMessage(I)Lo/handleBreadcrumb;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent()[Ljava/lang/Object;
    .locals 1

    .line 448
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    invoke-virtual {v0}, Lo/BreadcrumbHandler;->onNavigationEvent()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(II)Lo/BreadcrumbHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 469
    iget v0, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    invoke-static {p1, p2, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    .line 470
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/BreadcrumbHandler;->onPostMessage(II)Lo/BreadcrumbHandler;

    move-result-object p1

    return-object p1
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 443
    iget v0, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 2

    .line 1469
    iget v0, p0, Lo/BreadcrumbHandler$extraCallback;->ICustomTabsCallback:I

    invoke-static {p1, p2, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    .line 1470
    iget-object v0, p0, Lo/BreadcrumbHandler$extraCallback;->onPostMessage:Lo/BreadcrumbHandler;

    iget v1, p0, Lo/BreadcrumbHandler$extraCallback;->onNavigationEvent:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/BreadcrumbHandler;->onPostMessage(II)Lo/BreadcrumbHandler;

    move-result-object p1

    return-object p1
.end method
