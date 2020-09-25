.class public final Lo/playAnimation;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 218
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 5137
    iget-object v0, p1, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    .line 223
    sget-object v1, Lo/hasMatte$onPostMessage;->extraCallback:Lo/hasMatte$onPostMessage;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Lo/fromRawRes;

    invoke-direct {v0, p0}, Lo/fromRawRes;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-static {v0, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    .line 5153
    iget p0, p1, Lo/hasMatte;->onNavigationEvent:I

    .line 6136
    iput p0, v0, Lo/fromRawRes;->ICustomTabsCallback:I

    .line 6137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 232
    throw p0
.end method

.method static ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 84
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Lo/fromAssets;

    invoke-direct {p2, p0, p1}, Lo/fromAssets;-><init>(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)V

    .line 97
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p2

    .line 88
    :cond_1
    :goto_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0
.end method

.method static ICustomTabsCallback(Lo/LottieAnimationView;Lo/hasMatte;)V
    .locals 3

    .line 145
    invoke-interface {p0}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2137
    iget-object v1, p1, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    .line 147
    sget-object v2, Lo/hasMatte$onPostMessage;->extraCallback:Lo/hasMatte$onPostMessage;

    if-ne v1, v2, :cond_1

    .line 150
    instance-of v1, v0, Lo/fromRawRes;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lo/fromRawRes;

    .line 152
    invoke-static {v0, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    .line 2153
    iget p0, p1, Lo/hasMatte;->onNavigationEvent:I

    .line 3136
    iput p0, v0, Lo/fromRawRes;->ICustomTabsCallback:I

    .line 3137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 156
    :cond_0
    sget-object v0, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    invoke-static {v0, p1}, Lo/playAnimation;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 158
    invoke-interface {p0, p1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 160
    :cond_1
    instance-of p1, v0, Lo/fromRawRes;

    if-eqz p1, :cond_2

    .line 162
    check-cast v0, Lo/fromRawRes;

    .line 164
    sget-object p1, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 165
    invoke-interface {p0, p1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 167
    sget-object p0, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    return-void
.end method

.method static extraCallback(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 257
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 7137
    iget-object v0, p1, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    .line 262
    sget-object v1, Lo/hasMatte$onPostMessage;->ICustomTabsCallback:Lo/hasMatte$onPostMessage;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    instance-of v0, p0, Lo/Sequence;

    if-eqz v0, :cond_2

    .line 266
    move-object v0, p0

    check-cast v0, Lo/Sequence;

    .line 7339
    :goto_0
    invoke-interface {v0}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 7340
    instance-of v2, v1, Lo/LottieAnimationView;

    if-eqz v2, :cond_1

    .line 7343
    move-object v0, v1

    check-cast v0, Lo/LottieAnimationView;

    goto :goto_0

    .line 267
    :cond_1
    sget-object v1, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 268
    invoke-static {v1, p1, p2}, Lo/playAnimation;->onPostMessage(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 269
    invoke-interface {v0, p1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0

    .line 272
    :cond_2
    :try_start_1
    invoke-static {p0, p1, p2}, Lo/playAnimation;->onPostMessage(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0

    :cond_3
    :goto_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 276
    throw p0
.end method

.method static onMessageChannelReady(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Lo/playAnimation;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;
    .locals 2

    .line 123
    sget-object v0, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 1067
    invoke-static {v0, p1, v1}, Lo/playAnimation;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 125
    invoke-interface {p0, p1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 127
    check-cast p1, Lo/fromAssets;

    return-object p1

    .line 1231
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parent has no child drawable!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 291
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 293
    new-instance v0, Lo/isMergePathsEnabledForKitKatAndAbove;

    .line 295
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lo/isMergePathsEnabledForKitKatAndAbove;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 296
    invoke-static {v0, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    return-object v0

    .line 298
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_1

    .line 299
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 300
    new-instance p2, Lo/setAnimationFromUrl;

    invoke-direct {p2, p0}, Lo/setAnimationFromUrl;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 302
    invoke-static {p2, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    return-object p2

    .line 304
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    .line 306
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 8060
    new-instance p2, Lo/setCacheComposition;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-direct {p2, p0}, Lo/setCacheComposition;-><init>(I)V

    .line 308
    invoke-static {p2, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    return-object p2

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    .line 311
    invoke-static {p2, v0, p1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static onPostMessage(Lo/LottieAnimationView;Lo/hasMatte;Landroid/content/res/Resources;)V
    .locals 3

    .line 3339
    :goto_0
    invoke-interface {p0}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3340
    instance-of v1, v0, Lo/LottieAnimationView;

    if-eqz v1, :cond_0

    .line 3343
    move-object p0, v0

    check-cast p0, Lo/LottieAnimationView;

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p0}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 4137
    iget-object v1, p1, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    .line 188
    sget-object v2, Lo/hasMatte$onPostMessage;->ICustomTabsCallback:Lo/hasMatte$onPostMessage;

    if-ne v1, v2, :cond_2

    .line 191
    instance-of v1, v0, Lo/enableMergePathsForKitKatAndAbove;

    if-eqz v1, :cond_1

    .line 192
    check-cast v0, Lo/enableMergePathsForKitKatAndAbove;

    .line 193
    invoke-static {v0, p1}, Lo/playAnimation;->onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    .line 196
    sget-object v1, Lo/playAnimation;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-static {v0, p1, p2}, Lo/playAnimation;->onPostMessage(Landroid/graphics/drawable/Drawable;Lo/hasMatte;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 198
    invoke-interface {p0, p1}, Lo/LottieAnimationView;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 200
    :cond_2
    instance-of p0, v0, Lo/enableMergePathsForKitKatAndAbove;

    if-eqz p0, :cond_3

    .line 202
    check-cast v0, Lo/enableMergePathsForKitKatAndAbove;

    const/4 p0, 0x0

    .line 4328
    invoke-interface {v0, p0}, Lo/enableMergePathsForKitKatAndAbove;->onNavigationEvent(Z)V

    .line 4329
    invoke-interface {v0}, Lo/enableMergePathsForKitKatAndAbove;->onPostMessage()V

    const/4 p1, 0x0

    .line 4330
    invoke-interface {v0, p0, p1}, Lo/enableMergePathsForKitKatAndAbove;->onMessageChannelReady(IF)V

    .line 4331
    invoke-interface {v0, p1}, Lo/enableMergePathsForKitKatAndAbove;->extraCallback(F)V

    .line 4332
    invoke-interface {v0, p0}, Lo/enableMergePathsForKitKatAndAbove;->ICustomTabsCallback(Z)V

    .line 4333
    invoke-interface {v0, p0}, Lo/enableMergePathsForKitKatAndAbove;->onMessageChannelReady(Z)V

    :cond_3
    return-void
.end method

.method private static onPostMessage(Lo/enableMergePathsForKitKatAndAbove;Lo/hasMatte;)V
    .locals 2

    .line 8067
    iget-boolean v0, p1, Lo/hasMatte;->onMessageChannelReady:Z

    .line 318
    invoke-interface {p0, v0}, Lo/enableMergePathsForKitKatAndAbove;->onNavigationEvent(Z)V

    .line 8121
    iget-object v0, p1, Lo/hasMatte;->extraCallback:[F

    .line 319
    invoke-interface {p0, v0}, Lo/enableMergePathsForKitKatAndAbove;->onMessageChannelReady([F)V

    .line 8212
    iget v0, p1, Lo/hasMatte;->onTransact:I

    .line 9197
    iget v1, p1, Lo/hasMatte;->ICustomTabsCallback:F

    .line 320
    invoke-interface {p0, v0, v1}, Lo/enableMergePathsForKitKatAndAbove;->onMessageChannelReady(IF)V

    .line 9241
    iget p1, p1, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    .line 321
    invoke-interface {p0, p1}, Lo/enableMergePathsForKitKatAndAbove;->extraCallback(F)V

    const/4 p1, 0x0

    .line 322
    invoke-interface {p0, p1}, Lo/enableMergePathsForKitKatAndAbove;->ICustomTabsCallback(Z)V

    .line 323
    invoke-interface {p0, p1}, Lo/enableMergePathsForKitKatAndAbove;->onMessageChannelReady(Z)V

    return-void
.end method
