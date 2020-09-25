.class public final Lo/getMeasuredHeightWithMargins;
.super Lo/setCustomView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomView<",
        "Lo/setStackedBackground;",
        "Lo/setStackedBackground;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Lo/setStackedBackground;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/setCustomView;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback()Ljava/util/List;
    .locals 1

    .line 9
    invoke-super {p0}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()Z
    .locals 1

    .line 9
    invoke-super {p0}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public final synthetic onPostMessage()Lo/isOverflowMenuShowPending;
    .locals 2

    .line 1016
    new-instance v0, Lo/AbsActionBarView$VisibilityAnimListener;

    iget-object v1, p0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/AbsActionBarView$VisibilityAnimListener;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lo/setCustomView;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
