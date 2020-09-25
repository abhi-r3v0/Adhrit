.class final Lo/setAnalyticsCollectionEnabled;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final mayLaunchUrl:D

.field private static final requestPostMessageChannel:[I


# instance fields
.field final ICustomTabsCallback:Lo/AbtRegistrar;

.field final ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

.field ICustomTabsService:Lo/setFirebaseUIVersion;

.field private IPostMessageService$Stub:Lo/setFirebaseUIVersion;

.field asBinder:Landroid/graphics/drawable/Drawable;

.field asInterface:Landroid/graphics/drawable/Drawable;

.field final extraCallback:Lo/setFirebaseUIVersion;

.field private extraCommand:Landroid/graphics/drawable/Drawable;

.field getInterfaceDescriptor:Lo/useAppLanguage;

.field newSession:Landroid/graphics/drawable/LayerDrawable;

.field final onMessageChannelReady:Lo/setFirebaseUIVersion;

.field final onNavigationEvent:I

.field final onPostMessage:Landroid/graphics/Rect;

.field onRelationshipValidationResult:I

.field onTransact:Landroid/content/res/ColorStateList;

.field postMessage:Z

.field updateVisuals:Z

.field warmup:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 62
    sput-object v0, Lo/setAnalyticsCollectionEnabled;->requestPostMessageChannel:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    return-void
.end method

.method public constructor <init>(Lo/AbtRegistrar;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lo/setAnalyticsCollectionEnabled;->postMessage:Z

    .line 124
    iput-object p1, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 125
    new-instance v1, Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p4}, Lo/setFirebaseUIVersion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 1585
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v3, Lo/getUsername;

    invoke-direct {v3, p4}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 1586
    invoke-virtual {v1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 127
    iget-object p4, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p4}, Lo/setFirebaseUIVersion;->ICustomTabsCallback()V

    .line 128
    iget-object p4, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 2255
    iget-object p4, p4, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p4, p4, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 2738
    new-instance v1, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v1, p4}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget-object v2, Lo/toStringMap$newSession;->CardView:[I

    sget v3, Lo/toStringMap$onRelationshipValidationResult;->CardView:I

    .line 133
    invoke-virtual {p4, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    sget p3, Lo/toStringMap$newSession;->CardView_cardCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 136
    sget p3, Lo/toStringMap$newSession;->CardView_cardCornerRadius:I

    const/4 p4, 0x0

    .line 137
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 3140
    new-instance p4, Lo/startActivityForSignInWithProvider;

    invoke-direct {p4, p3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p4, v1, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 3154
    new-instance p4, Lo/startActivityForSignInWithProvider;

    invoke-direct {p4, p3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p4, v1, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 3168
    new-instance p4, Lo/startActivityForSignInWithProvider;

    invoke-direct {p4, p3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p4, v1, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 3182
    new-instance p4, Lo/startActivityForSignInWithProvider;

    invoke-direct {p4, p3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p4, v1, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 140
    :cond_0
    new-instance p3, Lo/setFirebaseUIVersion;

    invoke-direct {p3}, Lo/setFirebaseUIVersion;-><init>()V

    iput-object p3, p0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 3429
    new-instance p3, Lo/useAppLanguage;

    invoke-direct {p3, v1, v0}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 141
    invoke-virtual {p0, p3}, Lo/setAnalyticsCollectionEnabled;->onPostMessage(Lo/useAppLanguage;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 145
    sget p3, Lo/toStringMap$onMessageChannelReady;->mtrl_card_checked_icon_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent:I

    .line 146
    sget p3, Lo/toStringMap$onMessageChannelReady;->mtrl_card_checked_icon_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub:I

    .line 148
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private asBinder()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 582
    sget-boolean v0, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 10620
    new-instance v0, Lo/setFirebaseUIVersion;

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    invoke-direct {v0, v1}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 583
    iput-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsService:Lo/setFirebaseUIVersion;

    .line 585
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsService:Lo/setFirebaseUIVersion;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 588
    :cond_0
    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->asInterface()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private asInterface()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 593
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 11620
    new-instance v1, Lo/setFirebaseUIVersion;

    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    invoke-direct {v1, v2}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 594
    iput-object v1, p0, Lo/setAnalyticsCollectionEnabled;->IPostMessageService$Stub:Lo/setFirebaseUIVersion;

    .line 595
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 12288
    iget-object v3, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_0

    .line 12289
    iget-object v3, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v2, v3, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 12290
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 596
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->IPostMessageService$Stub:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private onRelationshipValidationResult()F
    .locals 4

    .line 512
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 513
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 514
    sget-wide v2, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v2}, Lo/AbtRegistrar;->R_()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onTransact()F
    .locals 9

    .line 538
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 6622
    iget-object v0, v0, Lo/useAppLanguage;->onPostMessage:Lo/getScaleX;

    .line 541
    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v1}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v1

    .line 7555
    instance-of v2, v0, Lo/getFirebaseAuthSettings;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    .line 7556
    sget-wide v7, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    sub-double v7, v5, v7

    float-to-double v0, v1

    mul-double v7, v7, v0

    double-to-float v0, v7

    goto :goto_0

    .line 7557
    :cond_0
    instance-of v0, v0, Lo/setLanguageCode;

    if-eqz v0, :cond_1

    div-float v0, v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 540
    :goto_0
    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 7632
    iget-object v1, v1, Lo/useAppLanguage;->onNavigationEvent:Lo/getScaleX;

    .line 543
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 544
    invoke-virtual {v2}, Lo/setFirebaseUIVersion;->asBinder()F

    move-result v2

    .line 8555
    instance-of v7, v1, Lo/getFirebaseAuthSettings;

    if-eqz v7, :cond_2

    .line 8556
    sget-wide v7, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    sub-double v7, v5, v7

    float-to-double v1, v2

    mul-double v7, v7, v1

    double-to-float v1, v7

    goto :goto_1

    .line 8557
    :cond_2
    instance-of v1, v1, Lo/setLanguageCode;

    if-eqz v1, :cond_3

    div-float v1, v2, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 539
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 8642
    iget-object v1, v1, Lo/useAppLanguage;->onMessageChannelReady:Lo/getScaleX;

    .line 547
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 548
    invoke-virtual {v2}, Lo/setFirebaseUIVersion;->onTransact()F

    move-result v2

    .line 9555
    instance-of v7, v1, Lo/getFirebaseAuthSettings;

    if-eqz v7, :cond_4

    .line 9556
    sget-wide v7, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    sub-double v7, v5, v7

    float-to-double v1, v2

    mul-double v7, v7, v1

    double-to-float v1, v7

    goto :goto_2

    .line 9557
    :cond_4
    instance-of v1, v1, Lo/setLanguageCode;

    if-eqz v1, :cond_5

    div-float v1, v2, v3

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 546
    :goto_2
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 9652
    iget-object v2, v2, Lo/useAppLanguage;->ICustomTabsCallback:Lo/getScaleX;

    .line 550
    iget-object v7, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 551
    invoke-virtual {v7}, Lo/setFirebaseUIVersion;->asInterface()F

    move-result v7

    .line 10555
    instance-of v8, v2, Lo/getFirebaseAuthSettings;

    if-eqz v8, :cond_6

    .line 10556
    sget-wide v2, Lo/setAnalyticsCollectionEnabled;->mayLaunchUrl:D

    sub-double/2addr v5, v2

    float-to-double v2, v7

    mul-double v5, v5, v2

    double-to-float v4, v5

    goto :goto_3

    .line 10557
    :cond_6
    instance-of v2, v2, Lo/setLanguageCode;

    if-eqz v2, :cond_7

    div-float v4, v7, v3

    .line 545
    :cond_7
    :goto_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method final ICustomTabsCallback()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 565
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->asBinder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    .line 569
    :cond_0
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_2

    .line 10611
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 10612
    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 10613
    sget-object v2, Lo/setAnalyticsCollectionEnabled;->requestPostMessageChannel:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 571
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    .line 574
    sget v0, Lo/toStringMap$asInterface;->mtrl_card_checked_layer_id:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 577
    :cond_2
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()V
    .locals 3

    .line 602
    sget-boolean v0, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 603
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->IPostMessageService$Stub:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_1

    .line 605
    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 13288
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v2, v1, :cond_1

    .line 13289
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v1, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 13290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method final extraCallback()V
    .locals 7

    .line 411
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 416
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 417
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->extraCommand:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method final onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_3

    .line 6493
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 6494
    invoke-virtual {p0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->onTransact()F

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 473
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 6503
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    .line 6504
    invoke-virtual {p0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->onTransact()F

    move-result v2

    :cond_4
    add-float/2addr v0, v2

    float-to-double v2, v0

    .line 474
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v6, v0

    move v7, v1

    .line 476
    :goto_3
    new-instance v0, Lo/setAnalyticsCollectionEnabled$1;

    move-object v2, v0

    move-object v3, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v7}, Lo/setAnalyticsCollectionEnabled$1;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method final onMessageChannelReady()Z
    .locals 4

    .line 524
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 526
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method final onNavigationEvent()V
    .locals 6

    .line 4520
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 328
    invoke-virtual {p0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 333
    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->onTransact()F

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 334
    :goto_3
    invoke-direct {p0}, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 336
    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-object v2, p0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/AbtRegistrar;->onPostMessage(IIII)V

    return-void
.end method

.method final onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 379
    iput-object p1, p0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    .line 382
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 385
    :cond_0
    iget-object p1, p0, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    .line 5611
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 5612
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5613
    sget-object v1, Lo/setAnalyticsCollectionEnabled;->requestPostMessageChannel:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_1
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lo/toStringMap$asInterface;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    return-void
.end method

.method final onPostMessage()V
    .locals 2

    .line 4198
    iget-boolean v0, p0, Lo/setAnalyticsCollectionEnabled;->postMessage:Z

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p0, v1}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AbtRegistrar;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-object v1, p0, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AbtRegistrar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final onPostMessage(Lo/useAppLanguage;)V
    .locals 1

    .line 423
    iput-object p1, p0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 424
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 425
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsService:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lo/setAnalyticsCollectionEnabled;->IPostMessageService$Stub:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    :cond_2
    return-void
.end method
