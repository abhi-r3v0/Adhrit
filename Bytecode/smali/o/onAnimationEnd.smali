.class public final Lo/onAnimationEnd;
.super Lo/isOverflowMenuShowPending;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isOverflowMenuShowPending<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onMeasureExactFormat<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onMeasureExactFormat<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isOverflowMenuShowPending;-><init>(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0, p1}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    .line 22
    iput-object p2, p0, Lo/onAnimationEnd;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 38
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final asBinder()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v0}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final extraCallback()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method final extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionMenuView<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(F)V
    .locals 0

    .line 26
    iput p1, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    return-void
.end method
