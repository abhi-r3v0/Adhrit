.class public final Lo/getTabContainer;
.super Lo/setCustomView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomView<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setCustomView;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 16
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

.method public final onPostMessage()Lo/isOverflowMenuShowPending;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/showOverflowMenu;

    iget-object v1, p0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lo/setCustomView;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
