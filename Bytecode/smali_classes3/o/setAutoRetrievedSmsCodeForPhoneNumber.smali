.class final Lo/setAutoRetrievedSmsCodeForPhoneNumber;
.super Lo/FirebaseAuthWeakPasswordException;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lo/FirebaseAuthWebException$onPostMessage;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static onTransact:Z


# instance fields
.field ICustomTabsCallback:Z

.field ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/StateListDrawable;

.field private ICustomTabsService:Lo/setFirebaseUIVersion;

.field extraCallback:J

.field private final getInterfaceDescriptor:Lo/FirebaseAuthWebException$onPostMessage;

.field private newSession:Landroid/text/TextWatcher;

.field onMessageChannelReady:Landroid/view/accessibility/AccessibilityManager;

.field onNavigationEvent:Z

.field onPostMessage:Landroid/animation/ValueAnimator;

.field private warmup:Lo/FirebaseAuthWebException$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    return-void
.end method

.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 2

    .line 150
    invoke-direct {p0, p1}, Lo/FirebaseAuthWeakPasswordException;-><init>(Lo/FirebaseAuthWebException;)V

    .line 70
    iput-object p0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->newSession:Landroid/text/TextWatcher;

    .line 93
    new-instance p1, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;

    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-direct {p1, p0, v0}, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;-><init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Lo/FirebaseAuthWebException;)V

    iput-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->warmup:Lo/FirebaseAuthWebException$onMessageChannelReady;

    .line 120
    iput-object p0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->getInterfaceDescriptor:Lo/FirebaseAuthWebException$onPostMessage;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    .line 141
    iput-boolean p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 142
    iput-wide v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->extraCallback:J

    return-void
.end method

