.class final Lo/bt;
.super Lo/br;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/br<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient extraCallback:I

.field private final synthetic onNavigationEvent:Lo/br;


# direct methods
.method constructor <init>(Lo/br;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bt;->onNavigationEvent:Lo/br;

    invoke-direct {p0}, Lo/br;-><init>()V

    .line 2
    iput p2, p0, Lo/bt;->ICustomTabsCallback:I

    .line 3
    iput p3, p0, Lo/bt;->extraCallback:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 2

    .line 7
    iget-object v0, p0, Lo/bt;->onNavigationEvent:Lo/br;

    invoke-virtual {v0}, Lo/bn;->ICustomTabsCallback()I

    move-result v0

    iget v1, p0, Lo/bt;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method final extraCallback()I
    .locals 2

    .line 8
    iget-object v0, p0, Lo/bt;->onNavigationEvent:Lo/br;

    invoke-virtual {v0}, Lo/bn;->ICustomTabsCallback()I

    move-result v0

    iget v1, p0, Lo/bt;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/bt;->extraCallback:I

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

    .line 9
    iget v0, p0, Lo/bt;->extraCallback:I

    invoke-static {p1, v0}, Lo/bZ;->onPostMessage(II)I

    .line 10
    iget-object v0, p0, Lo/bt;->onNavigationEvent:Lo/br;

    iget v1, p0, Lo/bt;->ICustomTabsCallback:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/br;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage(II)Lo/br;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lo/bt;->extraCallback:I

    invoke-static {p1, p2, v0}, Lo/bZ;->onPostMessage(III)V

    .line 12
    iget-object v0, p0, Lo/bt;->onNavigationEvent:Lo/br;

    iget v1, p0, Lo/bt;->ICustomTabsCallback:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/br;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lo/br;

    return-object p1
.end method

.method final onPostMessage()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/bt;->onNavigationEvent:Lo/br;

    invoke-virtual {v0}, Lo/bn;->onPostMessage()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lo/bt;->extraCallback:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/br;->onPostMessage(II)Lo/br;

    move-result-object p1

    return-object p1
.end method
