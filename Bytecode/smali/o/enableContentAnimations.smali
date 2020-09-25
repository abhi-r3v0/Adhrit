.class public final Lo/enableContentAnimations;
.super Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:I

.field private asInterface:J

.field public extraCallback:Lo/createCheckBox;

.field public onMessageChannelReady:F

.field public onNavigationEvent:F

.field public onPostMessage:F

.field public onRelationshipValidationResult:Z

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lo/enableContentAnimations;->onTransact:Z

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lo/enableContentAnimations;->asInterface:J

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 24
    iput v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback$Stub:I

    const/high16 v1, -0x31000000

    .line 25
    iput v1, p0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v1, 0x4f000000

    .line 26
    iput v1, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    .line 28
    iput-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    return-void
.end method


# virtual methods
.method public final asBinder()V
    .locals 3

    .line 35275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 35277
    iput-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    .line 37193
    iget v1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 217
    :cond_0
    invoke-virtual {p0, v0}, Lo/enableContentAnimations;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lo/enableContentAnimations;->onPostMessage()V

    .line 46275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 46277
    iput-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final doFrame(J)V
    .locals 11

    .line 10262
    invoke-virtual {p0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_f

    .line 86
    :cond_1
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 88
    iget-wide v0, p0, Lo/enableContentAnimations;->asInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    sub-long v2, p1, v0

    .line 11122
    :goto_0
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_3
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 11155
    iget v0, v0, Lo/createCheckBox;->ICustomTabsService:F

    div-float/2addr v1, v0

    .line 11125
    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v1, v0

    :goto_1
    long-to-float v1, v2

    div-float/2addr v1, v0

    .line 92
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 12193
    iget v2, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    neg-float v1, v1

    :cond_5
    add-float/2addr v0, v1

    .line 92
    iput v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 12248
    iget-object v1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    const/high16 v2, -0x31000000

    if-nez v1, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    .line 12251
    :cond_6
    iget v6, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v7, v6, v2

    if-nez v7, :cond_7

    .line 13146
    iget v6, v1, Lo/createCheckBox;->newSession:F

    .line 13255
    :cond_7
    :goto_3
    iget-object v1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    const/high16 v7, 0x4f000000

    if-nez v1, :cond_8

    const/4 v8, 0x0

    goto :goto_4

    .line 13258
    :cond_8
    iget v8, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v9, v8, v7

    if-nez v9, :cond_9

    .line 14151
    iget v8, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 93
    :cond_9
    :goto_4
    invoke-static {v0, v6, v8}, Lo/onContentScrollStopped;->extraCallback(FFF)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 94
    iget v1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 14248
    iget-object v6, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v6, :cond_a

    const/4 v8, 0x0

    goto :goto_5

    .line 14251
    :cond_a
    iget v8, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v9, v8, v2

    if-nez v9, :cond_b

    .line 15146
    iget v8, v6, Lo/createCheckBox;->newSession:F

    .line 15255
    :cond_b
    :goto_5
    iget-object v6, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v6, :cond_c

    const/4 v9, 0x0

    goto :goto_6

    .line 15258
    :cond_c
    iget v9, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v10, v9, v7

    if-nez v10, :cond_d

    .line 16151
    iget v9, v6, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 94
    :cond_d
    :goto_6
    invoke-static {v1, v8, v9}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v1

    iput v1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 96
    iput-wide p1, p0, Lo/enableContentAnimations;->asInterface:J

    .line 98
    invoke-virtual {p0}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->ICustomTabsCallback()V

    const/4 v1, 0x2

    if-eqz v0, :cond_1a

    .line 100
    invoke-virtual {p0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_13

    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v6

    if-lt v0, v6, :cond_13

    .line 101
    iget p1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float p1, p1, v5

    if-gez p1, :cond_f

    .line 16248
    iget-object p1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez p1, :cond_e

    goto :goto_7

    .line 16251
    :cond_e
    iget p2, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v0, p2, v2

    if-nez v0, :cond_11

    .line 17146
    iget p2, p1, Lo/createCheckBox;->newSession:F

    goto :goto_8

    .line 17255
    :cond_f
    iget-object p1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez p1, :cond_10

    :goto_7
    const/4 p2, 0x0

    goto :goto_8

    .line 17258
    :cond_10
    iget p2, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v0, p2, v7

    if-nez v0, :cond_11

    .line 18151
    iget p2, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 101
    :cond_11
    :goto_8
    iput p2, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 18275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 18277
    iput-boolean v3, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    .line 20193
    iget p1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float p1, p1, v5

    if-gez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_9

    :cond_12
    const/4 p1, 0x0

    .line 103
    :goto_9
    invoke-virtual {p0, p1}, Lo/enableContentAnimations;->onMessageChannelReady(Z)V

    goto :goto_d

    .line 105
    :cond_13
    invoke-virtual {p0}, Lo/enableContentAnimations;->extraCallback()V

    .line 106
    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback$Stub:I

    .line 107
    invoke-virtual {p0}, Lo/enableContentAnimations;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 108
    iget-boolean v0, p0, Lo/enableContentAnimations;->onTransact:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lo/enableContentAnimations;->onTransact:Z

    .line 21193
    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    neg-float v0, v0

    .line 22186
    iput v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    goto :goto_c

    .line 23193
    :cond_14
    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_17

    .line 23255
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_16

    goto :goto_b

    .line 23258
    :cond_16
    iget v5, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v2, v5, v7

    if-nez v2, :cond_19

    .line 24151
    iget v5, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    goto :goto_b

    .line 24248
    :cond_17
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_18

    goto :goto_b

    .line 24251
    :cond_18
    iget v5, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_19

    .line 25146
    iget v5, v0, Lo/createCheckBox;->newSession:F

    .line 111
    :cond_19
    :goto_b
    iput v5, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 113
    :goto_c
    iput-wide p1, p0, Lo/enableContentAnimations;->asInterface:J

    .line 25282
    :cond_1a
    :goto_d
    iget-object p1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-eqz p1, :cond_1c

    .line 25285
    iget p1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    iget p2, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1b

    iget p2, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1b

    goto :goto_e

    .line 25286
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lo/enableContentAnimations;->onPostMessage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v4

    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Frame must be [%f,%f]. It is %f"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1c
    :goto_e
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    :cond_1d
    :goto_f
    return-void
.end method

.method public final getAnimatedFraction()F
    .locals 7

    .line 58
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3193
    :cond_0
    iget v0, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x4f000000

    const/high16 v3, -0x31000000

    if-eqz v0, :cond_8

    .line 3255
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 3258
    :cond_2
    iget v4, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v5, v4, v2

    if-nez v5, :cond_3

    .line 4151
    iget v4, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 62
    :cond_3
    :goto_1
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    sub-float/2addr v4, v0

    .line 4255
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    .line 4258
    :cond_4
    iget v5, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_5

    .line 5151
    iget v5, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 5248
    :cond_5
    :goto_2
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_6

    goto :goto_3

    .line 5251
    :cond_6
    iget v1, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v2, v1, v3

    if-nez v2, :cond_7

    .line 6146
    iget v1, v0, Lo/createCheckBox;->newSession:F

    :cond_7
    :goto_3
    sub-float/2addr v5, v1

    div-float/2addr v4, v5

    return v4

    .line 64
    :cond_8
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 6248
    iget-object v4, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v4, :cond_9

    const/4 v5, 0x0

    goto :goto_4

    .line 6251
    :cond_9
    iget v5, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v6, v5, v3

    if-nez v6, :cond_a

    .line 7146
    iget v5, v4, Lo/createCheckBox;->newSession:F

    :cond_a
    :goto_4
    sub-float/2addr v0, v5

    .line 7255
    iget-object v4, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v4, :cond_b

    const/4 v5, 0x0

    goto :goto_5

    .line 7258
    :cond_b
    iget v5, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_c

    .line 8151
    iget v5, v4, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 8248
    :cond_c
    :goto_5
    iget-object v2, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v2, :cond_d

    goto :goto_6

    .line 8251
    :cond_d
    iget v1, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_e

    .line 9146
    iget v1, v2, Lo/createCheckBox;->newSession:F

    :cond_e
    :goto_6
    sub-float/2addr v5, v1

    div-float/2addr v0, v5

    return v0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lo/enableContentAnimations;->onMessageChannelReady()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getDuration()J
    .locals 3

    .line 69
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 10201
    :cond_0
    iget v1, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v2, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v1, v2

    .line 10141
    iget v0, v0, Lo/createCheckBox;->ICustomTabsService:F

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, v1, v0

    float-to-long v0, v1

    long-to-float v0, v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    return v0
.end method

.method public final onMessageChannelReady()F
    .locals 3

    .line 46
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    iget v1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 1146
    iget v0, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v1, v0

    .line 49
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 1151
    iget v0, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 49
    iget-object v2, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 2146
    iget v2, v2, Lo/createCheckBox;->newSession:F

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public final onMessageChannelReady(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 174
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    .line 29146
    :cond_0
    iget v0, v0, Lo/createCheckBox;->newSession:F

    .line 175
    :goto_0
    iget-object v1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 29151
    :cond_1
    iget v1, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 176
    :goto_1
    invoke-static {p1, v0, v1}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v2

    iput v2, p0, Lo/enableContentAnimations;->onPostMessage:F

    .line 177
    invoke-static {p2, v0, v1}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v0

    iput v0, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    .line 178
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    invoke-static {v0, p1, p2}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lo/enableContentAnimations;->onNavigationEvent(F)V

    return-void

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    .line 31193
    iget v1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0, v1}, Lo/enableContentAnimations;->extraCallback(Z)V

    .line 32193
    iget v1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 32255
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_2

    goto :goto_2

    .line 32258
    :cond_2
    iget v3, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, v3, v1

    if-nez v1, :cond_5

    .line 33151
    iget v3, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    goto :goto_2

    .line 33248
    :cond_3
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_4

    goto :goto_2

    .line 33251
    :cond_4
    iget v3, p0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v3, v1

    if-nez v1, :cond_5

    .line 34146
    iget v3, v0, Lo/createCheckBox;->newSession:F

    :cond_5
    :goto_2
    float-to-int v0, v3

    int-to-float v0, v0

    .line 208
    invoke-virtual {p0, v0}, Lo/enableContentAnimations;->onNavigationEvent(F)V

    const-wide/16 v0, 0x0

    .line 209
    iput-wide v0, p0, Lo/enableContentAnimations;->asInterface:J

    .line 210
    iput v2, p0, Lo/enableContentAnimations;->ICustomTabsCallback$Stub:I

    .line 34262
    invoke-virtual {p0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 34264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_6
    return-void
.end method

.method public final onNavigationEvent(F)V
    .locals 4

    .line 154
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 26248
    :cond_0
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 26251
    :cond_1
    iget v2, p0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v3, -0x31000000

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 27146
    iget v2, v0, Lo/createCheckBox;->newSession:F

    .line 27255
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_3

    goto :goto_1

    .line 27258
    :cond_3
    iget v1, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    const/high16 v3, 0x4f000000

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    .line 28151
    iget v1, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 157
    :cond_4
    :goto_1
    invoke-static {p1, v2, v1}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result p1

    iput p1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lo/enableContentAnimations;->asInterface:J

    .line 159
    invoke-virtual {p0}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->ICustomTabsCallback()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 9

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    .line 37262
    invoke-virtual {p0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 37264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const-wide/16 v1, 0x0

    .line 229
    iput-wide v1, p0, Lo/enableContentAnimations;->asInterface:J

    .line 39193
    iget v1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x4f000000

    const/high16 v5, -0x31000000

    if-eqz v1, :cond_6

    .line 40073
    iget v1, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 40248
    iget-object v6, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 40251
    :cond_2
    iget v7, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v8, v7, v5

    if-nez v8, :cond_3

    .line 41146
    iget v7, v6, Lo/createCheckBox;->newSession:F

    :cond_3
    :goto_1
    cmpl-float v1, v1, v7

    if-nez v1, :cond_6

    .line 41255
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_4

    goto :goto_2

    .line 41258
    :cond_4
    iget v3, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v1, v3, v4

    if-nez v1, :cond_5

    .line 42151
    iget v3, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 231
    :cond_5
    :goto_2
    iput v3, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    return-void

    .line 43193
    :cond_6
    iget v1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_c

    .line 44073
    iget v0, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    .line 44255
    iget-object v1, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v1, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    .line 44258
    :cond_8
    iget v2, p0, Lo/enableContentAnimations;->onNavigationEvent:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_9

    .line 45151
    iget v2, v1, Lo/createCheckBox;->getInterfaceDescriptor:F

    :cond_9
    :goto_4
    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    .line 45248
    iget-object v0, p0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v0, :cond_a

    goto :goto_5

    .line 45251
    :cond_a
    iget v3, p0, Lo/enableContentAnimations;->onPostMessage:F

    cmpl-float v1, v3, v5

    if-nez v1, :cond_b

    .line 46146
    iget v3, v0, Lo/createCheckBox;->newSession:F

    .line 233
    :cond_b
    :goto_5
    iput v3, p0, Lo/enableContentAnimations;->onMessageChannelReady:F

    :cond_c
    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 198
    iget-boolean p1, p0, Lo/enableContentAnimations;->onTransact:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lo/enableContentAnimations;->onTransact:Z

    .line 29193
    iget p1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    neg-float p1, p1

    .line 30186
    iput p1, p0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    :cond_0
    return-void
.end method
