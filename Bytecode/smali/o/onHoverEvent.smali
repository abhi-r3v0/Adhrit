.class public final Lo/onHoverEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setForceShowIcon;
.implements Lo/setContentHeight;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/setTitleOptional;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Landroid/graphics/Path;

.field private final onNavigationEvent:Landroid/graphics/Path;

.field private final onPostMessage:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lo/setTitleOptional;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/onHoverEvent;->onPostMessage:Landroid/graphics/Path;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/onHoverEvent;->onNavigationEvent:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1050
    iget-object v0, p1, Lo/setTitleOptional;->onNavigationEvent:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lo/onHoverEvent;->extraCallback:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lo/onHoverEvent;->asBinder:Lo/setTitleOptional;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Merge paths are not supported pre-KitKat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Landroid/graphics/Path$Op;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lo/onHoverEvent;->onNavigationEvent:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 91
    iget-object v0, p0, Lo/onHoverEvent;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 93
    iget-object v0, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_3

    .line 94
    iget-object v1, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setForceShowIcon;

    .line 96
    instance-of v2, v1, Lo/setCheckable;

    if-eqz v2, :cond_1

    .line 97
    check-cast v1, Lo/setCheckable;

    invoke-virtual {v1}, Lo/setCheckable;->extraCallback()Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setForceShowIcon;

    invoke-interface {v4}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v4

    .line 2132
    iget-object v5, v1, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz v5, :cond_0

    .line 2133
    iget-object v5, v1, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    invoke-virtual {v5}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v5

    goto :goto_2

    .line 2135
    :cond_0
    iget-object v5, v1, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 2136
    iget-object v5, v1, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    .line 100
    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 101
    iget-object v5, p0, Lo/onHoverEvent;->onNavigationEvent:Landroid/graphics/Path;

    invoke-virtual {v5, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 104
    :cond_1
    iget-object v2, p0, Lo/onHoverEvent;->onNavigationEvent:Landroid/graphics/Path;

    invoke-interface {v1}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setForceShowIcon;

    .line 109
    instance-of v2, v0, Lo/setCheckable;

    if-eqz v2, :cond_5

    .line 110
    check-cast v0, Lo/setCheckable;

    invoke-virtual {v0}, Lo/setCheckable;->extraCallback()Ljava/util/List;

    move-result-object v2

    .line 111
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setForceShowIcon;

    invoke-interface {v3}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v3

    .line 3132
    iget-object v4, v0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz v4, :cond_4

    .line 3133
    iget-object v4, v0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    invoke-virtual {v4}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v4

    goto :goto_4

    .line 3135
    :cond_4
    iget-object v4, v0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 3136
    iget-object v4, v0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    .line 113
    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 114
    iget-object v4, p0, Lo/onHoverEvent;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 117
    :cond_5
    iget-object v1, p0, Lo/onHoverEvent;->onPostMessage:Landroid/graphics/Path;

    invoke-interface {v0}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 120
    :cond_6
    iget-object v0, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    iget-object v1, p0, Lo/onHoverEvent;->onPostMessage:Landroid/graphics/Path;

    iget-object v2, p0, Lo/onHoverEvent;->onNavigationEvent:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setForceShowIcon;

    invoke-interface {v1, p1, p2}, Lo/setForceShowIcon;->extraCallback(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 3

    .line 51
    iget-object v0, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 53
    iget-object v0, p0, Lo/onHoverEvent;->asBinder:Lo/setTitleOptional;

    .line 1058
    iget-boolean v0, v0, Lo/setTitleOptional;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lo/onHoverEvent$3;->onPostMessage:[I

    iget-object v1, p0, Lo/onHoverEvent;->asBinder:Lo/setTitleOptional;

    .line 2054
    iget-object v1, v1, Lo/setTitleOptional;->extraCallback:Lo/setTitleOptional$extraCallback;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lo/onHoverEvent;->ICustomTabsCallback(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 68
    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lo/onHoverEvent;->ICustomTabsCallback(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 65
    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lo/onHoverEvent;->ICustomTabsCallback(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 62
    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lo/onHoverEvent;->ICustomTabsCallback(Landroid/graphics/Path$Op;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 2083
    :goto_0
    iget-object v1, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2084
    iget-object v1, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    iget-object v2, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setForceShowIcon;

    invoke-interface {v2}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/onHoverEvent;->onMessageChannelReady:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/onHoverEvent;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 37
    instance-of v1, v0, Lo/setForceShowIcon;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lo/onHoverEvent;->ICustomTabsCallback:Ljava/util/List;

    check-cast v0, Lo/setForceShowIcon;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
