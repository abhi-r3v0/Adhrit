.class final Lo/isOverflowMenuShowPending$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isOverflowMenuShowPending$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isOverflowMenuShowPending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/isOverflowMenuShowPending$ICustomTabsCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private extraCallback:F

.field private final onMessageChannelReady:Lo/ActionMenuView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/ActionMenuView<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 221
    iput v0, p0, Lo/isOverflowMenuShowPending$onPostMessage;->extraCallback:F

    const/4 v0, 0x0

    .line 224
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActionMenuView;

    iput-object p1, p0, Lo/isOverflowMenuShowPending$onPostMessage;->onMessageChannelReady:Lo/ActionMenuView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()F
    .locals 1

    .line 249
    iget-object v0, p0, Lo/isOverflowMenuShowPending$onPostMessage;->onMessageChannelReady:Lo/ActionMenuView;

    invoke-virtual {v0}, Lo/ActionMenuView;->onPostMessage()F

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(F)Z
    .locals 2

    .line 234
    iget-object p1, p0, Lo/isOverflowMenuShowPending$onPostMessage;->onMessageChannelReady:Lo/ActionMenuView;

    .line 1087
    iget-object p1, p1, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()F
    .locals 1

    .line 244
    iget-object v0, p0, Lo/isOverflowMenuShowPending$onPostMessage;->onMessageChannelReady:Lo/ActionMenuView;

    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(F)Z
    .locals 1

    .line 254
    iget v0, p0, Lo/isOverflowMenuShowPending$onPostMessage;->extraCallback:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_0
    iput p1, p0, Lo/isOverflowMenuShowPending$onPostMessage;->extraCallback:F

    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()Lo/ActionMenuView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lo/isOverflowMenuShowPending$onPostMessage;->onMessageChannelReady:Lo/ActionMenuView;

    return-object v0
.end method
