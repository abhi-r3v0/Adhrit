.class public final Lo/removeIdTokenListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createUserWithEmailAndPassword$extraCallback;


# static fields
.field private static final setDefaultImpl:Z


# instance fields
.field private AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

.field private AudioAttributesImplApi21Parcelizer:Z

.field public ICustomTabsCallback:Z

.field public ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

.field public ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Typeface;

.field public ICustomTabsService:Lo/createUserWithEmailAndPassword;

.field public ICustomTabsService$Stub:[I

.field public ICustomTabsService$Stub$Proxy:Z

.field public INotificationSideChannel:Landroid/content/res/ColorStateList;

.field private INotificationSideChannel$Default:F

.field private INotificationSideChannel$Stub:F

.field private INotificationSideChannel$Stub$Proxy:I

.field public IPostMessageService:Landroid/animation/TimeInterpolator;

.field public final IPostMessageService$Stub:Landroid/text/TextPaint;

.field public IPostMessageService$Stub$Proxy:F

.field private IconCompatParcelizer:F

.field private MediaBrowserCompat:F

.field private RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

.field public asBinder:I

.field public asInterface:F

.field public cancel:F

.field public cancelAll:F

.field private disconnect:F

.field public final extraCallback:Landroid/view/View;

.field public extraCommand:F

.field private final getDefaultImpl:Landroid/graphics/RectF;

.field public getInterfaceDescriptor:F

.field public mayLaunchUrl:F

.field public newSession:F

.field public notify:Landroid/animation/TimeInterpolator;

.field public final onMessageChannelReady:Landroid/graphics/Rect;

.field public onNavigationEvent:F

.field public final onPostMessage:Landroid/graphics/Rect;

.field public onRelationshipValidationResult:Landroid/content/res/ColorStateList;

.field public onTransact:F

.field public postMessage:Landroid/graphics/Bitmap;

.field private read:Landroid/graphics/Typeface;

.field public requestPostMessageChannel:Landroid/graphics/Paint;

.field public updateVisuals:Z

.field public final validateRelationship:Landroid/text/TextPaint;

.field public warmup:Ljava/lang/CharSequence;

.field private write:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/removeIdTokenListener;->setDefaultImpl:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 79
    iput v0, p0, Lo/removeIdTokenListener;->asBinder:I

    .line 80
    iput v0, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub$Proxy:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 81
    iput v0, p0, Lo/removeIdTokenListener;->onTransact:F

    .line 82
    iput v0, p0, Lo/removeIdTokenListener;->asInterface:F

    .line 132
    iput-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    .line 134
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    .line 135
    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    .line 138
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 139
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/removeIdTokenListener;->getDefaultImpl:Landroid/graphics/RectF;

    return-void
.end method

.method private ICustomTabsCallback(F)V
    .locals 1

    .line 634
    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->extraCallback(F)V

    .line 637
    sget-boolean p1, Lo/removeIdTokenListener;->setDefaultImpl:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lo/removeIdTokenListener;->extraCommand:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/removeIdTokenListener;->updateVisuals:Z

    if-eqz p1, :cond_1

    .line 641
    invoke-direct {p0}, Lo/removeIdTokenListener;->onRelationshipValidationResult()V

    .line 644
    :cond_1
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method private extraCallback()F
    .locals 4

    .line 215
    iget-object v0, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    .line 5240
    iget v1, p0, Lo/removeIdTokenListener;->asInterface:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5241
    iget-object v1, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    iget-object v0, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private extraCallback(F)V
    .locals 9

    .line 649
    iget-object v0, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 654
    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 660
    iget v2, p0, Lo/removeIdTokenListener;->asInterface:F

    sub-float v2, p1, v2

    .line 24787
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 661
    iget p1, p0, Lo/removeIdTokenListener;->asInterface:F

    .line 662
    iput v6, p0, Lo/removeIdTokenListener;->extraCommand:F

    .line 663
    iget-object v1, p0, Lo/removeIdTokenListener;->AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

    iget-object v2, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_2

    .line 664
    iput-object v2, p0, Lo/removeIdTokenListener;->AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    .line 669
    :cond_3
    iget v2, p0, Lo/removeIdTokenListener;->onTransact:F

    .line 670
    iget-object v7, p0, Lo/removeIdTokenListener;->AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

    iget-object v8, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Typeface;

    if-eq v7, v8, :cond_4

    .line 671
    iput-object v8, p0, Lo/removeIdTokenListener;->AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 674
    :goto_1
    iget v8, p0, Lo/removeIdTokenListener;->onTransact:F

    sub-float v8, p1, v8

    .line 25787
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 676
    iput v6, p0, Lo/removeIdTokenListener;->extraCommand:F

    goto :goto_3

    .line 679
    :cond_6
    iget v3, p0, Lo/removeIdTokenListener;->onTransact:F

    div-float/2addr p1, v3

    iput p1, p0, Lo/removeIdTokenListener;->extraCommand:F

    .line 682
    :goto_3
    iget p1, p0, Lo/removeIdTokenListener;->asInterface:F

    iget v3, p0, Lo/removeIdTokenListener;->onTransact:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_7

    div-float/2addr v0, p1

    .line 691
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    move p1, v2

    move v1, v7

    :goto_5
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a

    .line 699
    iget v2, p0, Lo/removeIdTokenListener;->MediaBrowserCompat:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub$Proxy:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v1, 0x1

    .line 700
    :goto_7
    iput p1, p0, Lo/removeIdTokenListener;->MediaBrowserCompat:F

    .line 701
    iput-boolean v5, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub$Proxy:Z

    .line 704
    :cond_a
    iget-object p1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    if-eqz v1, :cond_d

    .line 705
    :cond_b
    iget-object p1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    iget v1, p0, Lo/removeIdTokenListener;->MediaBrowserCompat:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 706
    iget-object p1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/removeIdTokenListener;->AudioAttributesCompatParcelizer:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 708
    iget-object p1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    iget v1, p0, Lo/removeIdTokenListener;->extraCommand:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 711
    iget-object p1, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    iget-object v1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 712
    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 713
    iget-object v0, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 714
    iput-object p1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    .line 715
    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lo/removeIdTokenListener;->AudioAttributesImplApi21Parcelizer:Z

    :cond_d
    return-void
.end method

.method private onNavigationEvent(F)V
    .locals 8

    .line 446
    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onPostMessage(F)V

    .line 447
    iget v0, p0, Lo/removeIdTokenListener;->IconCompatParcelizer:F

    iget v1, p0, Lo/removeIdTokenListener;->write:F

    iget-object v2, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_0

    .line 11816
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    sub-float/2addr v1, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 447
    iput v0, p0, Lo/removeIdTokenListener;->newSession:F

    .line 448
    iget v0, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub:F

    iget v1, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Default:F

    iget-object v2, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_1

    .line 12816
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    sub-float/2addr v1, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 448
    iput v0, p0, Lo/removeIdTokenListener;->getInterfaceDescriptor:F

    .line 450
    iget v0, p0, Lo/removeIdTokenListener;->onTransact:F

    iget v1, p0, Lo/removeIdTokenListener;->asInterface:F

    iget-object v2, p0, Lo/removeIdTokenListener;->notify:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 13816
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    sub-float/2addr v1, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 450
    invoke-direct {p0, v0}, Lo/removeIdTokenListener;->ICustomTabsCallback(F)V

    .line 453
    iget-object v0, p0, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 456
    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    .line 14487
    :cond_3
    iget-object v3, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub:[I

    if-eqz v3, :cond_4

    .line 14488
    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_3

    .line 14490
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 15479
    :goto_3
    iget-object v3, p0, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    .line 15487
    :cond_5
    iget-object v4, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub:[I

    if-eqz v4, :cond_6

    .line 15488
    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_4

    .line 15490
    :cond_6
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 457
    :goto_4
    invoke-static {v1, v3, p1}, Lo/removeIdTokenListener;->onPostMessage(IIF)I

    move-result v1

    goto :goto_6

    .line 459
    :cond_7
    iget-object v1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    if-nez v0, :cond_8

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_6

    .line 16487
    :cond_8
    iget-object v3, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub:[I

    if-eqz v3, :cond_9

    .line 16488
    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_5

    .line 16490
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_5
    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 459
    :goto_6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    iget v1, p0, Lo/removeIdTokenListener;->cancelAll:F

    mul-float v1, v1, p1

    const/4 v3, 0x0

    add-float/2addr v1, v3

    .line 463
    iget v4, p0, Lo/removeIdTokenListener;->cancel:F

    mul-float v4, v4, p1

    add-float/2addr v4, v3

    .line 464
    iget v5, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub$Proxy:F

    mul-float v5, v5, p1

    add-float/2addr v5, v3

    .line 467
    iget-object v3, p0, Lo/removeIdTokenListener;->INotificationSideChannel:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_7

    .line 20487
    :cond_a
    iget-object v6, p0, Lo/removeIdTokenListener;->ICustomTabsService$Stub:[I

    if-eqz v6, :cond_b

    .line 20488
    invoke-virtual {v3, v6, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_7

    .line 20490
    :cond_b
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 466
    :goto_7
    invoke-static {v2, v3, p1}, Lo/removeIdTokenListener;->onPostMessage(IIF)I

    move-result p1

    .line 462
    invoke-virtual {v0, v1, v4, v5, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 469
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 822
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationEvent(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 625
    iget-object v0, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    .line 626
    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 627
    sget-object v0, Lo/newPercentageRating;->ICustomTabsCallback:Lo/getRatingStyle;

    goto :goto_1

    :cond_1
    sget-object v0, Lo/newPercentageRating;->extraCallback:Lo/getRatingStyle;

    .line 630
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lo/getRatingStyle;->onPostMessage(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private static onPostMessage(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 806
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 807
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 808
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 809
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 810
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private onPostMessage()V
    .locals 11

    .line 494
    iget v0, p0, Lo/removeIdTokenListener;->MediaBrowserCompat:F

    .line 497
    iget v1, p0, Lo/removeIdTokenListener;->asInterface:F

    invoke-direct {p0, v1}, Lo/removeIdTokenListener;->extraCallback(F)V

    .line 498
    iget-object v1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    .line 499
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 500
    :goto_0
    iget v4, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub$Proxy:I

    iget-boolean v5, p0, Lo/removeIdTokenListener;->AudioAttributesImplApi21Parcelizer:Z

    .line 501
    invoke-static {v4, v5}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 513
    iget-object v5, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v9, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 514
    iget-object v9, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 515
    iget-object v9, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Default:F

    goto :goto_1

    .line 506
    :cond_1
    iget-object v5, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Default:F

    goto :goto_1

    .line 509
    :cond_2
    iget-object v5, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Default:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    .line 527
    iget-object v1, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lo/removeIdTokenListener;->write:F

    goto :goto_2

    .line 523
    :cond_3
    iget-object v4, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lo/removeIdTokenListener;->write:F

    goto :goto_2

    .line 520
    :cond_4
    iget-object v4, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lo/removeIdTokenListener;->write:F

    .line 531
    :goto_2
    iget v1, p0, Lo/removeIdTokenListener;->onTransact:F

    invoke-direct {p0, v1}, Lo/removeIdTokenListener;->extraCallback(F)V

    .line 532
    iget-object v1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 533
    :cond_5
    iget v1, p0, Lo/removeIdTokenListener;->asBinder:I

    iget-boolean v2, p0, Lo/removeIdTokenListener;->AudioAttributesImplApi21Parcelizer:Z

    .line 534
    invoke-static {v1, v2}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    .line 546
    iget-object v2, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v4, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 547
    iget-object v4, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    .line 548
    iget-object v4, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub:F

    goto :goto_3

    .line 539
    :cond_6
    iget-object v2, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub:F

    goto :goto_3

    .line 542
    :cond_7
    iget-object v2, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    .line 560
    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lo/removeIdTokenListener;->IconCompatParcelizer:F

    goto :goto_4

    .line 556
    :cond_8
    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lo/removeIdTokenListener;->IconCompatParcelizer:F

    goto :goto_4

    .line 553
    :cond_9
    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iput v1, p0, Lo/removeIdTokenListener;->IconCompatParcelizer:F

    .line 20776
    :goto_4
    iget-object v1, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 20777
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 20778
    iput-object v1, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    .line 567
    :cond_a
    invoke-direct {p0, v0}, Lo/removeIdTokenListener;->ICustomTabsCallback(F)V

    return-void
.end method

.method private onPostMessage(F)V
    .locals 4

    .line 571
    iget-object v0, p0, Lo/removeIdTokenListener;->getDefaultImpl:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_0

    .line 20816
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    sub-float/2addr v2, v1

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 572
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 573
    iget-object v0, p0, Lo/removeIdTokenListener;->getDefaultImpl:Landroid/graphics/RectF;

    iget v1, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub:F

    iget v2, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Default:F

    iget-object v3, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_1

    .line 21816
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    sub-float/2addr v2, v1

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 573
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 574
    iget-object v0, p0, Lo/removeIdTokenListener;->getDefaultImpl:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_2

    .line 22816
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    sub-float/2addr v2, v1

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 575
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 576
    iget-object v0, p0, Lo/removeIdTokenListener;->getDefaultImpl:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 23816
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float/2addr v2, v1

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 577
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private onRelationshipValidationResult()V
    .locals 9

    .line 721
    iget-object v0, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, v0}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    .line 726
    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iput v0, p0, Lo/removeIdTokenListener;->mayLaunchUrl:F

    .line 727
    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iput v0, p0, Lo/removeIdTokenListener;->disconnect:F

    .line 729
    iget-object v0, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 730
    iget v1, p0, Lo/removeIdTokenListener;->disconnect:F

    iget v2, p0, Lo/removeIdTokenListener;->mayLaunchUrl:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 736
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    .line 738
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 739
    iget-object v3, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 741
    iget-object v0, p0, Lo/removeIdTokenListener;->requestPostMessageChannel:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 743
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/removeIdTokenListener;->requestPostMessageChannel:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 245
    iget-object v0, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/removeIdTokenListener;->ICustomTabsCallback:Z

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 264
    iget v0, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub$Proxy:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Lo/removeIdTokenListener;->INotificationSideChannel$Stub$Proxy:I

    .line 6748
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 6751
    invoke-direct {p0}, Lo/removeIdTokenListener;->onPostMessage()V

    .line 7442
    iget p1, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 762
    iget-object v0, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    :cond_0
    iput-object p1, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 764
    iput-object p1, p0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    .line 26776
    iget-object v0, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 26777
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26778
    iput-object p1, p0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    .line 766
    :cond_1
    invoke-virtual {p0}, Lo/removeIdTokenListener;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public final extraCallback(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 175
    iput-object p1, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 2748
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 2751
    invoke-direct {p0}, Lo/removeIdTokenListener;->onPostMessage()V

    .line 3442
    iget p1, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Landroid/graphics/Typeface;)V
    .locals 4

    .line 8365
    iget-object v0, p0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9064
    iput-boolean v1, v0, Lo/createUserWithEmailAndPassword;->onMessageChannelReady:Z

    .line 8368
    :cond_0
    iget-object v0, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 8369
    iput-object p1, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9382
    :goto_0
    iget-object v3, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Typeface;

    if-eq v3, p1, :cond_2

    .line 9383
    iput-object p1, p0, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 9748
    :cond_3
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    .line 9751
    invoke-direct {p0}, Lo/removeIdTokenListener;->onPostMessage()V

    .line 10442
    iget p1, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_4
    return-void
.end method

.method public final onMessageChannelReady()F
    .locals 2

    .line 229
    iget-object v0, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    .line 6240
    iget v1, p0, Lo/removeIdTokenListener;->asInterface:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6241
    iget-object v1, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 231
    iget-object v0, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public final onMessageChannelReady(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 407
    :cond_1
    :goto_0
    iget v0, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 408
    iput p1, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    .line 11442
    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 748
    iget-object v0, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 751
    invoke-direct {p0}, Lo/removeIdTokenListener;->onPostMessage()V

    .line 26442
    iget v0, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    invoke-direct {p0, v0}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    .line 1748
    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 1751
    invoke-direct {p0}, Lo/removeIdTokenListener;->onPostMessage()V

    .line 2442
    iget p1, p0, Lo/removeIdTokenListener;->onNavigationEvent:F

    invoke-direct {p0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/graphics/RectF;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lo/removeIdTokenListener;->RemoteActionCompatParcelizer:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lo/removeIdTokenListener;->onNavigationEvent(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 207
    iget-object v1, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 208
    invoke-direct {p0}, Lo/removeIdTokenListener;->extraCallback()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 209
    iget-object v1, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    .line 210
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lo/removeIdTokenListener;->extraCallback()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 211
    iget-object v0, p0, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 4229
    iget-object v1, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    .line 4240
    iget v2, p0, Lo/removeIdTokenListener;->asInterface:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4241
    iget-object v2, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4231
    iget-object v1, p0, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 211
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final onNavigationEvent(Landroid/graphics/Typeface;)V
    .locals 2

    .line 27365
    iget-object v0, p0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 28064
    iput-boolean v1, v0, Lo/createUserWithEmailAndPassword;->onMessageChannelReady:Z

    .line 27368
    :cond_0
    iget-object v0, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 27369
    iput-object p1, p0, Lo/removeIdTokenListener;->read:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 27343
    invoke-virtual {p0}, Lo/removeIdTokenListener;->onNavigationEvent()V

    :cond_2
    return-void
.end method
