.class public Lo/FirebaseAuthWebException;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseAuthWebException$onMessageChannelReady;,
        Lo/FirebaseAuthWebException$onNavigationEvent;,
        Lo/FirebaseAuthWebException$extraCallback;,
        Lo/FirebaseAuthWebException$onPostMessage;
    }
.end annotation


# static fields
.field private static final requestPostMessageChannel:I


# instance fields
.field private final AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

.field private AudioAttributesImplApi21Parcelizer:Landroid/view/View$OnLongClickListener;

.field private AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

.field ICustomTabsCallback:Z

.field ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field final ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

.field final ICustomTabsService:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lo/FirebaseAuthWebException$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:I

.field private final INotificationSideChannel$Stub:I

.field private final INotificationSideChannel$Stub$Proxy:Landroid/graphics/Rect;

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Landroid/content/res/ColorStateList;

.field private IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

.field private IconCompatParcelizer:Landroid/content/res/ColorStateList;

.field private MediaBrowserCompat:Z

.field private MediaBrowserCompat$CallbackHandler:I

.field private MediaBrowserCompat$ConnectionCallback:I

.field private MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

.field private RemoteActionCompatParcelizer:Landroid/graphics/Typeface;

.field asBinder:Z

.field asInterface:Z

.field private final cancel:I

.field private final cancelAll:I

.field private connect:I

.field private disconnect:Landroid/graphics/PorterDuff$Mode;

.field extraCallback:Landroid/widget/EditText;

.field private extraCommand:Ljava/lang/CharSequence;

.field private final getDefaultImpl:I

.field private getExtras:Landroid/graphics/PorterDuff$Mode;

.field final getInterfaceDescriptor:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lo/FirebaseAuthWebException$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private getItem:Landroid/graphics/drawable/Drawable;

.field private final getNotifyChildrenChangedOptions:I

.field private getRoot:Z

.field private final getServiceComponent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/FirebaseAuthWeakPasswordException;",
            ">;"
        }
    .end annotation
.end field

.field private getSessionToken:Z

.field private handleMessage:Landroid/content/res/ColorStateList;

.field private isConnected:Landroid/content/res/ColorStateList;

.field private final mayLaunchUrl:Landroid/widget/FrameLayout;

.field newSession:I

.field private notify:Lo/useAppLanguage;

.field private final onConnected:I

.field private final onConnectionFailed:I

.field private onConnectionSuspended:Z

.field private onError:Landroid/animation/ValueAnimator;

.field final onMessageChannelReady:Landroid/widget/FrameLayout;

.field final onNavigationEvent:Lo/getReason;

.field onPostMessage:Z

.field private onProgressUpdate:Z

.field onRelationshipValidationResult:Lo/setFirebaseUIVersion;

.field onTransact:Landroid/widget/TextView;

.field final postMessage:Lo/removeIdTokenListener;

.field private read:Z

.field private final search:Lo/addIdTokenListener;

.field private sendCustomAction:Landroid/content/res/ColorStateList;

.field private final setCallbacksMessenger:I

.field private final setDefaultImpl:Landroid/graphics/Rect;

.field private final setInternalConnectionCallback:I

.field private subscribe:Landroid/graphics/drawable/Drawable;

.field private unsubscribe:Landroid/view/View$OnLongClickListener;

.field updateVisuals:Z

.field private validateRelationship:I

.field warmup:I

