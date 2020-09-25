.class public Lo/createCheckedTextView;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createCheckedTextView$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/enableContentAnimations;

.field public ICustomTabsCallback$Stub:Landroid/widget/ImageView$ScaleType;

.field public ICustomTabsCallback$Stub$Proxy:Lo/setPrimaryBackground;

.field public ICustomTabsService:Lo/createImageButton;

.field private final ICustomTabsService$Stub:Landroid/graphics/Matrix;

.field private IPostMessageService:I

.field public asBinder:Lo/onFinishInflate;

.field public final asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/createCheckedTextView$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:F

.field public extraCommand:Z

.field public getInterfaceDescriptor:Lo/setPopupCallback;

.field public mayLaunchUrl:Z

.field public newSession:Z

.field public onMessageChannelReady:Lo/createCheckBox;

.field public onNavigationEvent:Z

.field public onPostMessage:Z

.field public final onRelationshipValidationResult:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public onTransact:Ljava/lang/String;

.field public postMessage:Lo/isTitleOptional;

.field public requestPostMessageChannel:Z

.field public updateVisuals:Z

.field public warmup:Lo/createSpinner;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 127
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Lo/enableContentAnimations;

    invoke-direct {v0}, Lo/enableContentAnimations;-><init>()V

    iput-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lo/createCheckedTextView;->extraCallback:F

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lo/createCheckedTextView;->onNavigationEvent:Z

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lo/createCheckedTextView;->onPostMessage:Z

    .line 68
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    .line 70
    new-instance v2, Lo/createCheckedTextView$4;

    invoke-direct {v2, p0}, Lo/createCheckedTextView$4;-><init>(Lo/createCheckedTextView;)V

    iput-object v2, p0, Lo/createCheckedTextView;->onRelationshipValidationResult:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xff

    .line 95
    iput v3, p0, Lo/createCheckedTextView;->IPostMessageService:I

    .line 98
    iput-boolean v0, p0, Lo/createCheckedTextView;->extraCommand:Z

    .line 104
    iput-boolean v1, p0, Lo/createCheckedTextView;->updateVisuals:Z

    .line 128
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, v2}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/graphics/Canvas;)F
    .locals 2

    .line 1142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 30137
    iget-object v1, v1, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1142
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 31137
    iget-object v1, v1, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1143
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1144
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method static synthetic extraCallback(Lo/createCheckedTextView;)Lo/enableContentAnimations;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    return-object p0
.end method

