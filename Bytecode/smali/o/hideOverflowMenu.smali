.class public final Lo/hideOverflowMenu;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
        "Lo/writeToParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/writeToParcel;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Lo/writeToParcel;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActionMenuView;

    iget-object p1, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast p1, Lo/writeToParcel;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    iget-object p1, p1, Lo/writeToParcel;->onPostMessage:[I

    array-length v0, p1

    .line 15
    :goto_0
    new-instance p1, Lo/writeToParcel;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lo/writeToParcel;-><init>([F[I)V

    iput-object p1, p0, Lo/hideOverflowMenu;->onPostMessage:Lo/writeToParcel;

    return-void
.end method


# virtual methods
.method final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 6

    .line 2019
    iget-object v0, p0, Lo/hideOverflowMenu;->onPostMessage:Lo/writeToParcel;

    iget-object v1, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v1, Lo/writeToParcel;

    iget-object p1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/writeToParcel;

    .line 2029
    iget-object v2, v1, Lo/writeToParcel;->onPostMessage:[I

    array-length v2, v2

    iget-object v3, p1, Lo/writeToParcel;->onPostMessage:[I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 2034
    :goto_0
    iget-object v3, v1, Lo/writeToParcel;->onPostMessage:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2035
    iget-object v3, v0, Lo/writeToParcel;->ICustomTabsCallback:[F

    iget-object v4, v1, Lo/writeToParcel;->ICustomTabsCallback:[F

    aget v4, v4, v2

    iget-object v5, p1, Lo/writeToParcel;->ICustomTabsCallback:[F

    aget v5, v5, v2

    invoke-static {v4, v5, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v4

    aput v4, v3, v2

    .line 2036
    iget-object v3, v0, Lo/writeToParcel;->onPostMessage:[I

    iget-object v4, v1, Lo/writeToParcel;->onPostMessage:[I

    aget v4, v4, v2

    iget-object v5, p1, Lo/writeToParcel;->onPostMessage:[I

    aget v5, v5, v2

    invoke-static {p2, v4, v5}, Lo/extraCallback$onPostMessage;->onMessageChannelReady(FII)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2020
    :cond_0
    iget-object p1, p0, Lo/hideOverflowMenu;->onPostMessage:Lo/writeToParcel;

    return-object p1

    .line 2030
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lo/writeToParcel;->onPostMessage:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo/writeToParcel;->onPostMessage:[I

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
