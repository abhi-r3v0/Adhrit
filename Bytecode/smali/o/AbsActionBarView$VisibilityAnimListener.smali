.class public final Lo/AbsActionBarView$VisibilityAnimListener;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
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

    .line 10
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 0

    .line 1014
    iget-object p1, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast p1, Lo/setStackedBackground;

    return-object p1
.end method
