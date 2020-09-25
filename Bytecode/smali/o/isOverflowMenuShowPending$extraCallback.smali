.class final Lo/isOverflowMenuShowPending$extraCallback;
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
    name = "extraCallback"
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
.field private ICustomTabsCallback:Lo/ActionMenuView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/ActionMenuView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/ActionMenuView<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:F


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

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onMessageChannelReady:Lo/ActionMenuView;

    const/high16 v0, -0x40800000    # -1.0f

    .line 267
    iput v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onPostMessage:F

    .line 270
    iput-object p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    const/4 p1, 0x0

    .line 271
    invoke-direct {p0, p1}, Lo/isOverflowMenuShowPending$extraCallback;->onMessageChannelReady(F)Lo/ActionMenuView;

    move-result-object p1

    iput-object p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    return-void
.end method

.method private onMessageChannelReady(F)Lo/ActionMenuView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    .line 290
    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 294
    iget-object v3, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ActionMenuView;

    .line 295
    iget-object v4, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    if-eq v4, v3, :cond_2

    .line 2091
    invoke-virtual {v3}, Lo/ActionMenuView;->extraCallback()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lo/ActionMenuView;->onPostMessage()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 302
    :cond_3
    iget-object p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActionMenuView;

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()F
    .locals 2

    .line 318
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    invoke-virtual {v0}, Lo/ActionMenuView;->onPostMessage()F

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(F)Z
    .locals 4

    .line 281
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    .line 1091
    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lo/ActionMenuView;->onPostMessage()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 282
    iget-object p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    .line 2087
    iget-object p1, p1, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 284
    :cond_3
    invoke-direct {p0, p1}, Lo/isOverflowMenuShowPending$extraCallback;->onMessageChannelReady(F)Lo/ActionMenuView;

    move-result-object p1

    iput-object p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    return v3
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()F
    .locals 2

    .line 313
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(F)Z
    .locals 2

    .line 323
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onMessageChannelReady:Lo/ActionMenuView;

    iget-object v1, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onPostMessage:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 327
    :cond_0
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    iput-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->onMessageChannelReady:Lo/ActionMenuView;

    .line 328
    iput p1, p0, Lo/isOverflowMenuShowPending$extraCallback;->onPostMessage:F

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

    .line 308
    iget-object v0, p0, Lo/isOverflowMenuShowPending$extraCallback;->ICustomTabsCallback:Lo/ActionMenuView;

    return-object v0
.end method