.field private final write:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_Design_TextInputLayout:I

    sput v0, Lo/FirebaseAuthWebException;->requestPostMessageChannel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0}, Lo/FirebaseAuthWebException;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 396
    sget v0, Lo/toStringMap$extraCallback;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/FirebaseAuthWebException;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 400
    sget v1, Lo/FirebaseAuthWebException;->requestPostMessageChannel:I

    move-object/from16 v2, p1

    invoke-static {v2, v7, v8, v1}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v1, Lo/getReason;

    invoke-direct {v1, v0}, Lo/getReason;-><init>(Lo/FirebaseAuthWebException;)V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 235
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->setDefaultImpl:Landroid/graphics/Rect;

    .line 236
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/Rect;

    .line 237
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->write:Landroid/graphics/RectF;

    .line 349
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->ICustomTabsService:Ljava/util/LinkedHashSet;

    const/4 v9, 0x0

    .line 352
    iput v9, v0, Lo/FirebaseAuthWebException;->connect:I

    .line 353
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    .line 355
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->getInterfaceDescriptor:Ljava/util/LinkedHashSet;

    .line 382
    new-instance v1, Lo/removeIdTokenListener;

    invoke-direct {v1, v0}, Lo/removeIdTokenListener;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    .line 404
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 406
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 408
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    .line 409
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 410
    iget-object v1, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    .line 412
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const v4, 0x800015

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v1, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 419
    iget-object v1, v0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    sget-object v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    .line 4143
    iput-object v2, v1, Lo/removeIdTokenListener;->notify:Landroid/animation/TimeInterpolator;

    .line 4144
    invoke-virtual {v1}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 420
    iget-object v1, v0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    sget-object v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    .line 4148
    iput-object v2, v1, Lo/removeIdTokenListener;->IPostMessageService:Landroid/animation/TimeInterpolator;

    .line 4149
    invoke-virtual {v1}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 421
    iget-object v1, v0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Lo/removeIdTokenListener;->ICustomTabsCallback(I)V

    .line 423
    sget-object v12, Lo/toStringMap$newSession;->TextInputLayout:[I

    sget v13, Lo/FirebaseAuthWebException;->requestPostMessageChannel:I

    const/4 v1, 0x5

    new-array v6, v1, [I

    sget v1, Lo/toStringMap$newSession;->TextInputLayout_counterTextAppearance:I

    aput v1, v6, v9

    sget v1, Lo/toStringMap$newSession;->TextInputLayout_counterOverflowTextAppearance:I

    aput v1, v6, v11

    sget v1, Lo/toStringMap$newSession;->TextInputLayout_errorTextAppearance:I

    const/4 v14, 0x2

    aput v1, v6, v14

    sget v1, Lo/toStringMap$newSession;->TextInputLayout_helperTextTextAppearance:I

    const/4 v15, 0x3

    aput v1, v6, v15

    sget v1, Lo/toStringMap$newSession;->TextInputLayout_hintTextAppearance:I

    const/4 v2, 0x4

    aput v1, v6, v2

    .line 5120
    invoke-static {v10, v7, v8, v13}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, p3

    move v5, v13

    .line 5123
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 5126
    invoke-static {v10, v7, v12, v8, v13}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 436
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintEnabled:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lo/FirebaseAuthWebException;->asInterface:Z

    .line 437
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setHint(Ljava/lang/CharSequence;)V

    .line 438
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lo/FirebaseAuthWebException;->onConnectionSuspended:Z

    .line 440
    sget v2, Lo/FirebaseAuthWebException;->requestPostMessageChannel:I

    .line 5454
    new-instance v3, Lo/startActivityForSignInWithProvider;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    invoke-static {v10, v7, v8, v2, v3}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object v2

    .line 6429
    new-instance v3, Lo/useAppLanguage;

    invoke-direct {v3, v2, v9}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 441
    iput-object v3, v0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    .line 445
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/toStringMap$onMessageChannelReady;->mtrl_textinput_box_label_cutout_padding:I

    .line 446
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->cancelAll:I

    .line 447
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 448
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->cancel:I

    .line 450
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxStrokeWidth:I

    .line 454
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lo/toStringMap$onMessageChannelReady;->mtrl_textinput_box_stroke_width_default:I

    .line 455
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 451
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->getDefaultImpl:I

    .line 456
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxStrokeWidthFocused:I

    .line 460
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lo/toStringMap$onMessageChannelReady;->mtrl_textinput_box_stroke_width_focused:I

    .line 461
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 457
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub:I

    .line 462
    iget v2, v0, Lo/FirebaseAuthWebException;->getDefaultImpl:I

    iput v2, v0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    .line 464
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxCornerRadiusTopStart:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 465
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    .line 466
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 467
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    .line 468
    sget v6, Lo/toStringMap$newSession;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 469
    invoke-virtual {v1, v6, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v6

    .line 470
    sget v7, Lo/toStringMap$newSession;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 471
    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v3

    .line 472
    iget-object v7, v0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    .line 6738
    new-instance v8, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v8, v7}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    cmpl-float v7, v2, v4

    if-ltz v7, :cond_0

    .line 7140
    new-instance v7, Lo/startActivityForSignInWithProvider;

    invoke-direct {v7, v2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v7, v8, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    :cond_0
    cmpl-float v2, v5, v4

    if-ltz v2, :cond_1

    .line 7154
    new-instance v2, Lo/startActivityForSignInWithProvider;

    invoke-direct {v2, v5}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v2, v8, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    :cond_1
    cmpl-float v2, v6, v4

    if-ltz v2, :cond_2

    .line 7168
    new-instance v2, Lo/startActivityForSignInWithProvider;

    invoke-direct {v2, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v2, v8, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    :cond_2
    cmpl-float v2, v3, v4

    if-ltz v2, :cond_3

    .line 7182
    new-instance v2, Lo/startActivityForSignInWithProvider;

    invoke-direct {v2, v3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v2, v8, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 7429
    :cond_3
    new-instance v2, Lo/useAppLanguage;

    invoke-direct {v2, v8, v9}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 485
    iput-object v2, v0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    .line 487
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxBackgroundColor:I

    .line 488
    invoke-static {v10, v1, v2}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const v3, 0x1010367

    const v4, -0x101009e

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    .line 491
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    iput v6, v0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$CallbackHandler:I

    .line 492
    iput v6, v0, Lo/FirebaseAuthWebException;->newSession:I

    .line 493
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v6, v11, [I

    aput v4, v6, v9

    .line 495
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lo/FirebaseAuthWebException;->setInternalConnectionCallback:I

    new-array v6, v11, [I

    aput v3, v6, v9

    .line 498
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->onConnectionFailed:I

    goto :goto_0

    .line 501
    :cond_4
    sget v2, Lo/toStringMap$onPostMessage;->mtrl_filled_background_color:I

    .line 502
    invoke-static {v10, v2}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    new-array v6, v11, [I

    aput v4, v6, v9

    .line 504
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lo/FirebaseAuthWebException;->setInternalConnectionCallback:I

    new-array v6, v11, [I

    aput v3, v6, v9

    .line 507
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->onConnectionFailed:I

    goto :goto_0

    .line 511
    :cond_5
    iput v9, v0, Lo/FirebaseAuthWebException;->newSession:I

    .line 512
    iput v9, v0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$CallbackHandler:I

    .line 513
    iput v9, v0, Lo/FirebaseAuthWebException;->setInternalConnectionCallback:I

    .line 514
    iput v9, v0, Lo/FirebaseAuthWebException;->onConnectionFailed:I

    .line 517
    :goto_0
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 518
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_android_textColorHint:I

    .line 519
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    .line 522
    :cond_6
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxStrokeColor:I

    .line 523
    invoke-static {v10, v1, v2}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 524
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 525
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    iput v6, v0, Lo/FirebaseAuthWebException;->getNotifyChildrenChangedOptions:I

    new-array v6, v11, [I

    aput v4, v6, v9

    .line 527
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lo/FirebaseAuthWebException;->onConnected:I

    new-array v4, v11, [I

    aput v3, v4, v9

    .line 529
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lo/FirebaseAuthWebException;->setCallbacksMessenger:I

    new-array v3, v11, [I

    const v4, 0x101009c

    aput v4, v3, v9

    .line 531
    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback:I

    goto :goto_1

    .line 535
    :cond_7
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxStrokeColor:I

    .line 536
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback:I

    .line 537
    sget v2, Lo/toStringMap$onPostMessage;->mtrl_textinput_default_box_stroke_color:I

    .line 538
    invoke-static {v10, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->getNotifyChildrenChangedOptions:I

    .line 539
    sget v2, Lo/toStringMap$onPostMessage;->mtrl_textinput_disabled_color:I

    invoke-static {v10, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->onConnected:I

    .line 540
    sget v2, Lo/toStringMap$onPostMessage;->mtrl_textinput_hovered_box_stroke_color:I

    .line 541
    invoke-static {v10, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lo/FirebaseAuthWebException;->setCallbacksMessenger:I

    .line 544
    :goto_1
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v5, :cond_8

    .line 546
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setHintTextAppearance(I)V

    .line 549
    :cond_8
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_errorTextAppearance:I

    .line 550
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 551
    sget v3, Lo/toStringMap$newSession;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v6, Lo/toStringMap$asBinder;->design_text_input_end_icon:I

    iget-object v7, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    .line 556
    invoke-virtual {v4, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/addIdTokenListener;

    iput-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    .line 557
    iget-object v6, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 558
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 559
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 560
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lo/FirebaseAuthWebException;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :cond_9
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconTint:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 563
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconTint:I

    .line 564
    invoke-static {v10, v1, v4}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 563
    invoke-virtual {v0, v4}, Lo/FirebaseAuthWebException;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 567
    :cond_a
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    .line 568
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_errorIconTintMode:I

    .line 570
    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 569
    invoke-static {v4, v7}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 568
    invoke-virtual {v0, v4}, Lo/FirebaseAuthWebException;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 572
    :cond_b
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v12, Lo/toStringMap$onTransact;->error_icon_content_description:I

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 572
    invoke-virtual {v4, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-static {v4, v14}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 576
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    .line 577
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v4, v9}, Lo/addIdTokenListener;->setPressable(Z)V

    .line 578
    iget-object v4, v0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 580
    sget v4, Lo/toStringMap$newSession;->TextInputLayout_helperTextTextAppearance:I

    .line 581
    invoke-virtual {v1, v4, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 582
    sget v8, Lo/toStringMap$newSession;->TextInputLayout_helperTextEnabled:I

    .line 583
    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 584
    sget v12, Lo/toStringMap$newSession;->TextInputLayout_helperText:I

    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 586
    sget v13, Lo/toStringMap$newSession;->TextInputLayout_counterEnabled:I

    invoke-virtual {v1, v13, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 587
    sget v15, Lo/toStringMap$newSession;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v1, v15, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v0, v15}, Lo/FirebaseAuthWebException;->setCounterMaxLength(I)V

    .line 588
    sget v15, Lo/toStringMap$newSession;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v1, v15, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub:I

    .line 589
    sget v15, Lo/toStringMap$newSession;->TextInputLayout_counterOverflowTextAppearance:I

    .line 590
    invoke-virtual {v1, v15, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v0, Lo/FirebaseAuthWebException;->IPostMessageService:I

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    sget v14, Lo/toStringMap$asBinder;->design_text_input_start_icon:I

    iget-object v5, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    .line 596
    invoke-virtual {v15, v14, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/addIdTokenListener;

    iput-object v5, v0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    .line 597
    iget-object v14, v0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 598
    iget-object v5, v0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v5, v6}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 599
    invoke-virtual {v0, v7}, Lo/FirebaseAuthWebException;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v0, v7}, Lo/FirebaseAuthWebException;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 602
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 603
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/FirebaseAuthWebException;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 605
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconContentDescription:I

    .line 606
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 605
    invoke-virtual {v0, v5}, Lo/FirebaseAuthWebException;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 608
    :cond_c
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconCheckable:I

    invoke-virtual {v1, v5, v11}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lo/FirebaseAuthWebException;->setStartIconCheckable(Z)V

    .line 611
    :cond_d
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 612
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconTint:I

    .line 613
    invoke-static {v10, v1, v5}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 612
    invoke-virtual {v0, v5}, Lo/FirebaseAuthWebException;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 617
    :cond_e
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 618
    sget v5, Lo/toStringMap$newSession;->TextInputLayout_startIconTintMode:I

    const/4 v14, -0x1

    .line 620
    invoke-virtual {v1, v5, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 619
    invoke-static {v5, v7}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 618
    invoke-virtual {v0, v5}, Lo/FirebaseAuthWebException;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 623
    :cond_f
    invoke-virtual {v0, v8}, Lo/FirebaseAuthWebException;->setHelperTextEnabled(Z)V

    .line 624
    invoke-virtual {v0, v12}, Lo/FirebaseAuthWebException;->setHelperText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v0, v4}, Lo/FirebaseAuthWebException;->setHelperTextTextAppearance(I)V

    .line 626
    invoke-virtual {v0, v3}, Lo/FirebaseAuthWebException;->setErrorEnabled(Z)V

    .line 627
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setErrorTextAppearance(I)V

    .line 628
    iget v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub:I

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setCounterTextAppearance(I)V

    .line 629
    iget v2, v0, Lo/FirebaseAuthWebException;->IPostMessageService:I

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setCounterOverflowTextAppearance(I)V

    .line 631
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 632
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 634
    :cond_10
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 635
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 637
    :cond_11
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 638
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 640
    :cond_12
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 641
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 643
    :cond_13
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 644
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_counterOverflowTextColor:I

    .line 645
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 644
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 647
    :cond_14
    invoke-virtual {v0, v13}, Lo/FirebaseAuthWebException;->setCounterEnabled(Z)V

    .line 649
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_boxBackgroundMode:I

    .line 650
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 649
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setBoxBackgroundMode(I)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lo/toStringMap$asBinder;->design_text_input_end_icon:I

    iget-object v4, v0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    .line 656
    invoke-virtual {v2, v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/addIdTokenListener;

    iput-object v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 657
    iget-object v3, v0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 658
    iget-object v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v2, v6}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 659
    iget-object v2, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    new-instance v3, Lo/FirebaseAuthRegistrar;

    invoke-direct {v3, v0}, Lo/FirebaseAuthRegistrar;-><init>(Lo/FirebaseAuthWebException;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 660
    iget-object v2, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    new-instance v3, Lo/getProviderData;

    invoke-direct {v3, v0}, Lo/getProviderData;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 661
    iget-object v2, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    new-instance v3, Lo/isAnonymous;

    invoke-direct {v3, v0}, Lo/isAnonymous;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {v2, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 662
    iget-object v2, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    new-instance v3, Lo/getResolver;

    invoke-direct {v3, v0}, Lo/getResolver;-><init>(Lo/FirebaseAuthWebException;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 663
    iget-object v2, v0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    new-instance v3, Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    invoke-direct {v3, v0}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;-><init>(Lo/FirebaseAuthWebException;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 665
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 667
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconMode(I)V

    .line 669
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 670
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_15
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 673
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconContentDescription:I

    .line 674
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 673
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 676
    :cond_16
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconCheckable:I

    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconCheckable(Z)V

    goto :goto_2

    .line 677
    :cond_17
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 679
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleEnabled:I

    .line 680
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 681
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconMode(I)V

    .line 682
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleContentDescription:I

    .line 684
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 683
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 686
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleTint:I

    .line 687
    invoke-static {v10, v1, v2}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 686
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 690
    :cond_18
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 691
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleTintMode:I

    const/4 v3, -0x1

    .line 693
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 692
    invoke-static {v2, v7}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 691
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 697
    :cond_19
    :goto_2
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 699
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 700
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconTint:I

    .line 701
    invoke-static {v10, v1, v2}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 700
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 705
    :cond_1a
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 706
    sget v2, Lo/toStringMap$newSession;->TextInputLayout_endIconTintMode:I

    const/4 v3, -0x1

    .line 708
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 707
    invoke-static {v2, v7}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 706
    invoke-virtual {v0, v2}, Lo/FirebaseAuthWebException;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 712
    :cond_1b
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    const/4 v1, 0x2

    .line 716
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    .line 1740
    sget p4, Lo/toStringMap$onTransact;->character_counter_overflowed_content_description:I

    goto :goto_0

    :cond_0
    sget p4, Lo/toStringMap$onTransact;->character_counter_content_description:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1745
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 1746
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    .line 1741
    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1740
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/addIdTokenListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 3018
    invoke-static {p0}, Lo/unregisterCallbackListener;->setDefaultImpl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 3021
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 3022
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3023
    invoke-virtual {p0, v0}, Lo/addIdTokenListener;->setPressable(Z)V

    .line 3024
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 3025
    :goto_1
    invoke-static {p0, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 2985
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p3, :cond_2

    .line 2987
    :cond_0
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2990
    invoke-static {v0, p2}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 2993
    invoke-static {v0, p4}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2997
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_3

    .line 2998
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 1

    .line 1692
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1693
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lo/FirebaseAuthWebException;->onPostMessage(I)V

    :cond_1
    return-void
.end method

.method private ICustomTabsCallback$Stub$Proxy()V
    .locals 3

    .line 1950
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    if-nez v0, :cond_0

    return-void

    .line 31965
    :cond_0
    iget v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    if-ltz v0, :cond_1

    iget v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1955
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    iget v1, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 32288
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v2, v1, :cond_2

    .line 32289
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v1, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 32290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1957
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private ICustomTabsService()Lo/FirebaseAuthWeakPasswordException;
    .locals 2

    .line 2847
    iget-object v0, p0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    iget v1, p0, Lo/FirebaseAuthWebException;->connect:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FirebaseAuthWeakPasswordException;

    if-eqz v0, :cond_0

    return-object v0

    .line 2848
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWebException;->getServiceComponent:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FirebaseAuthWeakPasswordException;

    return-object v0
.end method

.method private asBinder()V
    .locals 4

    .line 1928
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    if-nez v0, :cond_0

    return-void

    .line 1932
    :cond_0
    iget-object v1, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 30961
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 30965
    iget v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    if-ltz v0, :cond_1

    iget v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 1935
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    iget v1, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    int-to-float v1, v1

    iget v2, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    invoke-virtual {v0, v1, v2}, Lo/setFirebaseUIVersion;->onNavigationEvent(FI)V

    .line 1938
    :cond_3
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->asInterface()I

    move-result v0

    iput v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    .line 1939
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 31288
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v2, v0, :cond_4

    .line 31289
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v0, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 31290
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1940
    :cond_4
    iget v0, p0, Lo/FirebaseAuthWebException;->connect:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1942
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1944
    :cond_5
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy()V

    .line 1945
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private asInterface()I
    .locals 3

    .line 1919
    iget v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    .line 1920
    iget v1, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1921
    sget v0, Lo/toStringMap$extraCallback;->colorSurface:I

    .line 30075
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lo/preferLastSpan$onTransact;->ICustomTabsCallback(Landroid/content/Context;II)I

    move-result v0

    .line 1922
    iget v1, p0, Lo/FirebaseAuthWebException;->newSession:I

    .line 30140
    invoke-static {v1, v0}, Lo/getString;->onMessageChannelReady(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private extraCallback(Landroid/graphics/RectF;)V
    .locals 2

    .line 3123
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lo/FirebaseAuthWebException;->cancelAll:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3124
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lo/FirebaseAuthWebException;->cancelAll:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 3125
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lo/FirebaseAuthWebException;->cancelAll:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3126
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lo/FirebaseAuthWebException;->cancelAll:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private extraCallback(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 41514
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42514
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2884
    invoke-static {p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2885
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 42539
    iget-object v1, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2885
    :goto_0
    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;I)V

    .line 2887
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 42894
    :cond_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    iget-object v1, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0, v1, v2, v3}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private extraCommand()V
    .locals 5

    .line 50968
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of v0, v0, Lo/getUpdatedCredential;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 3107
    :cond_1
    iget-object v0, p0, Lo/FirebaseAuthWebException;->write:Landroid/graphics/RectF;

    .line 3108
    iget-object v1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v1, v0}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/graphics/RectF;)V

    .line 3109
    invoke-direct {p0, v0}, Lo/FirebaseAuthWebException;->extraCallback(Landroid/graphics/RectF;)V

    .line 3112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3113
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    check-cast v1, Lo/getUpdatedCredential;

    .line 50969
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lo/getUpdatedCredential;->ICustomTabsCallback(FFFF)V

    return-void
.end method

.method private getInterfaceDescriptor()Z
    .locals 10

    .line 2903
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44220
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    .line 44265
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2909
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 2910
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 2911
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    .line 2912
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    .line 2913
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 2914
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    .line 2916
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2915
    invoke-static {v6}, Lo/onExtrasChanged;->onMessageChannelReady(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v0, v6

    .line 2917
    iget-object v6, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2919
    :cond_3
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-static {v0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2920
    aget-object v6, v0, v1

    iget-object v7, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_5

    .line 2921
    iget-object v6, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    aget-object v8, v0, v2

    aget-object v9, v0, v5

    aget-object v0, v0, v4

    invoke-static {v6, v7, v8, v9, v0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2925
    :cond_4
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 2927
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-static {v0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2928
    iget-object v6, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    aget-object v7, v0, v2

    aget-object v8, v0, v5

    aget-object v0, v0, v4

    invoke-static {v6, v3, v7, v8, v0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2930
    iput-object v3, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 2935
    :goto_3
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->warmup()Lo/addIdTokenListener;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2936
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_8

    .line 2937
    iget-object v3, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    .line 2938
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v3, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    .line 2940
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v7, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 2941
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 2943
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2942
    invoke-static {v6}, Lo/onExtrasChanged;->onPostMessage(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v3, v6

    .line 2944
    iget-object v6, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2946
    :cond_6
    iget-object v3, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-static {v3}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2948
    aget-object v6, v3, v5

    iget-object v7, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_7

    .line 2949
    aget-object v0, v3, v5

    iput-object v0, p0, Lo/FirebaseAuthWebException;->subscribe:Landroid/graphics/drawable/Drawable;

    .line 2950
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    aget-object v1, v3, v1

    aget-object v5, v3, v2

    aget-object v3, v3, v4

    invoke-static {v0, v1, v5, v7, v3}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    move v2, v0

    goto :goto_5

    .line 2954
    :cond_8
    iget-object v6, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    .line 2956
    iget-object v6, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-static {v6}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2957
    aget-object v5, v6, v5

    iget-object v7, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    if-ne v5, v7, :cond_9

    .line 2958
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v5, v6, v2

    iget-object v7, p0, Lo/FirebaseAuthWebException;->subscribe:Landroid/graphics/drawable/Drawable;

    aget-object v4, v6, v4

    invoke-static {v0, v1, v5, v7, v4}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    move v2, v0

    .line 2962
    :goto_4
    iput-object v3, p0, Lo/FirebaseAuthWebException;->getItem:Landroid/graphics/drawable/Drawable;

    :goto_5
    move v0, v2

    :cond_a
    return v0
.end method

.method private newSession()V
    .locals 2

    .line 2852
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsService:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FirebaseAuthWebException$onPostMessage;

    .line 2853
    invoke-interface {v1, p0}, Lo/FirebaseAuthWebException$onPostMessage;->onPostMessage(Lo/FirebaseAuthWebException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMessageChannelReady()V
    .locals 3

    .line 1122
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1124
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onRelationshipValidationResult()I

    move-result v1

    .line 1126
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 1127
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1128
    iget-object v0, p0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private onMessageChannelReady(F)V
    .locals 4

    .line 3243
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 50996
    iget v0, v0, Lo/removeIdTokenListener;->onNavigationEvent:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3246
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 3247
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    .line 3248
    sget-object v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onPostMessage:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3249
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3250
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/FirebaseAuthWebException$3;

    invoke-direct {v1, p0}, Lo/FirebaseAuthWebException$3;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3258
    :cond_1
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 50997
    iget v3, v3, Lo/removeIdTokenListener;->onNavigationEvent:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 3258
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3259
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private onMessageChannelReady(I)V
    .locals 2

    .line 2875
    iget-object v0, p0, Lo/FirebaseAuthWebException;->getInterfaceDescriptor:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FirebaseAuthWebException$extraCallback;

    .line 2876
    invoke-interface {v1, p0, p1}, Lo/FirebaseAuthWebException$extraCallback;->onMessageChannelReady(Lo/FirebaseAuthWebException;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMessageChannelReady(Z)V
    .locals 1

    .line 3085
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3086
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 3088
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->onConnectionSuspended:Z

    if-eqz p1, :cond_1

    .line 3089
    invoke-direct {p0, v0}, Lo/FirebaseAuthWebException;->onMessageChannelReady(F)V

    goto :goto_0

    .line 3091
    :cond_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {p1, v0}, Lo/removeIdTokenListener;->onMessageChannelReady(F)V

    :goto_0
    const/4 p1, 0x0

    .line 3093
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    .line 50967
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of v0, v0, Lo/getUpdatedCredential;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_3

    .line 3095
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->extraCommand()V

    :cond_3
    return-void
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 795
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 801
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of v0, v0, Lo/getUpdatedCredential;

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lo/getUpdatedCredential;

    iget-object v2, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    invoke-direct {v0, v2}, Lo/getUpdatedCredential;-><init>(Lo/useAppLanguage;)V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Lo/setFirebaseUIVersion;

    iget-object v2, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    invoke-direct {v0, v2}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 806
    :goto_0
    iput-object v1, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    return-void

    .line 813
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/FirebaseAuthWebException;->warmup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_2
    new-instance v0, Lo/setFirebaseUIVersion;

    iget-object v1, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    invoke-direct {v0, v1}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 798
    new-instance v0, Lo/setFirebaseUIVersion;

    invoke-direct {v0}, Lo/setFirebaseUIVersion;-><init>()V

    iput-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    return-void

    .line 809
    :cond_3
    iput-object v1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 810
    iput-object v1, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    return-void
.end method

.method private static onNavigationEvent(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1759
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1760
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1761
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1762
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1763
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lo/FirebaseAuthWebException;->onNavigationEvent(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iput-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 1205
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0, p1}, Lo/removeIdTokenListener;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 1207
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    if-nez p1, :cond_0

    .line 1208
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->extraCommand()V

    :cond_0
    return-void
.end method

.method private onNavigationEvent(Z)V
    .locals 3

    .line 3227
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onError:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3230
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->onConnectionSuspended:Z

    if-eqz p1, :cond_1

    .line 3231
    invoke-direct {p0, v0}, Lo/FirebaseAuthWebException;->onMessageChannelReady(F)V

    goto :goto_0

    .line 3233
    :cond_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {p1, v0}, Lo/removeIdTokenListener;->onMessageChannelReady(F)V

    .line 50987
    :goto_0
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of p1, p1, Lo/getUpdatedCredential;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 3235
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    check-cast p1, Lo/getUpdatedCredential;

    .line 50988
    iget-object p1, p1, Lo/getUpdatedCredential;->onNavigationEvent:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 50993
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of p1, p1, Lo/getUpdatedCredential;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 50990
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    check-cast p1, Lo/getUpdatedCredential;

    .line 50994
    invoke-virtual {p1, v0, v0, v0, v0}, Lo/getUpdatedCredential;->ICustomTabsCallback(FFFF)V

    .line 3238
    :cond_4
    iput-boolean v2, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    return-void
.end method

.method private onPostMessage(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1806
    :try_start_0
    invoke-static {p1, p2}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;I)V

    .line 1808
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 1809
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 1823
    sget p2, Lo/toStringMap$onRelationshipValidationResult;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, p2}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;I)V

    .line 1824
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lo/toStringMap$onPostMessage;->design_error:I

    invoke-static {p2, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private onPostMessage(Z)V
    .locals 4

    .line 3219
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 3220
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50986
    iget p1, p0, Lo/FirebaseAuthWebException;->connect:I

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 3222
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->getInterfaceDescriptor()Z

    :cond_3
    return-void
.end method

.method private onPostMessage()Z
    .locals 2

    .line 828
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onRelationshipValidationResult()I
    .locals 3

    .line 1829
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1833
    :cond_0
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 1835
    :cond_1
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0}, Lo/removeIdTokenListener;->onMessageChannelReady()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    .line 1838
    :cond_2
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0}, Lo/removeIdTokenListener;->onMessageChannelReady()F

    move-result v0

    goto :goto_0
.end method

.method private onTransact()V
    .locals 2

    .line 1790
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1791
    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lo/FirebaseAuthWebException;->IPostMessageService:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub:I

    :goto_0
    invoke-direct {p0, v0, v1}, Lo/FirebaseAuthWebException;->onPostMessage(Landroid/widget/TextView;I)V

    .line 1793
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1794
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1796
    :cond_1
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 1797
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private warmup()Lo/addIdTokenListener;
    .locals 3

    .line 2970
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2971
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    return-object v0

    .line 44871
    :cond_0
    iget v0, p0, Lo/FirebaseAuthWebException;->connect:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 45445
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 2973
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 3

    .line 1971
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget v1, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1975
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1980
    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1981
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1984
    :cond_2
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {v1}, Lo/getReason;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1986
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 32539
    iget-object v2, v1, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 1988
    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1987
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1986
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 1989
    :cond_4
    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1993
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1992
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1991
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 1997
    :cond_5
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asInterface(Landroid/graphics/drawable/Drawable;)V

    .line 1998
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_6
    :goto_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 722
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 725
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 727
    iget-object v0, p0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object p2, p0, Lo/FirebaseAuthWebException;->mayLaunchUrl:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onMessageChannelReady()V

    .line 734
    check-cast p1, Landroid/widget/EditText;

    .line 8044
    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-nez p2, :cond_9

    .line 8048
    iget p2, p0, Lo/FirebaseAuthWebException;->connect:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    instance-of p2, p1, Lo/getPhoneNumber;

    if-nez p2, :cond_0

    const-string p2, "TextInputLayout"

    const-string p3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 8049
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8055
    :cond_0
    iput-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 8786
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onNavigationEvent()V

    .line 8820
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8821
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    iget-object p2, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 8788
    :cond_1
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->extraCallback()V

    .line 8789
    iget p1, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-eqz p1, :cond_2

    .line 8790
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onMessageChannelReady()V

    .line 8057
    :cond_2
    new-instance p1, Lo/FirebaseAuthWebException$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/FirebaseAuthWebException$onMessageChannelReady;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setTextInputAccessibilityDelegate(Lo/FirebaseAuthWebException$onMessageChannelReady;)V

    .line 8060
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/removeIdTokenListener;->extraCallback(Landroid/graphics/Typeface;)V

    .line 8061
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    .line 9153
    iget p3, p1, Lo/removeIdTokenListener;->onTransact:F

    cmpl-float p3, p3, p2

    if-eqz p3, :cond_3

    .line 9154
    iput p2, p1, Lo/removeIdTokenListener;->onTransact:F

    .line 9155
    invoke-virtual {p1}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 8063
    :cond_3
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    .line 8064
    iget-object p2, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    and-int/lit8 p3, p1, -0x71

    or-int/lit8 p3, p3, 0x30

    invoke-virtual {p2, p3}, Lo/removeIdTokenListener;->ICustomTabsCallback(I)V

    .line 8066
    iget-object p2, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 9253
    iget p3, p2, Lo/removeIdTokenListener;->asBinder:I

    if-eq p3, p1, :cond_4

    .line 9254
    iput p1, p2, Lo/removeIdTokenListener;->asBinder:I

    .line 9255
    invoke-virtual {p2}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 8069
    :cond_4
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    new-instance p2, Lo/FirebaseAuthWebException$2;

    invoke-direct {p2, p0}, Lo/FirebaseAuthWebException$2;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8087
    iget-object p1, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_5

    .line 8088
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    .line 8092
    :cond_5
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    .line 8093
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8095
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/FirebaseAuthWebException;->extraCommand:Ljava/lang/CharSequence;

    .line 8096
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setHint(Ljava/lang/CharSequence;)V

    .line 8098
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8100
    :cond_6
    iput-boolean p2, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    .line 8103
    :cond_7
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 8104
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->onPostMessage(I)V

    .line 8106
    :cond_8
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback()V

    .line 8108
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {p1}, Lo/getReason;->extraCallback()V

    .line 8110
    iget-object p1, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 8111
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 8112
    iget-object p1, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 8113
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->newSession()V

    const/4 p1, 0x0

    .line 8116
    invoke-virtual {p0, p1, p2}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    return-void

    .line 8045
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "We already have an EditText, can only have one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    .line 1022
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCommand:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    const/4 v2, 0x0

    .line 1031
    iput-boolean v2, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    .line 1032
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1033
    iget-object v2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    iget-object v3, p0, Lo/FirebaseAuthWebException;->extraCommand:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1035
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1038
    iput-boolean v1, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    return-void

    :catchall_0
    move-exception p1

    .line 1037
    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1038
    iput-boolean v1, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    .line 1039
    throw p1

    .line 1023
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2091
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->updateVisuals:Z

    .line 2092
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 2093
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->updateVisuals:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 3064
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 50914
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v0, :cond_6

    .line 50915
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 50918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 50920
    iget-object v2, v0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lo/removeIdTokenListener;->ICustomTabsCallback:Z

    if-eqz v2, :cond_5

    .line 50921
    iget v7, v0, Lo/removeIdTokenListener;->newSession:F

    .line 50922
    iget v2, v0, Lo/removeIdTokenListener;->getInterfaceDescriptor:F

    .line 50924
    iget-boolean v3, v0, Lo/removeIdTokenListener;->updateVisuals:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 50929
    iget v4, v0, Lo/removeIdTokenListener;->mayLaunchUrl:F

    iget v5, v0, Lo/removeIdTokenListener;->extraCommand:F

    mul-float v4, v4, v5

    goto :goto_1

    .line 50932
    :cond_1
    iget-object v4, v0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    const/4 v4, 0x0

    .line 50933
    iget-object v5, v0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    :goto_1
    if-eqz v3, :cond_2

    add-float/2addr v2, v4

    :cond_2
    move v8, v2

    .line 50946
    iget v2, v0, Lo/removeIdTokenListener;->extraCommand:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 50947
    iget v2, v0, Lo/removeIdTokenListener;->extraCommand:F

    iget v4, v0, Lo/removeIdTokenListener;->extraCommand:F

    invoke-virtual {p1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v3, :cond_4

    .line 50952
    iget-object v2, v0, Lo/removeIdTokenListener;->postMessage:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lo/removeIdTokenListener;->requestPostMessageChannel:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 50954
    :cond_4
    iget-object v4, v0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v2, v0, Lo/removeIdTokenListener;->warmup:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v9, v0, Lo/removeIdTokenListener;->validateRelationship:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 50958
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 50960
    :cond_6
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_7

    .line 50962
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 50963
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 50964
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 3136
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->onProgressUpdate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3143
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->onProgressUpdate:Z

    .line 3145
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 3147
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 3150
    iget-object v2, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 50971
    iput-object v1, v2, Lo/removeIdTokenListener;->ICustomTabsService$Stub:[I

    .line 50979
    iget-object v1, v2, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v2, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 50980
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 50974
    invoke-virtual {v2}, Lo/removeIdTokenListener;->onNavigationEvent()V

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v1, v3

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3155
    :goto_2
    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 50981
    :goto_3
    invoke-virtual {p0, v0, v3}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    .line 3156
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback()V

    .line 3157
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->extraCallback()V

    if-eqz v1, :cond_7

    .line 3160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3163
    :cond_7
    iput-boolean v3, p0, Lo/FirebaseAuthWebException;->onProgressUpdate:Z

    return-void
.end method

.method final extraCallback()V
    .locals 6

    .line 3167
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_12

    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 3171
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3172
    :goto_1
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 3175
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3176
    iget v4, p0, Lo/FirebaseAuthWebException;->onConnected:I

    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    goto :goto_5

    .line 3177
    :cond_5
    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {v4}, Lo/getReason;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3178
    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 50983
    iget-object v5, v4, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v4, v4, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    goto :goto_4

    :cond_6
    const/4 v4, -0x1

    .line 3178
    :goto_4
    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    goto :goto_5

    .line 3179
    :cond_7
    iget-boolean v4, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 3180
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    .line 3182
    iget v4, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback:I

    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    .line 3184
    iget v4, p0, Lo/FirebaseAuthWebException;->setCallbacksMessenger:I

    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    goto :goto_5

    .line 3186
    :cond_a
    iget v4, p0, Lo/FirebaseAuthWebException;->getNotifyChildrenChangedOptions:I

    iput v4, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Default:I

    .line 3189
    :goto_5
    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 3190
    invoke-virtual {v4}, Lo/getReason;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3191
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsService()Lo/FirebaseAuthWeakPasswordException;

    move-result-object v4

    invoke-virtual {v4}, Lo/FirebaseAuthWeakPasswordException;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    .line 3189
    :goto_6
    invoke-direct {p0, v4}, Lo/FirebaseAuthWebException;->extraCallback(Z)V

    .line 50984
    iget-object v4, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 3193
    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 50985
    iget-boolean v4, v4, Lo/getReason;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_c

    .line 3194
    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 3195
    invoke-virtual {v4}, Lo/getReason;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x1

    .line 3192
    :cond_c
    invoke-direct {p0, v1}, Lo/FirebaseAuthWebException;->onPostMessage(Z)V

    if-nez v3, :cond_d

    if-eqz v0, :cond_e

    .line 3198
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3199
    iget v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub:I

    iput v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    goto :goto_7

    .line 3201
    :cond_e
    iget v0, p0, Lo/FirebaseAuthWebException;->getDefaultImpl:I

    iput v0, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel:I

    .line 3205
    :goto_7
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-ne v0, v2, :cond_11

    .line 3206
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3207
    iget v0, p0, Lo/FirebaseAuthWebException;->setInternalConnectionCallback:I

    iput v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    .line 3209
    iget v0, p0, Lo/FirebaseAuthWebException;->onConnectionFailed:I

    iput v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    goto :goto_8

    .line 3211
    :cond_10
    iget v0, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$CallbackHandler:I

    iput v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    .line 3215
    :cond_11
    :goto_8
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->asBinder()V

    :cond_12
    :goto_9
    return-void
.end method

.method final extraCallback(ZZ)V
    .locals 6

    .line 1147
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 1148
    iget-object v1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1149
    :goto_0
    iget-object v4, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1150
    :goto_1
    iget-object v3, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {v3}, Lo/getReason;->onPostMessage()Z

    move-result v3

    .line 1153
    iget-object v4, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    .line 1154
    iget-object v5, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v5, v4}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    .line 1155
    iget-object v4, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget-object v5, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lo/removeIdTokenListener;->extraCallback(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_3

    .line 1160
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget v4, p0, Lo/FirebaseAuthWebException;->onConnected:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    .line 1161
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget v4, p0, Lo/FirebaseAuthWebException;->onConnected:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lo/removeIdTokenListener;->extraCallback(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_5

    .line 1163
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    iget-object v4, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 12544
    iget-object v5, v4, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v4, v4, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 1163
    :goto_2
    invoke-virtual {v0, v4}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 1164
    :cond_5
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1165
    iget-object v4, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 1166
    iget-object v0, p0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    .line 1167
    iget-object v4, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v4, v0}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_7
    :goto_3
    if-nez v1, :cond_a

    .line 1170
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v2, :cond_a

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    if-nez p2, :cond_9

    .line 1177
    iget-boolean p2, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    if-nez p2, :cond_b

    .line 1178
    :cond_9
    invoke-direct {p0, p1}, Lo/FirebaseAuthWebException;->onNavigationEvent(Z)V

    goto :goto_5

    :cond_a
    :goto_4
    if-nez p2, :cond_c

    .line 1172
    iget-boolean p2, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    return-void

    .line 1173
    :cond_c
    :goto_6
    invoke-direct {p0, p1}, Lo/FirebaseAuthWebException;->onMessageChannelReady(Z)V

    return-void
.end method

.method public getBaseline()I
    .locals 2

    .line 1135
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onRelationshipValidationResult()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1138
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 3034
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3036
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_c

    .line 3037
    iget-object p2, p0, Lo/FirebaseAuthWebException;->setDefaultImpl:Landroid/graphics/Rect;

    .line 3038
    invoke-static {p0, p1, p2}, Lo/getPivotY;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 46056
    iget-object p1, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    if-eqz p1, :cond_0

    .line 46057
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub:I

    sub-int/2addr p1, p3

    .line 46058
    iget-object p3, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub$Proxy:Lo/setFirebaseUIVersion;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p4, p1, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3041
    :cond_0
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz p1, :cond_c

    .line 3042
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 46846
    iget-object p3, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p3, :cond_b

    .line 46849
    iget-object p3, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/Rect;

    .line 46851
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 46852
    iget p4, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    .line 46864
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 46865
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 46866
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 46854
    :cond_1
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 46855
    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onRelationshipValidationResult()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 46856
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 46859
    :cond_2
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 46860
    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lo/FirebaseAuthWebException;->cancel:I

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 46861
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 47201
    :goto_0
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 48193
    iget-object v2, p1, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    invoke-static {v2, p4, v0, v1, p3}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/graphics/Rect;IIII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 48194
    iget-object v2, p1, Lo/removeIdTokenListener;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v2, p4, v0, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 48195
    iput-boolean p5, p1, Lo/removeIdTokenListener;->ICustomTabsService$Stub$Proxy:Z

    .line 48196
    invoke-virtual {p1}, Lo/removeIdTokenListener;->ICustomTabsCallback()V

    .line 3043
    :cond_3
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 48873
    iget-object p3, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p3, :cond_a

    .line 48877
    iget-object p3, p0, Lo/FirebaseAuthWebException;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/Rect;

    .line 49223
    iget-object p4, p1, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    .line 49235
    iget v0, p1, Lo/removeIdTokenListener;->onTransact:F

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49236
    iget-object v0, p1, Lo/removeIdTokenListener;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Typeface;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49225
    iget-object p4, p1, Lo/removeIdTokenListener;->IPostMessageService$Stub:Landroid/text/TextPaint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    move-result p4

    neg-float p4, p4

    .line 48881
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 49908
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    const/4 v1, 0x0

    if-ne v0, p5, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 49909
    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, p5, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 49891
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p4, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 49893
    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 48882
    :goto_2
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 48883
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 50898
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-ne v0, p5, :cond_7

    .line 50902
    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_3

    .line 50904
    :cond_7
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    .line 48884
    :goto_3
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 50905
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 50907
    iget-object v2, p1, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-static {v2, p2, p4, v0, p3}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/graphics/Rect;IIII)Z

    move-result v2

    if-nez v2, :cond_8

    .line 50908
    iget-object v2, p1, Lo/removeIdTokenListener;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p4, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 50909
    iput-boolean p5, p1, Lo/removeIdTokenListener;->ICustomTabsService$Stub$Proxy:Z

    .line 50910
    invoke-virtual {p1}, Lo/removeIdTokenListener;->ICustomTabsCallback()V

    .line 3044
    :cond_8
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {p1}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 50913
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    instance-of p1, p1, Lo/getUpdatedCredential;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p5, 0x0

    :goto_4
    if-eqz p5, :cond_c

    .line 3048
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Z

    if-nez p1, :cond_c

    .line 3049
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->extraCommand()V

    goto :goto_5

    .line 48874
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 46847
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_c
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2143
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 34159
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 34166
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 34167
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 34168
    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-ge p2, p1, :cond_0

    .line 34169
    iget-object p2, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2146
    :goto_0
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->getInterfaceDescriptor()Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 2148
    :cond_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    new-instance p2, Lo/FirebaseAuthWebException$1;

    invoke-direct {p2, p0}, Lo/FirebaseAuthWebException$1;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method final onPostMessage(I)V
    .locals 7

    .line 1698
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    .line 1699
    iget v1, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1700
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1702
    iput-boolean v2, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    goto :goto_1

    .line 1706
    :cond_0
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-static {v1}, Lo/unregisterCallbackListener;->onTransact(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1708
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;I)V

    .line 1711
    :cond_1
    iget v1, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    if-le p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    .line 1713
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    iget v5, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    iget-boolean v6, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    .line 1712
    invoke-static {v1, v4, p1, v5, v6}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    .line 1715
    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eq v0, v1, :cond_3

    .line 1716
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    .line 1719
    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v1, :cond_3

    .line 1720
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;I)V

    .line 1724
    :cond_3
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    .line 1725
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lo/toStringMap$onTransact;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1724
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1727
    :goto_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eq v0, p1, :cond_4

    .line 29143
    invoke-virtual {p0, v2, v2}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    .line 1729
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->extraCallback()V

    .line 1730
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback()V

    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2068
    instance-of v0, p1, Lo/FirebaseAuthWebException$onNavigationEvent;

    if-nez v0, :cond_0

    .line 2069
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2072
    :cond_0
    check-cast p1, Lo/FirebaseAuthWebException$onNavigationEvent;

    .line 2073
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2074
    iget-object v0, p1, Lo/FirebaseAuthWebException$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/FirebaseAuthWebException;->setError(Ljava/lang/CharSequence;)V

    .line 2075
    iget-boolean p1, p1, Lo/FirebaseAuthWebException$onNavigationEvent;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    .line 2077
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    new-instance v0, Lo/FirebaseAuthWebException$5;

    invoke-direct {v0, p0}, Lo/FirebaseAuthWebException$5;-><init>(Lo/FirebaseAuthWebException;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2086
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 2057
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2058
    new-instance v1, Lo/FirebaseAuthWebException$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/FirebaseAuthWebException$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    .line 2059
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {v0}, Lo/getReason;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33104
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 33447
    iget-boolean v0, v0, Lo/getReason;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 33104
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 33515
    iget-object v0, v0, Lo/getReason;->onTransact:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2060
    :goto_0
    iput-object v0, v1, Lo/FirebaseAuthWebException$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 33871
    :cond_1
    iget v0, p0, Lo/FirebaseAuthWebException;->connect:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 2062
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0}, Lo/addIdTokenListener;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v1, Lo/FirebaseAuthWebException$onNavigationEvent;->onNavigationEvent:Z

    return-object v1
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 883
    iget v0, p0, Lo/FirebaseAuthWebException;->newSession:I

    if-eq v0, p1, :cond_0

    .line 884
    iput p1, p0, Lo/FirebaseAuthWebException;->newSession:I

    .line 885
    iput p1, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$CallbackHandler:I

    .line 886
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->asBinder()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .line 869
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 765
    iget v0, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-ne p1, v0, :cond_0

    return-void

    .line 768
    :cond_0
    iput p1, p0, Lo/FirebaseAuthWebException;->warmup:I

    .line 769
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 9786
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onNavigationEvent()V

    .line 9820
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9821
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9788
    :cond_1
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->extraCallback()V

    .line 9789
    iget p1, p0, Lo/FirebaseAuthWebException;->warmup:I

    if-eqz p1, :cond_2

    .line 9790
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onMessageChannelReady()V

    :cond_2
    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .locals 2

    .line 938
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 939
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->asBinder()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 940
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onTransact()F

    move-result v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 941
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->asInterface()F

    move-result v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 942
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    .line 10738
    new-instance v1, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 11140
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, v1, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 11154
    new-instance p1, Lo/startActivityForSignInWithProvider;

    invoke-direct {p1, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p1, v1, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 11168
    new-instance p1, Lo/startActivityForSignInWithProvider;

    invoke-direct {p1, p4}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p1, v1, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 11182
    new-instance p1, Lo/startActivityForSignInWithProvider;

    invoke-direct {p1, p3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p1, v1, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 11429
    new-instance p1, Lo/useAppLanguage;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 948
    iput-object p1, p0, Lo/FirebaseAuthWebException;->notify:Lo/useAppLanguage;

    .line 949
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->asBinder()V

    :cond_1
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 914
    invoke-virtual {p0, p1, p2, p4, p3}, Lo/FirebaseAuthWebException;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 843
    iget v0, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback:I

    if-eq v0, p1, :cond_0

    .line 844
    iput p1, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat$ConnectionCallback:I

    .line 845
    invoke-virtual {p0}, Lo/FirebaseAuthWebException;->extraCallback()V

    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .line 1559
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1561
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    .line 1562
    sget v2, Lo/toStringMap$asInterface;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1563
    iget-object v1, p0, Lo/FirebaseAuthWebException;->RemoteActionCompatParcelizer:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1564
    iget-object v2, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1566
    :cond_0
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1567
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    iget-object v2, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lo/getReason;->ICustomTabsCallback(Landroid/widget/TextView;I)V

    .line 1568
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    .line 1569
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub()V

    goto :goto_0

    .line 1571
    :cond_1
    iget-object v1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    iget-object v2, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 1572
    iput-object v0, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    .line 1574
    :goto_0
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback:Z

    :cond_2
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1679
    iget v0, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    if-eq v0, p1, :cond_1

    if-lez p1, :cond_0

    .line 1681
    iput p1, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1683
    iput p1, p0, Lo/FirebaseAuthWebException;->validateRelationship:I

    .line 1685
    :goto_0
    iget-boolean p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    .line 1686
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub()V

    :cond_1
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 1627
    iget v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService:I

    if-eq v0, p1, :cond_0

    .line 1628
    iput p1, p0, Lo/FirebaseAuthWebException;->IPostMessageService:I

    .line 1629
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1643
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1644
    iput-object p1, p0, Lo/FirebaseAuthWebException;->IPostMessageService$Stub:Landroid/content/res/ColorStateList;

    .line 1645
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1586
    iget v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub:I

    if-eq v0, p1, :cond_0

    .line 1587
    iput p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub:I

    .line 1588
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1601
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1602
    iput-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 1603
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onTransact()V

    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object p1, p0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    .line 1335
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 17143
    invoke-virtual {p0, p1, p1}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1754
    invoke-static {p0, p1}, Lo/FirebaseAuthWebException;->onNavigationEvent(Landroid/view/ViewGroup;Z)V

    .line 1755
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    .line 2454
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    .line 2468
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2527
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 37554
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2542
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2490
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2503
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconMode(I)V
    .locals 5

    .line 2375
    iget v0, p0, Lo/FirebaseAuthWebException;->connect:I

    .line 2376
    iput p1, p0, Lo/FirebaseAuthWebException;->connect:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2377
    :goto_0
    invoke-virtual {p0, v1}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    .line 2378
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsService()Lo/FirebaseAuthWeakPasswordException;

    move-result-object v1

    iget v2, p0, Lo/FirebaseAuthWebException;->warmup:I

    invoke-virtual {v1, v2}, Lo/FirebaseAuthWeakPasswordException;->onNavigationEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2379
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->ICustomTabsService()Lo/FirebaseAuthWeakPasswordException;

    move-result-object p1

    invoke-virtual {p1}, Lo/FirebaseAuthWeakPasswordException;->extraCallback()V

    .line 36894
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v1, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    iget-object v2, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    iget-boolean v3, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    iget-object v4, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1, v2, v3, v4}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 2388
    invoke-direct {p0, v0}, Lo/FirebaseAuthWebException;->onMessageChannelReady(I)V

    return-void

    .line 2381
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current box background mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/FirebaseAuthWebException;->warmup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 2411
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-object v1, p0, Lo/FirebaseAuthWebException;->unsubscribe:Landroid/view/View$OnLongClickListener;

    .line 37006
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37007
    invoke-static {v0, v1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 2423
    iput-object p1, p0, Lo/FirebaseAuthWebException;->unsubscribe:Landroid/view/View$OnLongClickListener;

    .line 2424
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 37012
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 37013
    invoke-static {v0, p1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 2569
    iget-object v0, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2570
    iput-object p1, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 2571
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    .line 37894
    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0, p1, v2, v3}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .line 2585
    iget-object v0, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2586
    iput-object p1, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    .line 2587
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    .line 38894
    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3, v0, p1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 2

    .line 37445
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    .line 2434
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 2435
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->getInterfaceDescriptor()Z

    :cond_2
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1468
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 27447
    iget-boolean v0, v0, Lo/getReason;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1474
    :cond_0
    invoke-virtual {p0, v1}, Lo/FirebaseAuthWebException;->setErrorEnabled(Z)V

    .line 1477
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1478
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 28325
    iget-object v2, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    .line 28326
    iget-object v2, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 28150
    :cond_2
    iput-object p1, v0, Lo/getReason;->onTransact:Ljava/lang/CharSequence;

    .line 28151
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28154
    iget v2, v0, Lo/getReason;->ICustomTabsCallback:I

    if-eq v2, v1, :cond_3

    .line 28155
    iput v1, v0, Lo/getReason;->extraCallback:I

    .line 28157
    :cond_3
    iget v1, v0, Lo/getReason;->ICustomTabsCallback:I

    iget v2, v0, Lo/getReason;->extraCallback:I

    iget-object v3, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 28158
    invoke-virtual {v0, v3, p1}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 28157
    invoke-virtual {v0, v1, v2, p1}, Lo/getReason;->extraCallback(IIZ)V

    return-void

    .line 1480
    :cond_4
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    invoke-virtual {p1}, Lo/getReason;->onNavigationEvent()V

    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .line 1357
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 17418
    iget-boolean v1, v0, Lo/getReason;->ICustomTabsCallback$Stub:Z

    if-eq v1, p1, :cond_5

    .line 18325
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 18326
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 17426
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lo/getReason;->onPostMessage:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 17427
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    sget v3, Lo/toStringMap$asInterface;->textinput_error:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 17428
    iget-object v2, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    .line 17429
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    iget-object v3, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17431
    :cond_1
    iget v2, v0, Lo/getReason;->asInterface:I

    .line 18555
    iput v2, v0, Lo/getReason;->asInterface:I

    .line 18556
    iget-object v3, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 18557
    iget-object v3, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    iget-object v4, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-direct {v3, v4, v2}, Lo/FirebaseAuthWebException;->onPostMessage(Landroid/widget/TextView;I)V

    .line 17432
    :cond_2
    iget-object v2, v0, Lo/getReason;->asBinder:Landroid/content/res/ColorStateList;

    .line 19548
    iput-object v2, v0, Lo/getReason;->asBinder:Landroid/content/res/ColorStateList;

    .line 19549
    iget-object v3, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 19550
    iget-object v3, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 17433
    :cond_3
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17434
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;I)V

    .line 17435
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lo/getReason;->ICustomTabsCallback(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 17437
    :cond_4
    invoke-virtual {v0}, Lo/getReason;->onNavigationEvent()V

    .line 17438
    iget-object v2, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    .line 17439
    iput-object v1, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 17440
    iget-object v1, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    invoke-virtual {v1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback()V

    .line 17441
    iget-object v1, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    invoke-virtual {v1}, Lo/FirebaseAuthWebException;->extraCallback()V

    .line 17443
    :goto_0
    iput-boolean p1, v0, Lo/getReason;->ICustomTabsCallback$Stub:Z

    :cond_5
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1491
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1501
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 1502
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 28447
    iget-boolean p1, p1, Lo/getReason;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1502
    :goto_0
    invoke-direct {p0, p1}, Lo/FirebaseAuthWebException;->onPostMessage(Z)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1523
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1525
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1526
    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1529
    :cond_0
    iget-object p1, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    .line 1530
    iget-object p1, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1542
    iget-object v0, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1545
    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1548
    :cond_0
    iget-object p1, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    .line 1549
    iget-object p1, p0, Lo/FirebaseAuthWebException;->search:Lo/addIdTokenListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 2

    .line 1366
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 19555
    iput p1, v0, Lo/getReason;->asInterface:I

    .line 19556
    iget-object v1, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 19557
    iget-object v1, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    iget-object v0, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-direct {v1, v0, p1}, Lo/FirebaseAuthWebException;->onPostMessage(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1371
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 20548
    iput-object p1, v0, Lo/getReason;->asBinder:Landroid/content/res/ColorStateList;

    .line 20549
    iget-object v1, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 20550
    iget-object v0, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25448
    iget-object p1, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 25451
    iget-boolean p1, p1, Lo/getReason;->warmup:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1431
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setHelperTextEnabled(Z)V

    return-void

    .line 26448
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 26451
    iget-boolean v0, v0, Lo/getReason;->warmup:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1435
    invoke-virtual {p0, v0}, Lo/FirebaseAuthWebException;->setHelperTextEnabled(Z)V

    .line 1437
    :cond_1
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 27325
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 27326
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 27126
    :cond_2
    iput-object p1, v0, Lo/getReason;->newSession:Ljava/lang/CharSequence;

    .line 27127
    iget-object v1, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27130
    iget v1, v0, Lo/getReason;->ICustomTabsCallback:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 27131
    iput v2, v0, Lo/getReason;->extraCallback:I

    .line 27133
    :cond_3
    iget v1, v0, Lo/getReason;->ICustomTabsCallback:I

    iget v2, v0, Lo/getReason;->extraCallback:I

    iget-object v3, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    .line 27134
    invoke-virtual {v0, v3, p1}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 27133
    invoke-virtual {v0, v1, v2, p1}, Lo/getReason;->extraCallback(IIZ)V

    :cond_4
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1391
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 21571
    iput-object p1, v0, Lo/getReason;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 21572
    iget-object v1, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 21573
    iget-object v0, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 6

    .line 1412
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 22456
    iget-boolean v1, v0, Lo/getReason;->warmup:Z

    if-eq v1, p1, :cond_7

    .line 23325
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 23326
    iget-object v1, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 22464
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lo/getReason;->onPostMessage:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    .line 22465
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    sget v3, Lo/toStringMap$asInterface;->textinput_helper_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 22466
    iget-object v2, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    .line 22467
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    iget-object v3, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22469
    :cond_1
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22470
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;I)V

    .line 22472
    iget v2, v0, Lo/getReason;->getInterfaceDescriptor:I

    .line 23578
    iput v2, v0, Lo/getReason;->getInterfaceDescriptor:I

    .line 23579
    iget-object v3, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 23580
    iget-object v3, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;I)V

    .line 22473
    :cond_2
    iget-object v2, v0, Lo/getReason;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 24571
    iput-object v2, v0, Lo/getReason;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 24572
    iget-object v3, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 24573
    iget-object v3, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22474
    :cond_3
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lo/getReason;->ICustomTabsCallback(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 25325
    :cond_4
    iget-object v2, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v2, :cond_5

    .line 25326
    iget-object v2, v0, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 25141
    :cond_5
    iget v2, v0, Lo/getReason;->ICustomTabsCallback:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    .line 25142
    iput v2, v0, Lo/getReason;->extraCallback:I

    .line 25144
    :cond_6
    iget v2, v0, Lo/getReason;->ICustomTabsCallback:I

    iget v3, v0, Lo/getReason;->extraCallback:I

    iget-object v4, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    const/4 v5, 0x0

    .line 25145
    invoke-virtual {v0, v4, v5}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 25144
    invoke-virtual {v0, v2, v3, v4}, Lo/getReason;->extraCallback(IIZ)V

    .line 22477
    iget-object v2, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lo/getReason;->onPostMessage(Landroid/widget/TextView;I)V

    .line 22478
    iput-object v5, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    .line 22479
    iget-object v1, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    invoke-virtual {v1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback()V

    .line 22480
    iget-object v1, v0, Lo/getReason;->onMessageChannelReady:Lo/FirebaseAuthWebException;

    invoke-virtual {v1}, Lo/FirebaseAuthWebException;->extraCallback()V

    .line 22482
    :goto_0
    iput-boolean p1, v0, Lo/getReason;->warmup:Z

    :cond_7
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 2

    .line 1386
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 20578
    iput p1, v0, Lo/getReason;->getInterfaceDescriptor:I

    .line 20579
    iget-object v1, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 20580
    iget-object v0, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1196
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-direct {p0, p1}, Lo/FirebaseAuthWebException;->onNavigationEvent(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 1198
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 2138
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->onConnectionSuspended:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1236
    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eq p1, v0, :cond_4

    .line 1237
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->asInterface:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1240
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    .line 1241
    iget-object p1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1243
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1246
    :cond_0
    invoke-direct {p0, v0}, Lo/FirebaseAuthWebException;->onNavigationEvent(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1248
    :cond_1
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1252
    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1253
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setHint(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_2
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 1257
    iput-boolean p1, p0, Lo/FirebaseAuthWebException;->asBinder:Z

    .line 1261
    :goto_0
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 1262
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onMessageChannelReady()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 3

    .line 1292
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 13275
    new-instance v1, Lo/verifyPasswordResetCode;

    iget-object v2, v0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lo/verifyPasswordResetCode;-><init>(Landroid/content/Context;I)V

    .line 13277
    iget-object p1, v1, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 13278
    iget-object p1, v1, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    iput-object p1, v0, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    .line 13280
    :cond_0
    iget p1, v1, Lo/verifyPasswordResetCode;->ICustomTabsCallback:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_1

    .line 13281
    iget p1, v1, Lo/verifyPasswordResetCode;->ICustomTabsCallback:F

    iput p1, v0, Lo/removeIdTokenListener;->asInterface:F

    .line 13283
    :cond_1
    iget-object p1, v1, Lo/verifyPasswordResetCode;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 13284
    iget-object p1, v1, Lo/verifyPasswordResetCode;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    iput-object p1, v0, Lo/removeIdTokenListener;->INotificationSideChannel:Landroid/content/res/ColorStateList;

    .line 13286
    :cond_2
    iget p1, v1, Lo/verifyPasswordResetCode;->onPostMessage:F

    iput p1, v0, Lo/removeIdTokenListener;->cancel:F

    .line 13287
    iget p1, v1, Lo/verifyPasswordResetCode;->onRelationshipValidationResult:F

    iput p1, v0, Lo/removeIdTokenListener;->IPostMessageService$Stub$Proxy:F

    .line 13288
    iget p1, v1, Lo/verifyPasswordResetCode;->asInterface:F

    iput p1, v0, Lo/removeIdTokenListener;->cancelAll:F

    .line 13291
    iget-object p1, v0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    if-eqz p1, :cond_3

    .line 13292
    iget-object p1, v0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    const/4 v2, 0x1

    .line 14064
    iput-boolean v2, p1, Lo/createUserWithEmailAndPassword;->onMessageChannelReady:Z

    .line 13294
    :cond_3
    new-instance p1, Lo/createUserWithEmailAndPassword;

    .line 14246
    invoke-virtual {v1}, Lo/verifyPasswordResetCode;->onNavigationEvent()V

    .line 14247
    iget-object v2, v1, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    .line 13302
    invoke-direct {p1, v0, v2}, Lo/createUserWithEmailAndPassword;-><init>(Lo/createUserWithEmailAndPassword$extraCallback;Landroid/graphics/Typeface;)V

    iput-object p1, v0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    .line 13303
    iget-object p1, v0, Lo/removeIdTokenListener;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, v0, Lo/removeIdTokenListener;->ICustomTabsService:Lo/createUserWithEmailAndPassword;

    invoke-virtual {v1, p1, v2}, Lo/verifyPasswordResetCode;->ICustomTabsCallback(Landroid/content/Context;Lo/confirmPasswordReset;)V

    .line 13305
    invoke-virtual {v0}, Lo/removeIdTokenListener;->onNavigationEvent()V

    .line 1293
    iget-object p1, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    .line 14795
    iget-object p1, p1, Lo/removeIdTokenListener;->onRelationshipValidationResult:Landroid/content/res/ColorStateList;

    .line 1293
    iput-object p1, p0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    .line 1295
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 15143
    invoke-virtual {p0, p1, p1}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    .line 1298
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->onMessageChannelReady()V

    :cond_4
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1308
    iget-object v0, p0, Lo/FirebaseAuthWebException;->sendCustomAction:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0, p1}, Lo/removeIdTokenListener;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    .line 1312
    :cond_0
    iput-object p1, p0, Lo/FirebaseAuthWebException;->handleMessage:Landroid/content/res/ColorStateList;

    .line 1314
    iget-object p1, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 16143
    invoke-virtual {p0, p1, p1}, Lo/FirebaseAuthWebException;->extraCallback(ZZ)V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 2695
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2694
    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2710
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 2664
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2663
    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2679
    iget-object v0, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 2763
    iget v0, p0, Lo/FirebaseAuthWebException;->connect:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2765
    invoke-virtual {p0, v1}, Lo/FirebaseAuthWebException;->setEndIconMode(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2768
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setEndIconMode(I)V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2786
    iput-object p1, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 2787
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    .line 39894
    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0, p1, v2, v3}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2802
    iput-object p1, p0, Lo/FirebaseAuthWebException;->getExtras:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    .line 2803
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->getRoot:Z

    .line 40894
    iget-object v1, p0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->getSessionToken:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->isConnected:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3, v0, p1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    .line 2279
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2301
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 35328
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2316
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 2199
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2201
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconVisible(Z)V

    .line 34862
    iget-object p1, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    iget-boolean v0, p0, Lo/FirebaseAuthWebException;->read:Z

    iget-object v1, p0, Lo/FirebaseAuthWebException;->IconCompatParcelizer:Landroid/content/res/ColorStateList;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->disconnect:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0, v1, v2, v3}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2204
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconVisible(Z)V

    const/4 p1, 0x0

    .line 2205
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2206
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2207
    invoke-virtual {p0, p1}, Lo/FirebaseAuthWebException;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 2231
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    iget-object v1, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplApi21Parcelizer:Landroid/view/View$OnLongClickListener;

    .line 35006
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35007
    invoke-static {v0, v1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 2243
    iput-object p1, p0, Lo/FirebaseAuthWebException;->AudioAttributesImplApi21Parcelizer:Landroid/view/View$OnLongClickListener;

    .line 2244
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    .line 35012
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 35013
    invoke-static {v0, p1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 2343
    iget-object v0, p0, Lo/FirebaseAuthWebException;->IconCompatParcelizer:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2344
    iput-object p1, p0, Lo/FirebaseAuthWebException;->IconCompatParcelizer:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 2345
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->read:Z

    .line 35862
    iget-object v1, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->disconnect:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0, p1, v2, v3}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .line 2359
    iget-object v0, p0, Lo/FirebaseAuthWebException;->disconnect:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2360
    iput-object p1, p0, Lo/FirebaseAuthWebException;->disconnect:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    .line 2361
    iput-boolean v0, p0, Lo/FirebaseAuthWebException;->MediaBrowserCompat:Z

    .line 36862
    iget-object v1, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    iget-boolean v2, p0, Lo/FirebaseAuthWebException;->read:Z

    iget-object v3, p0, Lo/FirebaseAuthWebException;->IconCompatParcelizer:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3, v0, p1}, Lo/FirebaseAuthWebException;->ICustomTabsCallback(Lo/addIdTokenListener;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 2

    .line 35265
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    .line 2254
    iget-object v0, p0, Lo/FirebaseAuthWebException;->AudioAttributesCompatParcelizer:Lo/addIdTokenListener;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lo/addIdTokenListener;->setVisibility(I)V

    .line 2255
    invoke-direct {p0}, Lo/FirebaseAuthWebException;->getInterfaceDescriptor()Z

    :cond_2
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lo/FirebaseAuthWebException$onMessageChannelReady;)V
    .locals 1

    .line 2836
    iget-object v0, p0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2837
    invoke-static {v0, p1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1000
    iget-object v0, p0, Lo/FirebaseAuthWebException;->RemoteActionCompatParcelizer:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_2

    .line 1001
    iput-object p1, p0, Lo/FirebaseAuthWebException;->RemoteActionCompatParcelizer:Landroid/graphics/Typeface;

    .line 1003
    iget-object v0, p0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {v0, p1}, Lo/removeIdTokenListener;->extraCallback(Landroid/graphics/Typeface;)V

    .line 1004
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 11524
    iget-object v1, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    if-eq p1, v1, :cond_1

    .line 11525
    iput-object p1, v0, Lo/getReason;->extraCommand:Landroid/graphics/Typeface;

    .line 11526
    iget-object v1, v0, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 11533
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11527
    :cond_0
    iget-object v0, v0, Lo/getReason;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 12533
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1006
    :cond_1
    iget-object v0, p0, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1007
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
