.class final Lo/missCount$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/missCount;->onPostMessage(Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/setInitialSavedState;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "background",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Landroid/graphics/drawable/Drawable;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:[F

.field private synthetic onPostMessage:F

.field private synthetic onRelationshipValidationResult:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>([FFLjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/missCount$onNavigationEvent;->onNavigationEvent:[F

    iput p2, p0, Lo/missCount$onNavigationEvent;->onPostMessage:F

    iput-object p3, p0, Lo/missCount$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/missCount$onNavigationEvent;->extraCallback:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lo/missCount$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p6, p0, Lo/missCount$onNavigationEvent;->onRelationshipValidationResult:Lo/onDisconnectSetValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lo/setInitialSavedState;

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x8

    const-string v10, "backgroundDrawable.paint"

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 1129
    instance-of v13, v1, Lo/setInitialSavedState$extraCallback;

    if-eqz v13, :cond_1

    .line 1130
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lo/setInitialSavedState$extraCallback;

    .line 2011
    iget-object v3, v1, Lo/setInitialSavedState$extraCallback;->onNavigationEvent:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2012
    iget-object v4, v1, Lo/setInitialSavedState$extraCallback;->extraCallback:Ljava/util/List;

    .line 1130
    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 1131
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2013
    iget v1, v1, Lo/setInitialSavedState$extraCallback;->onMessageChannelReady:I

    .line 1132
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 1133
    iget-object v1, v0, Lo/missCount$onNavigationEvent;->onNavigationEvent:[F

    if-eqz v1, :cond_0

    .line 1134
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/16 :goto_2

    .line 1136
    :cond_0
    iget v1, v0, Lo/missCount$onNavigationEvent;->onPostMessage:F

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/16 :goto_2

    .line 1140
    :cond_1
    instance-of v13, v1, Lo/setInitialSavedState$onMessageChannelReady;

    if-eqz v13, :cond_3

    .line 1141
    new-instance v13, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 1142
    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v15, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 1143
    iget-object v12, v0, Lo/missCount$onNavigationEvent;->onNavigationEvent:[F

    if-nez v12, :cond_2

    new-array v12, v9, [F

    .line 1144
    iget v9, v0, Lo/missCount$onNavigationEvent;->onPostMessage:F

    aput v9, v12, v11

    aput v9, v12, v8

    aput v9, v12, v7

    aput v9, v12, v6

    aput v9, v12, v5

    aput v9, v12, v4

    aput v9, v12, v3

    aput v9, v12, v2

    :cond_2
    const/4 v2, 0x0

    .line 1142
    invoke-direct {v15, v12, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v15, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1145
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/setInitialSavedState$onMessageChannelReady;

    .line 2019
    iget v1, v1, Lo/setInitialSavedState$onMessageChannelReady;->onNavigationEvent:I

    .line 1145
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object v2, v13

    goto/16 :goto_2

    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 1149
    :cond_4
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 1150
    move-object v12, v1

    check-cast v12, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v13, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 1151
    iget-object v14, v0, Lo/missCount$onNavigationEvent;->onNavigationEvent:[F

    if-nez v14, :cond_5

    new-array v14, v9, [F

    .line 1152
    iget v9, v0, Lo/missCount$onNavigationEvent;->onPostMessage:F

    aput v9, v14, v11

    aput v9, v14, v8

    aput v9, v14, v7

    aput v9, v14, v6

    aput v9, v14, v5

    aput v9, v14, v4

    aput v9, v14, v3

    aput v9, v14, v2

    :cond_5
    const/4 v2, 0x0

    .line 1150
    invoke-direct {v13, v14, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v13, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1154
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/missCount$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 1157
    iget-object v2, v0, Lo/missCount$onNavigationEvent;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    goto :goto_2

    .line 1160
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/missCount$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "$this$startsWith"

    .line 2332
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "#"

    const-string v5, "prefix"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1160
    iget-object v3, v0, Lo/missCount$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lo/missCount$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    move-object v2, v1

    .line 1164
    :goto_2
    iget-object v1, v0, Lo/missCount$onNavigationEvent;->onRelationshipValidationResult:Lo/onDisconnectSetValue;

    invoke-interface {v1, v2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
