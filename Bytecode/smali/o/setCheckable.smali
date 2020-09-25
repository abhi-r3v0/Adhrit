.class public final Lo/setCheckable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChecked;
.implements Lo/setForceShowIcon;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field final ICustomTabsCallback:Landroid/graphics/Matrix;

.field private final ICustomTabsCallback$Stub:Z

.field private final asBinder:Lo/createCheckedTextView;

.field private final asInterface:Landroid/graphics/RectF;

.field private extraCallback:Landroid/graphics/RectF;

.field private getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/graphics/Path;

.field onNavigationEvent:Lo/withFinalVisibility;

.field private onPostMessage:Landroid/graphics/Paint;

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Ljava/lang/String;ZLjava/util/List;Lo/onMeasure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCheckedTextView;",
            "Lo/setOverlayMode;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Lo/onMeasure;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/createViewByPrefix;

    invoke-direct {v0}, Lo/createViewByPrefix;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->onPostMessage:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->extraCallback:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->onMessageChannelReady:Landroid/graphics/Path;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->asInterface:Landroid/graphics/RectF;

    .line 74
    iput-object p3, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lo/setCheckable;->asBinder:Lo/createCheckedTextView;

    .line 76
    iput-boolean p4, p0, Lo/setCheckable;->ICustomTabsCallback$Stub:Z

    .line 77
    iput-object p5, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 3100
    new-instance p1, Lo/withFinalVisibility;

    invoke-direct {p1, p6}, Lo/withFinalVisibility;-><init>(Lo/onMeasure;)V

    .line 80
    iput-object p1, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    .line 81
    invoke-virtual {p1, p2}, Lo/withFinalVisibility;->onPostMessage(Lo/setOverlayMode;)V

    .line 82
    iget-object p1, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    invoke-virtual {p1, p0}, Lo/withFinalVisibility;->onMessageChannelReady(Lo/isOverflowMenuShowPending$onMessageChannelReady;)V

    .line 85
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 87
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setPadding;

    .line 88
    instance-of p4, p3, Lo/setContentHeight;

    if-eqz p4, :cond_1

    .line 89
    check-cast p3, Lo/setContentHeight;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 94
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setContentHeight;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Lo/setContentHeight;->onPostMessage(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/MediaBrowserCompat$MediaItem$Flags;)V
    .locals 7

    .line 1023
    iget-object v3, p3, Lo/MediaBrowserCompat$MediaItem$Flags;->onMessageChannelReady:Ljava/lang/String;

    .line 1031
    iget-boolean v4, p3, Lo/MediaBrowserCompat$MediaItem$Flags;->extraCallback:Z

    .line 2027
    iget-object v0, p3, Lo/MediaBrowserCompat$MediaItem$Flags;->onNavigationEvent:Ljava/util/List;

    .line 68
    invoke-static {p1, p2, v0}, Lo/setCheckable;->onMessageChannelReady(Lo/createCheckedTextView;Lo/setOverlayMode;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 3027
    iget-object p3, p3, Lo/MediaBrowserCompat$MediaItem$Flags;->onNavigationEvent:Ljava/util/List;

    .line 69
    invoke-static {p3}, Lo/setCheckable;->onNavigationEvent(Ljava/util/List;)Lo/onMeasure;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 67
    invoke-direct/range {v0 .. v6}, Lo/setCheckable;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Ljava/lang/String;ZLjava/util/List;Lo/onMeasure;)V

    return-void
.end method

