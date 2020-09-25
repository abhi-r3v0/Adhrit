.class public final Lo/getComposition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMinAndMaxFrame;


# instance fields
.field public final ICustomTabsCallback:Landroid/content/res/Resources;

.field private final ICustomTabsCallback$Stub:Lo/Sequence;

.field public extraCallback:Lo/hasMatte;

.field private final onMessageChannelReady:Landroid/graphics/drawable/Drawable;

.field private onNavigationEvent:Lo/invalidateDrawable;

.field private final onPostMessage:Lo/setMinFrame;


# direct methods
.method constructor <init>(Lo/cancelLoaderTask;)V
    .locals 10

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lo/getComposition;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1123
    iget-object v0, p1, Lo/cancelLoaderTask;->extraCallback:Landroid/content/res/Resources;

    .line 107
    iput-object v0, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    .line 1603
    iget-object v0, p1, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 108
    iput-object v0, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    .line 110
    new-instance v0, Lo/Sequence;

    iget-object v2, p0, Lo/getComposition;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2}, Lo/Sequence;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/getComposition;->ICustomTabsCallback$Stub:Lo/Sequence;

    .line 2564
    iget-object v0, p1, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p1, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3586
    :cond_1
    iget-object v3, p1, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x6

    .line 126
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 4530
    iget-object v4, p1, Lo/cancelLoaderTask;->newSession:Landroid/graphics/drawable/Drawable;

    .line 5189
    iget-object v5, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v6, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v4, v5, v6}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    .line 5190
    invoke-static {v4, v5}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 127
    aput-object v4, v3, v1

    .line 6187
    iget-object v4, p1, Lo/cancelLoaderTask;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 6206
    iget-object v6, p1, Lo/cancelLoaderTask;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    .line 7189
    iget-object v7, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v8, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v4, v7, v8}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 7190
    invoke-static {v4, v6}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 129
    aput-object v4, v3, v2

    const/4 v4, 0x2

    .line 130
    iget-object v6, p0, Lo/getComposition;->ICustomTabsCallback$Stub:Lo/Sequence;

    .line 7476
    iget-object v7, p1, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    .line 8180
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8181
    invoke-static {v6, v7, v5}, Lo/playAnimation;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 131
    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 8409
    iget-object v6, p1, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    .line 8428
    iget-object v7, p1, Lo/cancelLoaderTask;->warmup:Lo/setFailureListener$extraCallback;

    .line 9189
    iget-object v8, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v9, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v6, v8, v9}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 9190
    invoke-static {v6, v7}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 137
    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 9261
    iget-object v6, p1, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    .line 9280
    iget-object v7, p1, Lo/cancelLoaderTask;->onTransact:Lo/setFailureListener$extraCallback;

    .line 10189
    iget-object v8, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v9, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v6, v8, v9}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 10190
    invoke-static {v6, v7}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 139
    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 10335
    iget-object v6, p1, Lo/cancelLoaderTask;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    .line 10354
    iget-object v7, p1, Lo/cancelLoaderTask;->asInterface:Lo/setFailureListener$extraCallback;

    .line 11189
    iget-object v8, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v9, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v6, v8, v9}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11190
    invoke-static {v6, v7}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 141
    aput-object v6, v3, v4

    if-lez v0, :cond_5

    .line 11564
    iget-object v0, p1, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 12564
    iget-object v0, p1, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v4, v4, 0x6

    .line 13189
    iget-object v8, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v9, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v6, v8, v9}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 13190
    invoke-static {v6, v5}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 146
    aput-object v6, v3, v4

    move v4, v7

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 13586
    :cond_4
    iget-object v0, p1, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    add-int/lit8 v4, v4, 0x6

    .line 14586
    iget-object v0, p1, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 15189
    iget-object v6, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v7, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v0, v6, v7}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15190
    invoke-static {v0, v5}, Lo/playAnimation;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    aput-object v0, v3, v4

    .line 157
    :cond_5
    new-instance v0, Lo/invalidateDrawable;

    invoke-direct {v0, v3}, Lo/invalidateDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 16141
    iget p1, p1, Lo/cancelLoaderTask;->ICustomTabsCallback:I

    .line 17120
    iput p1, v0, Lo/invalidateDrawable;->onNavigationEvent:I

    .line 17122
    iget p1, v0, Lo/invalidateDrawable;->extraCallback:I

    if-ne p1, v2, :cond_6

    .line 17123
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 161
    :cond_6
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    iget-object v0, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    .line 162
    invoke-static {p1, v0}, Lo/playAnimation;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 165
    new-instance v0, Lo/setMinFrame;

    invoke-direct {v0, p1}, Lo/setMinFrame;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/getComposition;->onPostMessage:Lo/setMinFrame;

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-direct {p0}, Lo/getComposition;->ICustomTabsCallback()V

    .line 169
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 5

    .line 199
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    if-eqz v0, :cond_0

    .line 18109
    iget v1, v0, Lo/invalidateDrawable;->asBinder:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lo/invalidateDrawable;->asBinder:I

    .line 202
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x0

    .line 18178
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 18179
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 18180
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 19171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 19172
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aput-boolean v1, v3, v2

    .line 19173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 20171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 20172
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    .line 20173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 21171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 21172
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v4, 0x3

    aput-boolean v1, v3, v4

    .line 21173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 22171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 22172
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v4, 0x4

    aput-boolean v1, v3, v4

    .line 22173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 22228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 23171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 23172
    iget-object v3, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v4, 0x5

    aput-boolean v1, v3, v4

    .line 23173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23222
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 24159
    iput-boolean v1, v0, Lo/invalidateDrawable;->onTransact:Z

    .line 24160
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 24161
    iget-object v1, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aput-boolean v2, v1, v2

    .line 24162
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 207
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    invoke-virtual {v0}, Lo/invalidateDrawable;->ICustomTabsCallback()V

    .line 208
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 25114
    iget v1, v0, Lo/invalidateDrawable;->asBinder:I

    sub-int/2addr v1, v2

    iput v1, v0, Lo/invalidateDrawable;->asBinder:I

    .line 25115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private asBinder()V
    .locals 4

    .line 25228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x0

    .line 26171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 26172
    iget-object v2, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v3, 0x1

    aput-boolean v1, v2, v3

    .line 26173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 27171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 27172
    iget-object v2, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 27173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 27228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 28171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 28172
    iget-object v2, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 28173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 29171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 29172
    iget-object v2, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    .line 29173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29228
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 30171
    iput v1, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 30172
    iget-object v2, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    .line 30173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private onNavigationEvent(I)V
    .locals 4

    if-ltz p1, :cond_1

    .line 222
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 31159
    :goto_0
    iput-boolean v1, v0, Lo/invalidateDrawable;->onTransact:Z

    .line 31160
    iput v3, v0, Lo/invalidateDrawable;->extraCallback:I

    .line 31161
    iget-object v1, v0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aput-boolean v2, v1, p1

    .line 31162
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private onPostMessage(F)V
    .locals 5

    .line 233
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/Rule;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 240
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 241
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 31228
    :cond_1
    iget-object v2, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v3, 0x0

    .line 32171
    iput v3, v2, Lo/invalidateDrawable;->extraCallback:I

    .line 32172
    iget-object v4, v2, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aput-boolean v3, v4, v1

    .line 32173
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 245
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_3

    .line 246
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 248
    :cond_3
    invoke-direct {p0, v1}, Lo/getComposition;->onNavigationEvent(I)V

    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    .line 251
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .line 269
    iget-object v0, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v1, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lo/getComposition;->ICustomTabsCallback$Stub:Lo/Sequence;

    .line 33234
    invoke-virtual {v0, p1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 34109
    iget v0, p1, Lo/invalidateDrawable;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lo/invalidateDrawable;->asBinder:I

    .line 273
    invoke-direct {p0}, Lo/getComposition;->asBinder()V

    const/4 p1, 0x2

    .line 274
    invoke-direct {p0, p1}, Lo/getComposition;->onNavigationEvent(I)V

    .line 275
    invoke-direct {p0, p2}, Lo/getComposition;->onPostMessage(F)V

    if-eqz p3, :cond_0

    .line 277
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    invoke-virtual {p1}, Lo/invalidateDrawable;->ICustomTabsCallback()V

    .line 279
    :cond_0
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 34114
    iget p2, p1, Lo/invalidateDrawable;->asBinder:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/invalidateDrawable;->asBinder:I

    .line 34115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 32195
    iget-object v0, p0, Lo/getComposition;->ICustomTabsCallback$Stub:Lo/Sequence;

    iget-object v1, p0, Lo/getComposition;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 32234
    invoke-virtual {v0, v1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-direct {p0}, Lo/getComposition;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p2, :cond_0

    .line 356
    iget-object p2, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lo/Rule;->onNavigationEvent(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v1, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {p2, v0, v1}, Lo/playAnimation;->extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 360
    invoke-virtual {p0, p1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/getComposition;->onPostMessage:Lo/setMinFrame;

    return-object v0
.end method

.method public final onMessageChannelReady(FZ)V
    .locals 2

    .line 284
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/Rule;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 35109
    iget v1, v0, Lo/invalidateDrawable;->asBinder:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/invalidateDrawable;->asBinder:I

    .line 288
    invoke-direct {p0, p1}, Lo/getComposition;->onPostMessage(F)V

    if-eqz p2, :cond_1

    .line 290
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    invoke-virtual {p1}, Lo/invalidateDrawable;->ICustomTabsCallback()V

    .line 292
    :cond_1
    iget-object p1, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 35114
    iget p2, p1, Lo/invalidateDrawable;->asBinder:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/invalidateDrawable;->asBinder:I

    .line 35115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 297
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 36109
    iget v1, v0, Lo/invalidateDrawable;->asBinder:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lo/invalidateDrawable;->asBinder:I

    .line 298
    invoke-direct {p0}, Lo/getComposition;->asBinder()V

    .line 299
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lo/Rule;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, v1}, Lo/getComposition;->onNavigationEvent(I)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, v2}, Lo/getComposition;->onNavigationEvent(I)V

    .line 304
    :goto_0
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 36114
    iget v1, v0, Lo/invalidateDrawable;->asBinder:I

    sub-int/2addr v1, v2

    iput v1, v0, Lo/invalidateDrawable;->asBinder:I

    .line 36115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lo/getComposition;->onPostMessage:Lo/setMinFrame;

    .line 37089
    iput-object p1, v0, Lo/setMinFrame;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 37090
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onPostMessage()Landroid/graphics/Rect;
    .locals 1

    .line 326
    iget-object v0, p0, Lo/getComposition;->onPostMessage:Lo/setMinFrame;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(I)Lo/LottieAnimationView;
    .locals 4

    .line 340
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 37295
    iget-object v3, v0, Lo/Rule;->ICustomTabsCallback:[Lo/LottieAnimationView;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 37296
    iget-object v1, v0, Lo/Rule;->ICustomTabsCallback:[Lo/LottieAnimationView;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    .line 37297
    iget-object v1, v0, Lo/Rule;->ICustomTabsCallback:[Lo/LottieAnimationView;

    .line 39303
    new-instance v2, Lo/Rule$5;

    invoke-direct {v2, v0, p1}, Lo/Rule$5;-><init>(Lo/Rule;I)V

    .line 37297
    aput-object v2, v1, p1

    .line 37299
    :cond_2
    iget-object v0, v0, Lo/Rule;->ICustomTabsCallback:[Lo/LottieAnimationView;

    aget-object p1, v0, p1

    .line 341
    invoke-interface {p1}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/onVisibilityChanged;

    if-eqz v0, :cond_3

    .line 342
    invoke-interface {p1}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/onVisibilityChanged;

    .line 344
    :cond_3
    invoke-interface {p1}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/fromAssets;

    if-eqz v0, :cond_4

    .line 345
    invoke-interface {p1}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/fromAssets;

    :cond_4
    return-object p1

    .line 39111
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 38111
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Lo/hasMatte;)V
    .locals 3

    .line 589
    iput-object p1, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    .line 590
    iget-object v0, p0, Lo/getComposition;->onPostMessage:Lo/setMinFrame;

    invoke-static {v0, p1}, Lo/playAnimation;->ICustomTabsCallback(Lo/LottieAnimationView;Lo/hasMatte;)V

    const/4 p1, 0x0

    .line 591
    :goto_0
    iget-object v0, p0, Lo/getComposition;->onNavigationEvent:Lo/invalidateDrawable;

    .line 40069
    iget-object v0, v0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 592
    invoke-virtual {p0, p1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    iget-object v1, p0, Lo/getComposition;->extraCallback:Lo/hasMatte;

    iget-object v2, p0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {v0, v1, v2}, Lo/playAnimation;->onPostMessage(Lo/LottieAnimationView;Lo/hasMatte;Landroid/content/res/Resources;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
