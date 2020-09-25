.class public abstract Lo/isOverflowMenuShowPending;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isOverflowMenuShowPending$extraCallback;,
        Lo/isOverflowMenuShowPending$onPostMessage;,
        Lo/isOverflowMenuShowPending$onNavigationEvent;,
        Lo/isOverflowMenuShowPending$ICustomTabsCallback;,
        Lo/isOverflowMenuShowPending$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:F

.field private asBinder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private asInterface:F

.field public extraCallback:Z

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Lo/onMeasureExactFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onMeasureExactFormat<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending$ICustomTabsCallback<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/ActionMenuView<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lo/isOverflowMenuShowPending;->extraCallback:Z

    const/4 v2, 0x0

    .line 28
    iput v2, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lo/isOverflowMenuShowPending;->asBinder:Ljava/lang/Object;

    const/high16 v2, -0x40800000    # -1.0f

    .line 33
    iput v2, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    .line 34
    iput v2, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub:F

    .line 1161
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    new-instance p1, Lo/isOverflowMenuShowPending$onNavigationEvent;

    invoke-direct {p1, v0}, Lo/isOverflowMenuShowPending$onNavigationEvent;-><init>(B)V

    goto :goto_1

    .line 1164
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1165
    new-instance v0, Lo/isOverflowMenuShowPending$onPostMessage;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowPending$onPostMessage;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1167
    :cond_1
    new-instance v0, Lo/isOverflowMenuShowPending$extraCallback;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowPending$extraCallback;-><init>(Ljava/util/List;)V

    :goto_0
    move-object p1, v0

    .line 37
    :goto_1
    iput-object p1, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isOverflowMenuShowPending$onMessageChannelReady;

    invoke-interface {v1}, Lo/isOverflowMenuShowPending$onMessageChannelReady;->ICustomTabsCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/onMeasureExactFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onMeasureExactFormat<",
            "TA;>;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    return-void
.end method

.method public final ICustomTabsCallback$Stub()F
    .locals 1

    .line 141
    iget v0, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    return v0
.end method

.method public asBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->onMessageChannelReady()F

    move-result v0

    .line 129
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v1, v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onNavigationEvent(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->asBinder:Ljava/lang/Object;

    return-object v0

    .line 6074
    :cond_0
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 6075
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v1}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onPostMessage()Lo/ActionMenuView;

    move-result-object v1

    .line 6076
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 134
    invoke-virtual {p0, v1, v0}, Lo/isOverflowMenuShowPending;->extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lo/isOverflowMenuShowPending;->asBinder:Ljava/lang/Object;

    return-object v0
.end method

.method extraCallback()F
    .locals 2

    .line 121
    iget v0, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->ICustomTabsCallback()F

    move-result v0

    iput v0, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub:F

    .line 124
    :cond_0
    iget v0, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub:F

    return v0
.end method

.method abstract extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionMenuView<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method protected final onMessageChannelReady()F
    .locals 2

    .line 5074
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 5075
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    .line 5076
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 5087
    iget-object v1, v0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    iget-object v0, v0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->onNavigationEvent()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public onMessageChannelReady(F)V
    .locals 3

    .line 49
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2113
    :cond_0
    iget v0, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2114
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onNavigationEvent()F

    move-result v0

    iput v0, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    .line 2116
    :cond_1
    iget v0, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    cmpl-float p1, v0, v1

    if-nez p1, :cond_2

    .line 3114
    iget-object p1, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {p1}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onNavigationEvent()F

    move-result p1

    iput p1, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    .line 3116
    :cond_2
    iget p1, p0, Lo/isOverflowMenuShowPending;->asInterface:F

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->extraCallback()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 55
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->extraCallback()F

    move-result p1

    .line 58
    :cond_4
    :goto_0
    iget v0, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    return-void

    .line 61
    :cond_5
    iput p1, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    .line 62
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->ICustomTabsCallback(F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 63
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback()V

    :cond_6
    return-void
.end method

.method final onNavigationEvent()F
    .locals 3

    .line 85
    iget-boolean v0, p0, Lo/isOverflowMenuShowPending;->extraCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4074
    :cond_0
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 4075
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    .line 4076
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 4087
    iget-object v2, v0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return v1

    .line 93
    :cond_2
    iget v1, p0, Lo/isOverflowMenuShowPending;->ICustomTabsCallback:F

    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v2

    sub-float/2addr v1, v2

    .line 94
    invoke-virtual {v0}, Lo/ActionMenuView;->onPostMessage()F

    move-result v2

    invoke-virtual {v0}, Lo/ActionMenuView;->extraCallback()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method protected final onPostMessage()Lo/ActionMenuView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ActionMenuView<",
            "TK;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 75
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onPostMessage:Lo/isOverflowMenuShowPending$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isOverflowMenuShowPending$ICustomTabsCallback;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    .line 76
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-object v0
.end method
