.class public final Lo/access$101;
.super Lo/isOverflowMenuShowPending;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isOverflowMenuShowPending<",
        "Lo/MediaDescriptionCompat;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/MediaDescriptionCompat;

.field private final onRelationshipValidationResult:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Lo/MediaDescriptionCompat;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lo/isOverflowMenuShowPending;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Lo/MediaDescriptionCompat;

    invoke-direct {p1}, Lo/MediaDescriptionCompat;-><init>()V

    iput-object p1, p0, Lo/access$101;->onPostMessage:Lo/MediaDescriptionCompat;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/access$101;->onRelationshipValidationResult:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 12

    .line 1020
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Lo/MediaDescriptionCompat;

    .line 1021
    iget-object p1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/MediaDescriptionCompat;

    .line 1023
    iget-object v1, p0, Lo/access$101;->onPostMessage:Lo/MediaDescriptionCompat;

    .line 1049
    iget-object v2, v1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 1050
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 2040
    :cond_0
    iget-boolean v2, v0, Lo/MediaDescriptionCompat;->extraCallback:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 3040
    iget-boolean v2, p1, Lo/MediaDescriptionCompat;->extraCallback:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1052
    :goto_1
    iput-boolean v2, v1, Lo/MediaDescriptionCompat;->extraCallback:Z

    .line 3044
    iget-object v2, v0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1055
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4044
    iget-object v4, p1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1055
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Curves must have the same number of control points. Shape 1: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5044
    iget-object v4, v0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1057
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tShape 2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6044
    iget-object v4, p1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1057
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-static {v2}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 7044
    :cond_3
    iget-object v2, v0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1060
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 8044
    iget-object v4, p1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1060
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1061
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 1062
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v4, v2, :cond_5

    .line 1063
    iget-object v5, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    new-instance v6, Lo/isCurrent;

    invoke-direct {v6}, Lo/isCurrent;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1065
    :cond_4
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 1066
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-lt v4, v2, :cond_5

    .line 1067
    iget-object v5, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    iget-object v6, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 9036
    :cond_5
    iget-object v2, v0, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 10036
    iget-object v4, p1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 1074
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 1075
    invoke-static {v2, v4, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v2

    .line 11029
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    if-nez v4, :cond_6

    .line 11030
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 11032
    :cond_6
    iget-object v4, v1, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1077
    iget-object v2, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_4
    if-ltz v2, :cond_7

    .line 11044
    iget-object v3, v0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1078
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isCurrent;

    .line 12044
    iget-object v4, p1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 1079
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/isCurrent;

    .line 13031
    iget-object v5, v3, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 13039
    iget-object v6, v3, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    .line 13047
    iget-object v3, v3, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    .line 14031
    iget-object v7, v4, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 14039
    iget-object v8, v4, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    .line 14047
    iget-object v4, v4, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    .line 1089
    iget-object v9, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/isCurrent;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 1090
    invoke-static {v10, v11, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v10

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v7, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v5

    .line 15027
    iget-object v7, v9, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    invoke-virtual {v7, v10, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 1092
    iget-object v5, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/isCurrent;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 1093
    invoke-static {v7, v9, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v8, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v6

    .line 15035
    iget-object v5, v5, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 1095
    iget-object v5, v1, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/isCurrent;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 1096
    invoke-static {v6, v7, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v3

    .line 15043
    iget-object v4, v5, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    invoke-virtual {v4, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1024
    :cond_7
    iget-object p1, p0, Lo/access$101;->onPostMessage:Lo/MediaDescriptionCompat;

    iget-object p2, p0, Lo/access$101;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lo/onContentScrollStopped;->ICustomTabsCallback(Lo/MediaDescriptionCompat;Landroid/graphics/Path;)V

    .line 1025
    iget-object p1, p0, Lo/access$101;->onRelationshipValidationResult:Landroid/graphics/Path;

    return-object p1
.end method