.method private onMessageChannelReady(FFFI)Lo/setFirebaseUIVersion;
    .locals 2

    .line 6435
    new-instance v0, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v0}, Lo/useAppLanguage$ICustomTabsCallback;-><init>()V

    .line 7140
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v0, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 7154
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v0, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 7182
    new-instance p1, Lo/startActivityForSignInWithProvider;

    invoke-direct {p1, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p1, v0, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 8168
    new-instance p1, Lo/startActivityForSignInWithProvider;

    invoke-direct {p1, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p1, v0, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 8429
    new-instance p1, Lo/useAppLanguage;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 389
    iget-object p2, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    .line 390
    invoke-static {p2, p3}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/content/Context;F)Lo/setFirebaseUIVersion;

    move-result-object p2

    .line 391
    invoke-virtual {p2, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 392
    invoke-virtual {p2, p4, p4}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(II)V

    return-object p2
.end method

.method static synthetic onPostMessage(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 9397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->extraCallback:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 9226
    iput-boolean v4, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    .line 9228
    :cond_2
    iget-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    if-nez v0, :cond_6

    .line 9229
    sget-boolean v0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    if-eqz v0, :cond_3

    .line 9230
    iget-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    xor-int/lit8 v1, v0, 0x1

    if-eq v0, v1, :cond_4

    .line 9414
    iput-boolean v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 9415
    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9416
    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 9232
    :cond_3
    iget-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 9233
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-virtual {v0}, Lo/addIdTokenListener;->toggle()V

    .line 9235
    :cond_4
    :goto_2
    iget-boolean p0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    if-eqz p0, :cond_5

    .line 9236
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9237
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    .line 9239
    :cond_5
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    .line 9242
    :cond_6
    iput-boolean v4, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 10080
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 10186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 11403
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 11409
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 10082
    new-instance v0, Lo/FirebaseAuthUserCollisionException;

    invoke-direct {v0, p0, p1}, Lo/FirebaseAuthUserCollisionException;-><init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11404
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final extraCallback()V
    .locals 6

    .line 155
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/toStringMap$onMessageChannelReady;->mtrl_shape_corner_size_small_component:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 159
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    .line 161
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onMessageChannelReady;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 163
    iget-object v2, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/toStringMap$onMessageChannelReady;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 170
    invoke-direct {p0, v0, v0, v1, v2}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onMessageChannelReady(FFFI)Lo/setFirebaseUIVersion;

    move-result-object v3

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, v4, v0, v1, v2}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onMessageChannelReady(FFFI)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 183
    iput-object v3, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsService:Lo/setFirebaseUIVersion;

    .line 184
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 191
    sget-boolean v0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    if-eqz v0, :cond_0

    sget v0, Lo/toStringMap$onNavigationEvent;->mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v0, Lo/toStringMap$onNavigationEvent;->mtrl_ic_arrow_drop_down:I

    .line 193
    :goto_0
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v2, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    invoke-static {v2, v0}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onTransact;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {v0, p0}, Lo/FirebaseAuthWebException;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->getInterfaceDescriptor:Lo/FirebaseAuthWebException$onPostMessage;

    .line 3630
    iget-object v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsService:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3631
    iget-object v2, v0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 3632
    invoke-interface {v1, v0}, Lo/FirebaseAuthWebException$onPostMessage;->onPostMessage(Lo/FirebaseAuthWebException;)V

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4421
    fill-array-data v1, :array_0

    .line 4434
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4435
    sget-object v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x43

    .line 4436
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4437
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4421
    iput-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 4422
    fill-array-data v1, :array_1

    .line 5434
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5435
    sget-object v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x32

    .line 5436
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5437
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4422
    iput-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage:Landroid/animation/ValueAnimator;

    .line 4423
    new-instance v2, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;

    invoke-direct {v2, p0}, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;-><init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-static {v1, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 207
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onMessageChannelReady:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 31441
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 31442
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setAlpha(F)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 25200
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 26186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 25200
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 25201
    invoke-static {p0, p1}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 29064
    iput-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    .line 28373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30064
    iput-wide v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->extraCallback:J

    .line 31413
    iget-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31414
    iput-boolean v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 31415
    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31416
    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 26359
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {p1, p2}, Lo/FirebaseAuthWebException;->setEndIconActivated(Z)V

    if-nez p2, :cond_1

    .line 27413
    iget-boolean p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 27414
    iput-boolean p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 27415
    iget-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27416
    iget-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 28064
    :cond_0
    iput-boolean p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    :cond_1
    return-void
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final onNavigationEvent(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/FirebaseAuthWebException;)V
    .locals 11

    .line 12186
    iget-object v0, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 13403
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_b

    .line 13409
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 14247
    sget-boolean v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 14248
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 14782
    iget v1, v1, Lo/FirebaseAuthWebException;->warmup:I

    if-ne v1, v2, :cond_0

    .line 14250
    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsService:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 14252
    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15259
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_9

    .line 15263
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 15782
    iget v1, v1, Lo/FirebaseAuthWebException;->warmup:I

    .line 15264
    iget-object v5, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 16743
    iget v6, v5, Lo/FirebaseAuthWebException;->warmup:I

    if-eq v6, v3, :cond_3

    iget v6, v5, Lo/FirebaseAuthWebException;->warmup:I

    if-ne v6, v2, :cond_2

    goto :goto_1

    .line 16746
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 16744
    :cond_3
    :goto_1
    iget-object v5, v5, Lo/FirebaseAuthWebException;->onRelationshipValidationResult:Lo/setFirebaseUIVersion;

    .line 15265
    sget v6, Lo/toStringMap$extraCallback;->colorControlHighlight:I

    .line 17085
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    .line 17084
    invoke-static {v7, v6, v8}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v6

    new-array v7, v2, [[I

    new-array v8, v3, [I

    const v9, 0x10100a7

    aput v9, v8, v4

    aput-object v8, v7, v4

    new-array v8, v4, [I

    aput-object v8, v7, v3

    const v8, 0x3dcccccd    # 0.1f

    if-ne v1, v2, :cond_6

    .line 17284
    sget v1, Lo/toStringMap$extraCallback;->colorSurface:I

    .line 18085
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 18084
    invoke-static {v9, v1, v10}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 17285
    new-instance v9, Lo/setFirebaseUIVersion;

    .line 18255
    iget-object v10, v5, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v10, v10, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 17286
    invoke-direct {v9, v10}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 19129
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 19130
    invoke-static {v1, v8}, Lo/getString;->extraCallback(II)I

    move-result v8

    .line 19140
    invoke-static {v8, v6}, Lo/getString;->onMessageChannelReady(II)I

    move-result v6

    new-array v8, v2, [I

    aput v6, v8, v4

    aput v4, v8, v3

    .line 17289
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 19288
    iget-object v8, v9, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v8, v8, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v8, v10, :cond_4

    .line 19289
    iget-object v8, v9, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v10, v8, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 19290
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v8

    invoke-virtual {v9, v8}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 17291
    :cond_4
    sget-boolean v8, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    if-eqz v8, :cond_5

    .line 17292
    invoke-virtual {v9, v1}, Lo/setFirebaseUIVersion;->setTint(I)V

    new-array v8, v2, [I

    aput v6, v8, v4

    aput v1, v8, v3

    .line 17294
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 17295
    new-instance v6, Lo/setFirebaseUIVersion;

    .line 20255
    iget-object v7, v5, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v7, v7, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 17296
    invoke-direct {v6, v7}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    const/4 v7, -0x1

    .line 17297
    invoke-virtual {v6, v7}, Lo/setFirebaseUIVersion;->setTint(I)V

    .line 17298
    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v7, v1, v9, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v1, v4

    aput-object v5, v1, v3

    .line 17300
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v4

    aput-object v5, v1, v3

    .line 17303
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 17306
    :goto_2
    invoke-static {v0, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    if-ne v1, v3, :cond_9

    .line 20314
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 20897
    iget v1, v1, Lo/FirebaseAuthWebException;->newSession:I

    .line 21129
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 21130
    invoke-static {v1, v8}, Lo/getString;->extraCallback(II)I

    move-result v8

    .line 21140
    invoke-static {v8, v6}, Lo/getString;->onMessageChannelReady(II)I

    move-result v6

    new-array v8, v2, [I

    aput v6, v8, v4

    aput v1, v8, v3

    .line 20318
    sget-boolean v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    if-eqz v1, :cond_7

    .line 20319
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 20320
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, v1, v5, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20322
    invoke-static {v0, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 20324
    :cond_7
    new-instance v1, Lo/setFirebaseUIVersion;

    .line 21255
    iget-object v6, v5, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v6, v6, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 20325
    invoke-direct {v1, v6}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 20326
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 21288
    iget-object v7, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v7, v7, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v7, v6, :cond_8

    .line 21289
    iget-object v7, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v6, v7, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 21290
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_8
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v4

    aput-object v1, v2, v3

    .line 20328
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 20329
    invoke-static {v0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v2

    .line 20330
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 20331
    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v6

    .line 20332
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 20333
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 20334
    invoke-static {v0, v2, v5, v6, v7}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;IIII)V

    .line 22340
    :cond_9
    :goto_3
    new-instance v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;

    invoke-direct {v1, p0, v0}, Lo/setAutoRetrievedSmsCodeForPhoneNumber$2;-><init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 22355
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 22367
    sget-boolean v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onTransact:Z

    if-eqz v1, :cond_a

    .line 22368
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 12130
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 23064
    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->newSession:Landroid/text/TextWatcher;

    .line 12131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24064
    iget-object v1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->newSession:Landroid/text/TextWatcher;

    .line 12132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 12133
    invoke-virtual {p1, v0}, Lo/FirebaseAuthWebException;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25064
    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->warmup:Lo/FirebaseAuthWebException$onMessageChannelReady;

    .line 12134
    invoke-virtual {p1, v0}, Lo/FirebaseAuthWebException;->setTextInputAccessibilityDelegate(Lo/FirebaseAuthWebException$onMessageChannelReady;)V

    .line 12136
    invoke-virtual {p1, v3}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    return-void

    .line 13404
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