.method private static onMessageChannelReady(Lo/createCheckedTextView;Lo/setOverlayMode;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCheckedTextView;",
            "Lo/setOverlayMode;",
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;)",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/initTitle;

    invoke-interface {v2, p0, p1}, Lo/initTitle;->ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static onNavigationEvent(Ljava/util/List;)Lo/onMeasure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;)",
            "Lo/onMeasure;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/initTitle;

    .line 48
    instance-of v2, v1, Lo/onMeasure;

    if-eqz v2, :cond_0

    .line 49
    check-cast v1, Lo/onMeasure;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/setCheckable;->asBinder:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method final extraCallback()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/setCheckable;->getInterfaceDescriptor:Ljava/util/List;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setCheckable;->getInterfaceDescriptor:Ljava/util/List;

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPadding;

    .line 123
    instance-of v2, v1, Lo/setForceShowIcon;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lo/setCheckable;->getInterfaceDescriptor:Ljava/util/List;

    check-cast v1, Lo/setForceShowIcon;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lo/setCheckable;->getInterfaceDescriptor:Ljava/util/List;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1, p2}, Lo/withFinalVisibility;->onNavigationEvent(Ljava/lang/Object;Lo/onMeasureExactFormat;)Z

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object p1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 112
    iget-object v0, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 113
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lo/setPadding;->extraCallback(Ljava/util/List;Ljava/util/List;)V

    .line 114
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 4

    .line 141
    iget-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 142
    iget-object v0, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lo/setCheckable;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 146
    iget-boolean v0, p0, Lo/setCheckable;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lo/setCheckable;->onMessageChannelReady:Landroid/graphics/Path;

    return-object v0

    .line 149
    :cond_1
    iget-object v0, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 150
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPadding;

    .line 151
    instance-of v2, v1, Lo/setForceShowIcon;

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lo/setCheckable;->onMessageChannelReady:Landroid/graphics/Path;

    check-cast v1, Lo/setForceShowIcon;

    invoke-interface {v1}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lo/setCheckable;->onMessageChannelReady:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 208
    iget-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 209
    iget-object p2, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 212
    :cond_0
    iget-object p2, p0, Lo/setCheckable;->asInterface:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    iget-object p2, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 214
    iget-object v0, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 215
    instance-of v1, v0, Lo/setChecked;

    if-eqz v1, :cond_1

    .line 216
    check-cast v0, Lo/setChecked;

    iget-object v1, p0, Lo/setCheckable;->asInterface:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lo/setChecked;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 217
    iget-object v0, p0, Lo/setCheckable;->asInterface:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 159
    iget-boolean v0, p0, Lo/setCheckable;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 164
    iget-object p2, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    if-eqz p2, :cond_2

    .line 165
    iget-object v0, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 166
    iget-object p2, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    .line 3154
    iget-object p2, p2, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p0, Lo/setCheckable;->onNavigationEvent:Lo/withFinalVisibility;

    .line 4154
    iget-object p2, p2, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 166
    invoke-virtual {p2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float p2, p2, p3

    float-to-int p3, p2

    .line 173
    :cond_2
    iget-object p2, p0, Lo/setCheckable;->asBinder:Lo/createCheckedTextView;

    .line 4293
    iget-boolean p2, p2, Lo/createCheckedTextView;->requestPostMessageChannel:Z

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 5196
    :goto_1
    iget-object v4, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_4

    .line 5197
    iget-object v4, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lo/setChecked;

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    if-eq p3, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 175
    iget-object p2, p0, Lo/setCheckable;->extraCallback:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    iget-object p2, p0, Lo/setCheckable;->extraCallback:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2, v3, v2}, Lo/setCheckable;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 177
    iget-object p2, p0, Lo/setCheckable;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object p2, p0, Lo/setCheckable;->extraCallback:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/setCheckable;->onPostMessage:Landroid/graphics/Paint;

    invoke-static {p1, p2, v3}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    if-eqz v1, :cond_7

    const/16 p3, 0xff

    .line 182
    :cond_7
    iget-object p2, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_3
    if-ltz p2, :cond_9

    .line 183
    iget-object v0, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 184
    instance-of v2, v0, Lo/setChecked;

    if-eqz v2, :cond_8

    .line 185
    check-cast v0, Lo/setChecked;

    iget-object v2, p0, Lo/setCheckable;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v2, p3}, Lo/setChecked;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method public final onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            ")V"
        }
    .end annotation

    .line 6103
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 224
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->onPostMessage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7103
    :cond_0
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v1, "__container"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8103
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9078
    new-instance v1, Lo/ActionBarContainer;

    invoke-direct {v1, p4}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 9079
    iget-object p4, v1, Lo/ActionBarContainer;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9103
    iget-object p4, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 231
    invoke-virtual {p1, p4, p2}, Lo/ActionBarContainer;->onNavigationEvent(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 10088
    new-instance p4, Lo/ActionBarContainer;

    invoke-direct {p4, v1}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 10089
    iput-object p0, p4, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    .line 232
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object p4, v1

    .line 10103
    :cond_2
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 236
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->onMessageChannelReady(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11103
    iget-object v0, p0, Lo/setCheckable;->onRelationshipValidationResult:Ljava/lang/String;

    .line 237
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 239
    iget-object v1, p0, Lo/setCheckable;->onTransact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPadding;

    .line 240
    instance-of v2, v1, Lo/onAnimationCancel;

    if-eqz v2, :cond_3

    .line 241
    check-cast v1, Lo/onAnimationCancel;

    .line 242
    invoke-interface {v1, p1, p2, p3, p4}, Lo/onAnimationCancel;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