.method private onNavigationEvent(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1148
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1155
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 32137
    iget-object v3, v3, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1155
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1156
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 33137
    iget-object v4, v4, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1156
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1158
    iget-boolean v4, p0, Lo/createCheckedTextView;->extraCommand:Z

    if-eqz v4, :cond_2

    .line 1159
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    .line 1168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1169
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 1170
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float v4, v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    .line 1174
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1177
    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1181
    :cond_2
    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1182
    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1183
    iget-object v1, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    iget-object v2, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    iget v3, p0, Lo/createCheckedTextView;->IPostMessageService:I

    invoke-virtual {v1, p1, v2, v3}, Lo/setOverlayMode;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    .line 1186
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method static synthetic onPostMessage(Lo/createCheckedTextView;)Lo/isTitleOptional;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    return-object p0
.end method

.method private onPostMessage(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1191
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    return-void

    .line 1195
    :cond_0
    iget v0, p0, Lo/createCheckedTextView;->extraCallback:F

    .line 1197
    invoke-direct {p0, p1}, Lo/createCheckedTextView;->ICustomTabsCallback(Landroid/graphics/Canvas;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 1200
    iget v0, p0, Lo/createCheckedTextView;->extraCallback:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v3, -0x1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 1214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1215
    iget-object v2, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 34137
    iget-object v2, v2, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1215
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 1216
    iget-object v5, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 35137
    iget-object v5, v5, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 1216
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v2, v1

    mul-float v6, v5, v1

    .line 35901
    iget v7, p0, Lo/createCheckedTextView;->extraCallback:F

    mul-float v2, v2, v7

    sub-float/2addr v2, v4

    mul-float v7, v7, v5

    sub-float/2addr v7, v6

    .line 1220
    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1223
    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1226
    :cond_2
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1227
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1228
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    iget v2, p0, Lo/createCheckedTextView;->IPostMessageService:I

    invoke-virtual {v0, p1, v1, v2}, Lo/setOverlayMode;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v3, :cond_3

    .line 1231
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onFinishInflate;
    .locals 5

    .line 1050
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1055
    :cond_0
    iget-object v0, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    if-eqz v0, :cond_5

    .line 29091
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 29096
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 29097
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 29122
    iget-object v3, v0, Lo/onFinishInflate;->onNavigationEvent:Landroid/content/Context;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, v0, Lo/onFinishInflate;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 1056
    iput-object v1, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    .line 1059
    :cond_5
    iget-object v0, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    if-nez v0, :cond_6

    .line 1060
    new-instance v0, Lo/onFinishInflate;

    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lo/createCheckedTextView;->onTransact:Ljava/lang/String;

    iget-object v3, p0, Lo/createCheckedTextView;->warmup:Lo/createSpinner;

    iget-object v4, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 29197
    iget-object v4, v4, Lo/createCheckBox;->onPostMessage:Ljava/util/Map;

    .line 1061
    invoke-direct {v0, v1, v2, v3, v4}, Lo/onFinishInflate;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lo/createSpinner;Ljava/util/Map;)V

    iput-object v0, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    .line 1064
    :cond_6
    iget-object v0, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    return-object v0
.end method

.method public final ICustomTabsCallback(F)V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$15;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$15;-><init>(Lo/createCheckedTextView;F)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 17146
    :cond_0
    iget v0, v0, Lo/createCheckBox;->newSession:F

    .line 499
    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 17151
    iget v1, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 499
    invoke-static {v0, v1, p1}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onNavigationEvent(I)V

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 734
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$9;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$9;-><init>(Lo/createCheckedTextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lo/enableContentAnimations;->onNavigationEvent(F)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    .line 589
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$1;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$1;-><init>(Lo/createCheckedTextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 598
    :cond_0
    invoke-virtual {v0, p1}, Lo/createCheckBox;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    iget p1, v0, Lo/setSplitBackground;->onNavigationEvent:F

    float-to-int p1, p1

    .line 603
    iget v0, v0, Lo/setSplitBackground;->extraCallback:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lo/createCheckedTextView;->onMessageChannelReady(II)V

    return-void

    .line 600
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 615
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/createCheckedTextView$2;-><init>(Lo/createCheckedTextView;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 624
    :cond_0
    invoke-virtual {v0, p1}, Lo/createCheckBox;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    .line 628
    iget p1, v0, Lo/setSplitBackground;->onNavigationEvent:F

    float-to-int p1, p1

    .line 630
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    invoke-virtual {v0, p2}, Lo/createCheckBox;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 634
    iget p2, v0, Lo/setSplitBackground;->onNavigationEvent:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 636
    invoke-virtual {p0, p1, p2}, Lo/createCheckedTextView;->onMessageChannelReady(II)V

    return-void

    .line 632
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lo/createCheckedTextView;->updateVisuals:Z

    .line 361
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 363
    iget-boolean v0, p0, Lo/createCheckedTextView;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 2377
    :try_start_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsCallback$Stub:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 2378
    invoke-direct {p0, p1}, Lo/createCheckedTextView;->onNavigationEvent(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2380
    :cond_0
    invoke-direct {p0, p1}, Lo/createCheckedTextView;->onPostMessage(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Lottie crashed in draw!"

    .line 367
    invoke-static {v0, p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3377
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsCallback$Stub:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    .line 3378
    invoke-direct {p0, p1}, Lo/createCheckedTextView;->onNavigationEvent(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3380
    :cond_2
    invoke-direct {p0, p1}, Lo/createCheckedTextView;->onPostMessage(Landroid/graphics/Canvas;)V

    .line 373
    :goto_0
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 909
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    return-void

    .line 21901
    :cond_0
    iget v1, p0, Lo/createCheckedTextView;->extraCallback:F

    .line 22137
    iget-object v0, v0, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 913
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 23137
    iget-object v2, v2, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 914
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 913
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final extraCallback(F)V
    .locals 2

    .line 529
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$12;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$12;-><init>(Lo/createCheckedTextView;F)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 18146
    :cond_0
    iget v0, v0, Lo/createCheckBox;->newSession:F

    .line 538
    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 18151
    iget v1, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 538
    invoke-static {v0, v1, p1}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(I)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 3

    .line 546
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$14;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$14;-><init>(Lo/createCheckedTextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 555
    :cond_0
    invoke-virtual {v0, p1}, Lo/createCheckBox;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    iget p1, v0, Lo/setSplitBackground;->onNavigationEvent:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onNavigationEvent(I)V

    return-void

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlpha()I
    .locals 1

    .line 344
    iget v0, p0, Lo/createCheckedTextView;->IPostMessageService:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 939
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 25137
    :cond_0
    iget-object v0, v0, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 939
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 25901
    iget v1, p0, Lo/createCheckedTextView;->extraCallback:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 934
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 24137
    :cond_0
    iget-object v0, v0, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 934
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 24901
    iget v1, p0, Lo/createCheckedTextView;->extraCallback:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1108
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1112
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lo/createCheckedTextView;->updateVisuals:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lo/createCheckedTextView;->updateVisuals:Z

    .line 330
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 3828
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3831
    :cond_0
    invoke-virtual {v0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Lo/ActionBarContainer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            ")",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;"
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 952
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 953
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 955
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 956
    iget-object v1, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    new-instance v2, Lo/ActionBarContainer;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lo/ActionBarContainer;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lo/setOverlayMode;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 302
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 306
    iput-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    .line 307
    iput-object v0, p0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    .line 308
    iget-object v1, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 2129
    iput-object v0, v1, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    const/high16 v0, -0x31000000

    .line 2130
    iput v0, v1, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v0, 0x4f000000

    .line 2131
    iput v0, v1, Lo/enableContentAnimations;->onNavigationEvent:F

    .line 309
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 2

    .line 506
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$11;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$11;-><init>(Lo/createCheckedTextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    .line 17167
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    invoke-virtual {v0, v1, p1}, Lo/enableContentAnimations;->onMessageChannelReady(FF)V

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 2

    .line 644
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$5;

    invoke-direct {v1, p0, p1, p2}, Lo/createCheckedTextView$5;-><init>(Lo/createCheckedTextView;II)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/enableContentAnimations;->onMessageChannelReady(FF)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$16;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$16;-><init>(Lo/createCheckedTextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 576
    :cond_0
    invoke-virtual {v0, p1}, Lo/createCheckBox;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    iget p1, v0, Lo/setSplitBackground;->onNavigationEvent:F

    iget v0, v0, Lo/setSplitBackground;->extraCallback:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(I)V

    return-void

    .line 578
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 444
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$6;

    invoke-direct {v1, p0}, Lo/createCheckedTextView$6;-><init>(Lo/createCheckedTextView;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 454
    :cond_0
    iget-boolean v0, p0, Lo/createCheckedTextView;->onNavigationEvent:Z

    if-nez v0, :cond_1

    .line 10817
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 455
    :cond_1
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->onRelationshipValidationResult()V

    .line 457
    :cond_2
    iget-boolean v0, p0, Lo/createCheckedTextView;->onNavigationEvent:Z

    if-nez v0, :cond_8

    .line 11700
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 12193
    iget v0, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 12483
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 13248
    iget-object v2, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v2, :cond_3

    goto :goto_0

    .line 13251
    :cond_3
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v2, -0x31000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 14146
    iget v1, v0, Lo/createCheckBox;->newSession:F

    goto :goto_0

    .line 13251
    :cond_4
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    goto :goto_0

    .line 14522
    :cond_5
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 15255
    iget-object v2, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v2, :cond_6

    goto :goto_0

    .line 15258
    :cond_6
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 16151
    iget v1, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    goto :goto_0

    .line 15258
    :cond_7
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    :goto_0
    float-to-int v0, v1

    .line 458
    invoke-virtual {p0, v0}, Lo/createCheckedTextView;->ICustomTabsCallback(I)V

    .line 459
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->asBinder()V

    :cond_8
    return-void
.end method

.method public final onNavigationEvent(F)V
    .locals 3

    .line 755
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$10;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$10;-><init>(Lo/createCheckedTextView;F)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 764
    :cond_0
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 765
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 21146
    iget v1, v1, Lo/createCheckBox;->newSession:F

    .line 765
    iget-object v2, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 21151
    iget v2, v2, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 765
    invoke-static {v1, v2, p1}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/enableContentAnimations;->onNavigationEvent(F)V

    .line 766
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public final onNavigationEvent(FF)V
    .locals 2

    .line 664
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$3;

    invoke-direct {v1, p0, p1, p2}, Lo/createCheckedTextView$3;-><init>(Lo/createCheckedTextView;FF)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 19146
    :cond_0
    iget v0, v0, Lo/createCheckBox;->newSession:F

    .line 674
    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 19151
    iget v1, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 674
    invoke-static {v0, v1, p1}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 20146
    iget v0, v0, Lo/createCheckBox;->newSession:F

    .line 675
    iget-object v1, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 20151
    iget v1, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 675
    invoke-static {v0, v1, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 674
    invoke-virtual {p0, p1, p2}, Lo/createCheckedTextView;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 467
    iget-object v0, p0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$13;

    invoke-direct {v1, p0, p1}, Lo/createCheckedTextView$13;-><init>(Lo/createCheckedTextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    int-to-float p1, p1

    .line 16163
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lo/enableContentAnimations;->onMessageChannelReady(FF)V

    return-void
.end method

.method public final onNavigationEvent(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ActionBarContainer;",
            "TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/createCheckedTextView$7;-><init>(Lo/createCheckedTextView;Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 979
    :cond_0
    sget-object v0, Lo/ActionBarContainer;->onNavigationEvent:Lo/ActionBarContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 980
    iget-object p1, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    invoke-virtual {p1, p2, p3}, Lo/setOverlayMode;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 26100
    :cond_1
    iget-object v0, p1, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    if-eqz v0, :cond_2

    .line 27100
    iget-object p1, p1, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    .line 983
    invoke-interface {p1, p2, p3}, Lo/onAnimationCancel;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    goto :goto_0

    .line 986
    :cond_2
    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(Lo/ActionBarContainer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 988
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 990
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ActionBarContainer;

    .line 28100
    iget-object v3, v3, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    .line 990
    invoke-interface {v3, p2, p3}, Lo/onAnimationCancel;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 992
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 995
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 996
    sget-object p1, Lo/createRatingBar;->IPostMessageService$Stub$Proxy:Ljava/lang/Float;

    if-ne p2, p1, :cond_5

    .line 28929
    iget-object p1, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {p1}, Lo/enableContentAnimations;->onMessageChannelReady()F

    move-result p1

    .line 1000
    invoke-virtual {p0, p1}, Lo/createCheckedTextView;->onNavigationEvent(F)V

    :cond_5
    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 413
    iget-object v0, p0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    new-instance v1, Lo/createCheckedTextView$8;

    invoke-direct {v1, p0}, Lo/createCheckedTextView$8;-><init>(Lo/createCheckedTextView;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 423
    :cond_0
    iget-boolean v0, p0, Lo/createCheckedTextView;->onNavigationEvent:Z

    if-nez v0, :cond_1

    .line 4817
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    :cond_1
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->onNavigationEvent()V

    .line 426
    :cond_2
    iget-boolean v0, p0, Lo/createCheckedTextView;->onNavigationEvent:Z

    if-nez v0, :cond_8

    .line 5700
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 6193
    iget v0, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 6483
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 7248
    iget-object v2, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v2, :cond_3

    goto :goto_0

    .line 7251
    :cond_3
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v2, -0x31000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 8146
    iget v1, v0, Lo/createCheckBox;->newSession:F

    goto :goto_0

    .line 7251
    :cond_4
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    goto :goto_0

    .line 8522
    :cond_5
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 9255
    iget-object v2, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v2, :cond_6

    goto :goto_0

    .line 9258
    :cond_6
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 10151
    iget v1, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    goto :goto_0

    .line 9258
    :cond_7
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    :goto_0
    float-to-int v0, v1

    .line 427
    invoke-virtual {p0, v0}, Lo/createCheckedTextView;->ICustomTabsCallback(I)V

    .line 428
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->asBinder()V

    :cond_8
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1117
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1121
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 338
    iput p1, p0, Lo/createCheckedTextView;->IPostMessageService:I

    .line 339
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    .line 349
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 390
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 391
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lo/createCheckedTextView;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 3434
    iget-object v0, p0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 3435
    iget-object v0, p0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->asBinder()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1126
    invoke-virtual {p0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1130
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
