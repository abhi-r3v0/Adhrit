.class public Lo/getComponents;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source ""

# interfaces
.implements Lo/FirebaseAnalytics$ICustomTabsCallback;
.implements Lo/FirebaseAuthException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getComponents$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final asBinder:[I

.field static final onPostMessage:Landroid/graphics/Rect;


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:I

.field private asInterface:Landroid/graphics/drawable/RippleDrawable;

.field extraCallback:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final extraCommand:Lo/confirmPasswordReset;

.field private getInterfaceDescriptor:Z

.field private final mayLaunchUrl:Lo/getComponents$onNavigationEvent;

.field private newSession:Z

.field onMessageChannelReady:Z

.field onNavigationEvent:Lo/FirebaseAnalytics;

.field private onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

.field private onTransact:Landroid/view/View$OnClickListener;

.field private final requestPostMessageChannel:Landroid/graphics/RectF;

.field private final updateVisuals:Landroid/graphics/Rect;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lo/getComponents;->onPostMessage:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 134
    sput-object v1, Lo/getComponents;->ICustomTabsCallback:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 135
    sput-object v0, Lo/getComponents;->asBinder:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lo/getComponents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 186
    sget v0, Lo/toStringMap$extraCallback;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/getComponents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 190
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lo/getComponents;->updateVisuals:Landroid/graphics/Rect;

    .line 166
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 167
    new-instance v1, Lo/getComponents$2;

    invoke-direct {v1, v0}, Lo/getComponents$2;-><init>(Lo/getComponents;)V

    iput-object v1, v0, Lo/getComponents;->extraCommand:Lo/confirmPasswordReset;

    const v10, 0x800013

    const/4 v11, 0x1

    if-eqz v8, :cond_6

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    .line 3351
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chip"

    if-eqz v2, :cond_0

    const-string v2, "Do not set the background; Chip manages its own background drawable."

    .line 3352
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "drawableLeft"

    .line 3354
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "drawableStart"

    .line 3357
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "drawableEnd"

    .line 3360
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_3

    const-string v2, "drawableRight"

    .line 3363
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "singleLine"

    .line 3366
    invoke-interface {v8, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "lines"

    .line 3367
    invoke-interface {v8, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_1

    const-string v2, "minLines"

    .line 3368
    invoke-interface {v8, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_1

    const-string v2, "maxLines"

    .line 3369
    invoke-interface {v8, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_1

    const-string v2, "gravity"

    .line 3373
    invoke-interface {v8, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_6

    const-string v1, "Chip text must be vertically center and start aligned"

    .line 3376
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3370
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Chip does not support multi-line text"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3364
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3361
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3358
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3355
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_6
    :goto_0
    sget v12, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_Chip_Action:I

    .line 4275
    new-instance v13, Lo/FirebaseAnalytics;

    invoke-direct {v13, v7, v8, v9, v12}, Lo/FirebaseAnalytics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4333
    iget-object v14, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget-object v15, Lo/toStringMap$newSession;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 5081
    invoke-static {v14, v8, v9, v12}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v4, p3

    move-object/from16 v16, v5

    move v5, v12

    const/4 v10, 0x0

    move-object/from16 v6, v16

    .line 5084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 5087
    invoke-virtual {v14, v8, v15, v9, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4337
    sget v2, Lo/toStringMap$newSession;->Chip_shapeAppearance:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, v13, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    .line 4338
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v3, Lo/toStringMap$newSession;->Chip_chipSurfaceColor:I

    .line 4339
    invoke-static {v2, v1, v3}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 5310
    iget-object v3, v13, Lo/FirebaseAnalytics;->onPostMessage:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_7

    .line 5311
    iput-object v2, v13, Lo/FirebaseAnalytics;->onPostMessage:Landroid/content/res/ColorStateList;

    .line 5312
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v13, v2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 4340
    :cond_7
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v3, Lo/toStringMap$newSession;->Chip_chipBackgroundColor:I

    .line 4341
    invoke-static {v2, v1, v3}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 5367
    iget-object v3, v13, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_8

    .line 5368
    iput-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 5369
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v13, v2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 4342
    :cond_8
    sget v2, Lo/toStringMap$newSession;->Chip_chipMinHeight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onPostMessage(F)V

    .line 4343
    sget v2, Lo/toStringMap$newSession;->Chip_chipCornerRadius:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4344
    sget v2, Lo/toStringMap$newSession;->Chip_chipCornerRadius:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 5436
    iget v4, v13, Lo/FirebaseAnalytics;->onNavigationEvent:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_9

    .line 5437
    iput v2, v13, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 6255
    iget-object v4, v13, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v4, v4, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 7738
    new-instance v5, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v5, v4}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 8140
    new-instance v4, Lo/startActivityForSignInWithProvider;

    invoke-direct {v4, v2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v4, v5, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 8154
    new-instance v4, Lo/startActivityForSignInWithProvider;

    invoke-direct {v4, v2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v4, v5, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 8168
    new-instance v4, Lo/startActivityForSignInWithProvider;

    invoke-direct {v4, v2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v4, v5, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 8182
    new-instance v4, Lo/startActivityForSignInWithProvider;

    invoke-direct {v4, v2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v4, v5, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 8429
    new-instance v2, Lo/useAppLanguage;

    invoke-direct {v2, v5, v10}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 5439
    invoke-virtual {v13, v2}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 4346
    :cond_9
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_chipStrokeColor:I

    .line 4347
    invoke-static {v2, v1, v4}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 4346
    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/content/res/ColorStateList;)V

    .line 4348
    sget v2, Lo/toStringMap$newSession;->Chip_chipStrokeWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->extraCallback(F)V

    .line 4349
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_rippleColor:I

    invoke-static {v2, v1, v4}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 8546
    iget-object v4, v13, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    if-eq v4, v2, :cond_b

    .line 8547
    iput-object v2, v13, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 9305
    iget-boolean v2, v13, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v2, :cond_a

    iget-object v2, v13, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 9306
    invoke-static {v2}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_a
    move-object v2, v5

    :goto_1
    iput-object v2, v13, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 8549
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v13, v2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 4351
    :cond_b
    sget v2, Lo/toStringMap$newSession;->Chip_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 4352
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_android_textAppearance:I

    .line 10132
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 10133
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_c

    .line 10135
    new-instance v5, Lo/verifyPasswordResetCode;

    invoke-direct {v5, v2, v4}, Lo/verifyPasswordResetCode;-><init>(Landroid/content/Context;I)V

    .line 10584
    :cond_c
    iget-object v2, v13, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    iget-object v4, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v2, v5, v4}, Lo/signInWithEmailAndPassword;->ICustomTabsCallback(Lo/verifyPasswordResetCode;Landroid/content/Context;)V

    .line 4355
    sget v2, Lo/toStringMap$newSession;->Chip_android_ellipsize:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v11, :cond_f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_e

    const/4 v4, 0x3

    if-eq v2, v4, :cond_d

    goto :goto_2

    .line 4365
    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 12592
    iput-object v2, v13, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 4362
    :cond_e
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 11592
    iput-object v2, v13, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 4359
    :cond_f
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 10592
    iput-object v2, v13, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    .line 4373
    :goto_2
    sget v2, Lo/toStringMap$newSession;->Chip_chipIconVisible:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->extraCallback(Z)V

    const-string v2, "http://schemas.android.com/apk/res-auto"

    if-eqz v8, :cond_10

    const-string v4, "chipIconEnabled"

    .line 4377
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, "chipIconVisible"

    .line 4378
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    .line 4379
    sget v4, Lo/toStringMap$newSession;->Chip_chipIconEnabled:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->extraCallback(Z)V

    .line 4381
    :cond_10
    iget-object v4, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v5, Lo/toStringMap$newSession;->Chip_chipIcon:I

    invoke-static {v4, v1, v5}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    .line 4382
    sget v4, Lo/toStringMap$newSession;->Chip_chipIconTint:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4383
    iget-object v4, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v5, Lo/toStringMap$newSession;->Chip_chipIconTint:I

    .line 4384
    invoke-static {v4, v1, v5}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 4383
    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/content/res/ColorStateList;)V

    .line 4386
    :cond_11
    sget v4, Lo/toStringMap$newSession;->Chip_chipIconSize:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->ICustomTabsCallback(F)V

    .line 4388
    sget v4, Lo/toStringMap$newSession;->Chip_closeIconVisible:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onPostMessage(Z)V

    if-eqz v8, :cond_12

    const-string v4, "closeIconEnabled"

    .line 4393
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v4, "closeIconVisible"

    .line 4394
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    .line 4395
    sget v4, Lo/toStringMap$newSession;->Chip_closeIconEnabled:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onPostMessage(Z)V

    .line 4397
    :cond_12
    iget-object v4, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v5, Lo/toStringMap$newSession;->Chip_closeIcon:I

    invoke-static {v4, v1, v5}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    .line 4398
    iget-object v4, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v5, Lo/toStringMap$newSession;->Chip_closeIconTint:I

    .line 4399
    invoke-static {v4, v1, v5}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 4398
    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    .line 4400
    sget v4, Lo/toStringMap$newSession;->Chip_closeIconSize:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onMessageChannelReady(F)V

    .line 4402
    sget v4, Lo/toStringMap$newSession;->Chip_android_checkable:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->onNavigationEvent(Z)V

    .line 4403
    sget v4, Lo/toStringMap$newSession;->Chip_checkedIconVisible:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Z)V

    if-eqz v8, :cond_13

    const-string v4, "checkedIconEnabled"

    .line 4408
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v4, "checkedIconVisible"

    .line 4409
    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    .line 4410
    sget v2, Lo/toStringMap$newSession;->Chip_checkedIconEnabled:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Z)V

    .line 4412
    :cond_13
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_checkedIcon:I

    invoke-static {v2, v1, v4}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    .line 4414
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_showMotionSpec:I

    .line 13175
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 13176
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_14

    .line 13178
    invoke-static {v2, v4}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    .line 4415
    :cond_14
    iget-object v2, v13, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    sget v4, Lo/toStringMap$newSession;->Chip_hideMotionSpec:I

    .line 14175
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 14176
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_15

    .line 14178
    invoke-static {v2, v4}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    .line 4417
    :cond_15
    sget v2, Lo/toStringMap$newSession;->Chip_chipStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onNavigationEvent(F)V

    .line 4418
    sget v2, Lo/toStringMap$newSession;->Chip_iconStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onRelationshipValidationResult(F)V

    .line 4419
    sget v2, Lo/toStringMap$newSession;->Chip_iconEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->onTransact(F)V

    .line 4420
    sget v2, Lo/toStringMap$newSession;->Chip_textStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->asBinder(F)V

    .line 4421
    sget v2, Lo/toStringMap$newSession;->Chip_textEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->asInterface(F)V

    .line 4422
    sget v2, Lo/toStringMap$newSession;->Chip_closeIconStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub(F)V

    .line 4423
    sget v2, Lo/toStringMap$newSession;->Chip_closeIconEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->warmup(F)V

    .line 4424
    sget v2, Lo/toStringMap$newSession;->Chip_chipEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy(F)V

    .line 4426
    sget v2, Lo/toStringMap$newSession;->Chip_android_maxWidth:I

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 14344
    iput v2, v13, Lo/FirebaseAnalytics;->setDefaultImpl:I

    .line 4428
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15292
    sget-object v12, Lo/toStringMap$newSession;->Chip:[I

    sget v14, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_Chip_Action:I

    new-array v6, v10, [I

    .line 16081
    invoke-static {v7, v8, v9, v14}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, p3

    move v5, v14

    .line 16084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 16087
    invoke-virtual {v7, v8, v12, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15299
    sget v2, Lo/toStringMap$newSession;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lo/getComponents;->newSession:Z

    .line 15302
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 17070
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    .line 17071
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v11, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-double v2, v2

    .line 15302
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 15303
    sget v3, Lo/toStringMap$newSession;->Chip_chipMinTouchTargetSize:I

    .line 15306
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    .line 15305
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lo/getComponents;->warmup:I

    .line 15308
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-virtual {v0, v13}, Lo/getComponents;->setChipDrawable(Lo/FirebaseAnalytics;)V

    .line 197
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v1

    .line 17651
    iget-object v2, v13, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_16

    .line 17652
    iget-object v2, v13, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v1, v2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 17653
    invoke-virtual {v13}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 198
    :cond_16
    sget-object v11, Lo/toStringMap$newSession;->Chip:[I

    sget v12, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_Chip_Action:I

    new-array v6, v10, [I

    .line 18081
    invoke-static {v7, v8, v9, v12}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move/from16 v4, p3

    move v5, v12

    .line 18084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 18087
    invoke-virtual {v7, v8, v11, v9, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 205
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_17

    .line 208
    sget v2, Lo/toStringMap$newSession;->Chip_android_textColor:I

    .line 209
    invoke-static {v7, v1, v2}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_17
    sget v2, Lo/toStringMap$newSession;->Chip_shapeAppearance:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 212
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    new-instance v1, Lo/getComponents$onNavigationEvent;

    invoke-direct {v1, v0, v0}, Lo/getComponents$onNavigationEvent;-><init>(Lo/getComponents;Lo/getComponents;)V

    iput-object v1, v0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_18

    .line 216
    iget-object v1, v0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    goto :goto_3

    .line 218
    :cond_18
    invoke-direct/range {p0 .. p0}, Lo/getComponents;->asInterface()V

    :goto_3
    if-nez v2, :cond_19

    .line 18381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    .line 18382
    new-instance v1, Lo/getComponents$5;

    invoke-direct {v1, v0}, Lo/getComponents$5;-><init>(Lo/getComponents;)V

    invoke-virtual {v0, v1}, Lo/getComponents;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 224
    :cond_19
    iget-boolean v1, v0, Lo/getComponents;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 18555
    iget-object v1, v13, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18588
    iget-object v1, v13, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 229
    invoke-direct/range {p0 .. p0}, Lo/getComponents;->newSession()V

    .line 232
    iget-object v1, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 19348
    iget-boolean v1, v1, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    if-nez v1, :cond_1a

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->setSingleLine()V

    :cond_1a
    const v1, 0x800013

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lo/getComponents;->asBinder()V

    .line 20199
    iget-boolean v1, v0, Lo/getComponents;->newSession:Z

    if-eqz v1, :cond_1b

    .line 241
    iget v1, v0, Lo/getComponents;->warmup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 243
    :cond_1b
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lo/getComponents;->ICustomTabsService:I

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "onPostMessage"

    const-string v1, "Unable to send Accessibility Exit event"

    const-string v2, "Chip"

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne p1, v4, :cond_0

    .line 796
    :try_start_0
    const-class p1, Lo/seekTo;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v4, 0x1

    .line 797
    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 798
    iget-object v5, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_0

    .line 801
    const-class p1, Lo/seekTo;

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 802
    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 803
    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 804
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 818
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 815
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 812
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 809
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v3
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 3

    .line 417
    sget-boolean v0, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lo/getComponents;->onRelationshipValidationResult()V

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 34433
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->notify:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 34434
    iput-boolean v2, v0, Lo/FirebaseAnalytics;->notify:Z

    .line 35305
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 35306
    invoke-static {v1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 34436
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 35436
    :cond_2
    iget-object v0, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_3

    .line 35437
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 421
    :cond_3
    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-direct {p0}, Lo/getComponents;->onTransact()V

    return-void
.end method

.method private asBinder()V
    .locals 7

    .line 316
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-nez v0, :cond_0

    goto :goto_4

    .line 25301
    :cond_0
    iget v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    .line 321
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 26195
    iget v1, v1, Lo/FirebaseAnalytics;->validateRelationship:F

    add-float/2addr v0, v1

    .line 322
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 27507
    iget-boolean v2, v1, Lo/FirebaseAnalytics;->onTransact:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 26529
    iget v2, v1, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    iget v6, v1, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v2, v6

    iget v1, v1, Lo/FirebaseAnalytics;->IPostMessageService:F

    add-float/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 324
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 28049
    iget v1, v1, Lo/FirebaseAnalytics;->postMessage:F

    .line 326
    iget-object v2, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 28161
    iget v2, v2, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    add-float/2addr v1, v2

    .line 327
    iget-object v2, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 29497
    iget-boolean v6, v2, Lo/FirebaseAnalytics;->asBinder:Z

    if-eqz v6, :cond_3

    iget-object v6, v2, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_5

    .line 29502
    iget-boolean v6, v2, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v6, :cond_4

    iget-object v6, v2, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-boolean v6, v2, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 28518
    :cond_5
    iget v3, v2, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    iget v4, v2, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    add-float/2addr v3, v4

    iget v2, v2, Lo/FirebaseAnalytics;->updateVisuals:F

    add-float v5, v3, v2

    :cond_6
    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 330
    invoke-static {p0, v1, v2, v0, v3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;IIII)V

    :cond_7
    :goto_4
    return-void
.end method

.method private asInterface()V
    .locals 5

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    return-void

    .line 22938
    :cond_0
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 23772
    iget-object v4, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 24557
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_3

    .line 24725
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 284
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void

    .line 286
    :cond_4
    invoke-static {p0, v2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void
.end method

.method private extraCallback(I)Z
    .locals 11

    .line 2222
    iput p1, p0, Lo/getComponents;->warmup:I

    .line 50718
    iget-boolean v0, p0, Lo/getComponents;->newSession:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 50719
    iget-object p1, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_1

    .line 50720
    iput-object v2, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    .line 50721
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 50726
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz p1, :cond_0

    .line 50727
    iget v1, p1, Lo/FirebaseAnalytics;->onMessageChannelReady:F

    :cond_0
    float-to-int p1, v1

    .line 50722
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 50723
    invoke-direct {p0}, Lo/getComponents;->ICustomTabsCallback$Stub()V

    :cond_1
    return v3

    .line 2228
    :cond_2
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2229
    iget-object v4, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gtz v4, :cond_5

    if-gtz v0, :cond_5

    .line 50728
    iget-object p1, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_4

    .line 50729
    iput-object v2, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    .line 50730
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 50735
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz p1, :cond_3

    .line 50736
    iget v1, p1, Lo/FirebaseAnalytics;->onMessageChannelReady:F

    :cond_3
    float-to-int p1, v1

    .line 50731
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 50732
    invoke-direct {p0}, Lo/getComponents;->ICustomTabsCallback$Stub()V

    :cond_4
    return v3

    :cond_5
    if-lez v4, :cond_6

    .line 2236
    div-int/lit8 v4, v4, 0x2

    move v9, v4

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    :goto_0
    if-lez v0, :cond_7

    .line 2237
    div-int/lit8 v3, v0, 0x2

    move v10, v3

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    .line 2239
    :goto_1
    iget-object v0, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2241
    iget-object v2, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2242
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v10, :cond_8

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v10, :cond_8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v9, :cond_8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v9, :cond_8

    return v1

    .line 2249
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_a

    .line 2250
    invoke-virtual {p0}, Lo/getComponents;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 2251
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2253
    :cond_9
    invoke-virtual {p0}, Lo/getComponents;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_b

    .line 2254
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_2

    .line 2257
    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2258
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 50737
    :cond_b
    :goto_2
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    move-object v5, p1

    move v7, v9

    move v8, v10

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    return v1
.end method

.method private newSession()V
    .locals 4

    .line 1378
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1379
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v1, :cond_0

    .line 1380
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 50629
    :cond_0
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v1, :cond_1

    .line 50630
    iget-object v1, v1, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 50631
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1384
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/getComponents;->extraCommand:Lo/confirmPasswordReset;

    invoke-virtual {v1, v2, v0, v3}, Lo/verifyPasswordResetCode;->onMessageChannelReady(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    :cond_2
    return-void
.end method

.method private onRelationshipValidationResult()V
    .locals 4

    .line 444
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 36526
    iget-object v1, v1, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 446
    invoke-static {v1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 37436
    iget-object v2, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    .line 37437
    iget-object v2, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    :cond_0
    const/4 v3, 0x0

    .line 447
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/getComponents;->asInterface:Landroid/graphics/drawable/RippleDrawable;

    .line 449
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 38433
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 38434
    iput-boolean v1, v0, Lo/FirebaseAnalytics;->notify:Z

    .line 39305
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 39306
    invoke-static {v1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_1
    iput-object v3, v0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 38436
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 451
    :cond_2
    iget-object v0, p0, Lo/getComponents;->asInterface:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onTransact()V
    .locals 2

    .line 36436
    iget-object v0, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 36437
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 427
    :cond_0
    iget-object v1, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    invoke-virtual {v0}, Lo/FirebaseAnalytics;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    iget-object v1, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Landroid/graphics/RectF;
    .locals 3

    .line 943
    iget-object v0, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 945
    invoke-virtual {p0}, Lo/getComponents;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    iget-object v1, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 50530
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 826
    invoke-direct {p0, p1}, Lo/getComponents;->ICustomTabsCallback(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    .line 827
    invoke-virtual {v0, p1}, Lo/seekTo;->ICustomTabsCallback(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 833
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/seekTo;->onMessageChannelReady(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    .line 50483
    iget v0, v0, Lo/seekTo;->ICustomTabsCallback:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 844
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 5

    .line 879
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 883
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 50486
    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 50487
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 884
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 50489
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 50492
    :goto_1
    iget-boolean v4, p0, Lo/getComponents;->onMessageChannelReady:Z

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 50495
    :cond_2
    iget-boolean v4, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 50498
    :cond_3
    iget-boolean v4, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 50501
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 50505
    :cond_5
    new-array v3, v3, [I

    .line 50508
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x101009e

    .line 50509
    aput v4, v3, v1

    const/4 v1, 0x1

    .line 50512
    :cond_6
    iget-boolean v2, p0, Lo/getComponents;->onMessageChannelReady:Z

    if-eqz v2, :cond_7

    const v2, 0x101009c

    .line 50513
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 50516
    :cond_7
    iget-boolean v2, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v2, :cond_8

    const v2, 0x1010367

    .line 50517
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 50520
    :cond_8
    iget-boolean v2, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eqz v2, :cond_9

    const v2, 0x10100a7

    .line 50521
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 50524
    :cond_9
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x10100a1

    .line 50525
    aput v2, v3, v1

    .line 884
    :cond_a
    invoke-virtual {v0, v3}, Lo/FirebaseAnalytics;->onNavigationEvent([I)Z

    move-result v1

    :cond_b
    if-eqz v1, :cond_c

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method final extraCallback()Z
    .locals 2

    .line 938
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_1

    .line 50529
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 613
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 41588
    iget-object v0, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 855
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    .line 50484
    iget v0, v0, Lo/seekTo;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 855
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    .line 50485
    iget v0, v0, Lo/seekTo;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 857
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/getComponents;->onMessageChannelReady()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 250
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    invoke-static {p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Lo/setFirebaseUIVersion;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 466
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 467
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lo/getComponents;->ICustomTabsCallback:[I

    invoke-static {p1, v0}, Lo/getComponents;->mergeDrawableStates([I[I)[I

    .line 39735
    :cond_0
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_1

    .line 39866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 471
    sget-object v0, Lo/getComponents;->asBinder:[I

    invoke-static {p1, v0}, Lo/getComponents;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 849
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 850
    iget-object v0, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-virtual {v0, p1, p2, p3}, Lo/seekTo;->onPostMessage(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 50478
    :cond_0
    iget-boolean v0, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_5

    .line 50479
    iput-boolean v2, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    .line 50480
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_1

    .line 47943
    :cond_1
    iget-object v0, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 48938
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_3

    .line 49772
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 47947
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    iget-object v1, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 50471
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 47950
    :cond_4
    iget-object v0, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 50473
    iget-boolean v1, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    if-eq v1, v0, :cond_5

    .line 50474
    iput-boolean v0, p0, Lo/getComponents;->ICustomTabsCallback$Stub$Proxy:Z

    .line 50475
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 785
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 264
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 20735
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 20866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "android.view.View"

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 21735
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_3

    .line 21866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, "android.widget.CompoundButton"

    goto :goto_3

    :cond_4
    const-string v0, "android.widget.Button"

    .line 266
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 22735
    :goto_4
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_5

    .line 22866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 273
    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method final onMessageChannelReady()Landroid/graphics/Rect;
    .locals 5

    .line 955
    invoke-virtual {p0}, Lo/getComponents;->ICustomTabsCallback()Landroid/graphics/RectF;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lo/getComponents;->updateVisuals:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 957
    iget-object v0, p0, Lo/getComponents;->updateVisuals:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 672
    iget v0, p0, Lo/getComponents;->warmup:I

    invoke-direct {p0, v0}, Lo/getComponents;->extraCallback(I)Z

    .line 673
    invoke-direct {p0}, Lo/getComponents;->ICustomTabsCallback$Stub()V

    .line 674
    invoke-direct {p0}, Lo/getComponents;->asBinder()V

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 677
    invoke-virtual {p0}, Lo/getComponents;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 3

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 724
    iget-object v1, p0, Lo/getComponents;->onTransact:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 725
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 731
    :cond_0
    iget-object v1, p0, Lo/getComponents;->mayLaunchUrl:Lo/getComponents$onNavigationEvent;

    invoke-virtual {v1, v2, v2}, Lo/seekTo;->onMessageChannelReady(II)Z

    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lo/getComponents;->ICustomTabsCallback()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 965
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    .line 341
    iget v0, p0, Lo/getComponents;->ICustomTabsService:I

    if-eq v0, p1, :cond_0

    .line 342
    iput p1, p0, Lo/getComponents;->ICustomTabsService:I

    .line 343
    invoke-direct {p0}, Lo/getComponents;->asBinder()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 42943
    iget-object v1, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 43938
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 44772
    iget-object v4, v1, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v1, v1, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 42947
    iget-object v1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    iget-object v4, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 45471
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 42950
    :cond_2
    iget-object v1, p0, Lo/getComponents;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_4

    .line 750
    :cond_3
    iget-boolean v0, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_8

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 46865
    iput-boolean v2, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    .line 46866
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 758
    :cond_4
    iget-boolean v0, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {p0}, Lo/getComponents;->onPostMessage()Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 47864
    :goto_2
    iget-boolean v1, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_9

    .line 47865
    iput-boolean v2, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    .line 47866
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    .line 45864
    iget-boolean v0, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    if-eq v0, v3, :cond_7

    .line 45865
    iput-boolean v3, p0, Lo/getComponents;->getInterfaceDescriptor:Z

    .line 45866
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_7
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x0

    :cond_9
    :goto_5
    if-nez v0, :cond_b

    .line 769
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    return v2

    :cond_b
    :goto_6
    return v3
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 40436
    iget-object v0, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 40437
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    :cond_0
    if-eq p1, v0, :cond_1

    .line 506
    iget-object v0, p0, Lo/getComponents;->asInterface:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 507
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 509
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    .line 496
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 41436
    iget-object v0, p0, Lo/getComponents;->onRelationshipValidationResult:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 41437
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    :cond_0
    if-eq p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lo/getComponents;->asInterface:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    .line 516
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    .line 501
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    .line 486
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    .line 491
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1757
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1758
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    .line 1745
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50692
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 683
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-nez v0, :cond_0

    .line 685
    iput-boolean p1, p0, Lo/getComponents;->ICustomTabsCallback$Stub:Z

    return-void

    .line 42866
    :cond_0
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 691
    iget-object v0, p0, Lo/getComponents;->extraCallback:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 692
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1844
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1845
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1811
    invoke-virtual {p0, p1}, Lo/getComponents;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1805
    invoke-virtual {p0, p1}, Lo/getComponents;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 1832
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50696
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    .line 1785
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50694
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1093
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50539
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 50540
    iput-object p1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 50541
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    .line 1081
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50532
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 50534
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 50535
    iput-object p1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 50536
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50570
    iget v1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 50571
    iput p1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 50576
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 50578
    new-instance v2, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 50583
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 50585
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 50587
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 50589
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 50591
    new-instance p1, Lo/useAppLanguage;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 50573
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50546
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 50548
    iget v1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 50549
    iput p1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 50554
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 50556
    new-instance v2, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 50561
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 50563
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 50565
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 50567
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 50569
    new-instance p1, Lo/useAppLanguage;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 50551
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lo/FirebaseAnalytics;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 31447
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    .line 406
    :cond_0
    iput-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v0, 0x0

    .line 32358
    iput-boolean v0, p1, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    .line 410
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 33447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    .line 411
    iget p1, p0, Lo/getComponents;->warmup:I

    invoke-direct {p0, p1}, Lo/getComponents;->extraCallback(I)Z

    .line 412
    invoke-direct {p0}, Lo/getComponents;->ICustomTabsCallback$Stub()V

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2186
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    .line 2174
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50716
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1475
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1442
    invoke-virtual {p0, p1}, Lo/getComponents;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1436
    invoke-virtual {p0, p1}, Lo/getComponents;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    .line 1463
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50634
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1545
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    .line 1533
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50638
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1511
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    .line 1498
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50636
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    .line 1416
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50632
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    .line 1115
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50544
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1948
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1949
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    .line 1936
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50702
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    .line 1197
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50592
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->extraCallback(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50594
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->extraCallback(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1326
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1632
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    .line 1635
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->asInterface()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 10

    .line 1713
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_f

    .line 50646
    iget-object v1, v0, Lo/FirebaseAnalytics;->newSession:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_f

    .line 50648
    invoke-static {}, Lo/isRated;->ICustomTabsCallback()Lo/isRated;

    move-result-object v1

    .line 50653
    iget-object v2, v1, Lo/isRated;->onRelationshipValidationResult:Lo/getRatingStyle;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_7

    .line 50655
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lo/getRatingStyle;->onPostMessage(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 50656
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 50673
    iget v5, v1, Lo/isRated;->onPostMessage:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v7, -0x1

    const-string v8, ""

    if-eqz v5, :cond_7

    if-eqz v2, :cond_2

    .line 50659
    sget-object v5, Lo/newPercentageRating;->onMessageChannelReady:Lo/getRatingStyle;

    goto :goto_1

    :cond_2
    sget-object v5, Lo/newPercentageRating;->onNavigationEvent:Lo/getRatingStyle;

    .line 50674
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v5, p1, v4, v9}, Lo/getRatingStyle;->onPostMessage(Ljava/lang/CharSequence;II)Z

    move-result v5

    .line 50676
    iget-boolean v9, v1, Lo/isRated;->onNavigationEvent:Z

    if-nez v9, :cond_4

    if-nez v5, :cond_3

    invoke-static {p1}, Lo/isRated;->extraCallback(Ljava/lang/CharSequence;)I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 50677
    :cond_3
    sget-object v5, Lo/isRated;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    .line 50679
    :cond_4
    iget-boolean v9, v1, Lo/isRated;->onNavigationEvent:Z

    if-eqz v9, :cond_6

    if-eqz v5, :cond_5

    invoke-static {p1}, Lo/isRated;->extraCallback(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 50680
    :cond_5
    sget-object v5, Lo/isRated;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v5, v8

    .line 50658
    :goto_2
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50661
    :cond_7
    iget-boolean v5, v1, Lo/isRated;->onNavigationEvent:Z

    if-eq v2, v5, :cond_9

    if-eqz v2, :cond_8

    const/16 v5, 0x202b

    goto :goto_3

    :cond_8
    const/16 v5, 0x202a

    .line 50662
    :goto_3
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 50663
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v5, 0x202c

    .line 50664
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 50666
    :cond_9
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-eqz v2, :cond_a

    .line 50670
    sget-object v2, Lo/newPercentageRating;->onMessageChannelReady:Lo/getRatingStyle;

    goto :goto_5

    :cond_a
    sget-object v2, Lo/newPercentageRating;->onNavigationEvent:Lo/getRatingStyle;

    .line 50683
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, p1, v4, v5}, Lo/getRatingStyle;->onPostMessage(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 50685
    iget-boolean v4, v1, Lo/isRated;->onNavigationEvent:Z

    if-nez v4, :cond_c

    if-nez v2, :cond_b

    invoke-static {p1}, Lo/isRated;->onMessageChannelReady(Ljava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v6, :cond_c

    .line 50686
    :cond_b
    sget-object v8, Lo/isRated;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_6

    .line 50688
    :cond_c
    iget-boolean v1, v1, Lo/isRated;->onNavigationEvent:Z

    if-eqz v1, :cond_e

    if-eqz v2, :cond_d

    invoke-static {p1}, Lo/isRated;->onMessageChannelReady(Ljava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v7, :cond_e

    .line 50689
    :cond_d
    sget-object v8, Lo/isRated;->extraCallback:Ljava/lang/String;

    .line 50669
    :cond_e
    :goto_6
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, v3

    .line 50648
    :goto_7
    iput-object p1, v0, Lo/FirebaseAnalytics;->newSession:Ljava/lang/CharSequence;

    .line 50650
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_f
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    invoke-virtual {p0, p1}, Lo/getComponents;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1592
    invoke-virtual {p0, p1}, Lo/getComponents;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2152
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2153
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->warmup(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    .line 2140
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50714
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->warmup(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1619
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50640
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    .line 1622
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->asInterface()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1702
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1703
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    .line 1690
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50644
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2118
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2119
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    .line 2106
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50712
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1668
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1669
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    .line 1656
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50642
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1573
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/getComponents;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1583
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1584
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onPostMessage(Z)V

    .line 1586
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->asInterface()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 576
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 592
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 589
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 607
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 605
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 544
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 563
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 560
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 557
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    .line 257
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 20651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 20652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 20653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 618
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 624
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 625
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_1

    .line 41592
    iput-object p1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 622
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 2210
    iput-boolean p1, p0, Lo/getComponents;->newSession:Z

    .line 2211
    iget p1, p0, Lo/getComponents;->warmup:I

    invoke-direct {p0, p1}, Lo/getComponents;->extraCallback(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 479
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    return-void
.end method

.method public setHideMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 0

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1902
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50700
    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2016
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onTransact(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    .line 2004
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50706
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onTransact(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1982
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 1983
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onRelationshipValidationResult(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    .line 1970
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50704
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->onRelationshipValidationResult(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 1301
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-nez v0, :cond_0

    return-void

    .line 1304
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1305
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 643
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    return-void

    .line 641
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 659
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    return-void

    .line 657
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 664
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 665
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 42344
    iput p1, v0, Lo/FirebaseAnalytics;->setDefaultImpl:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 651
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    return-void

    .line 649
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lo/getComponents;->onTransact:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_1

    .line 50608
    iget-object v1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 50609
    iput-object p1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 50614
    iget-boolean p1, v0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 50615
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 50611
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1284
    :cond_1
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 50617
    iget-boolean p1, p1, Lo/FirebaseAnalytics;->notify:Z

    if-nez p1, :cond_2

    .line 1285
    invoke-direct {p0}, Lo/getComponents;->onRelationshipValidationResult()V

    :cond_2
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1266
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_2

    .line 50596
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 50598
    iget-object v1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 50599
    iput-object p1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 50604
    iget-boolean p1, v0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 50605
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 50601
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1268
    :cond_1
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 50607
    iget-boolean p1, p1, Lo/FirebaseAnalytics;->notify:Z

    if-nez p1, :cond_2

    .line 1269
    invoke-direct {p0}, Lo/getComponents;->onRelationshipValidationResult()V

    :cond_2
    return-void
.end method

.method public setShapeAppearanceModel(Lo/useAppLanguage;)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    return-void
.end method

.method public setShowMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 0

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1867
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50698
    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 635
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    return-void

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1311
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1317
    :cond_1
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 50618
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1317
    :goto_0
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1318
    iget-object p2, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz p2, :cond_3

    .line 1319
    invoke-virtual {p2, p1}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 1370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1371
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50625
    new-instance v1, Lo/verifyPasswordResetCode;

    iget-object v2, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lo/verifyPasswordResetCode;-><init>(Landroid/content/Context;I)V

    .line 50627
    iget-object p1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lo/signInWithEmailAndPassword;->ICustomTabsCallback(Lo/verifyPasswordResetCode;Landroid/content/Context;)V

    .line 1374
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->newSession()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1361
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1362
    iget-object p1, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz p1, :cond_0

    .line 50621
    new-instance v0, Lo/verifyPasswordResetCode;

    iget-object v1, p1, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lo/verifyPasswordResetCode;-><init>(Landroid/content/Context;I)V

    .line 50623
    iget-object p2, p1, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    iget-object p1, p1, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lo/signInWithEmailAndPassword;->ICustomTabsCallback(Lo/verifyPasswordResetCode;Landroid/content/Context;)V

    .line 1365
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->newSession()V

    return-void
.end method

.method public setTextAppearance(Lo/verifyPasswordResetCode;)V
    .locals 2

    .line 1353
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50619
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    iget-object v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lo/signInWithEmailAndPassword;->ICustomTabsCallback(Lo/verifyPasswordResetCode;Landroid/content/Context;)V

    .line 1356
    :cond_0
    invoke-direct {p0}, Lo/getComponents;->newSession()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2084
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->asInterface(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    .line 2072
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50710
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->asInterface(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2050
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 2051
    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->asBinder(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    .line 2038
    iget-object v0, p0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 50708
    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lo/FirebaseAnalytics;->asBinder(F)V

    :cond_0
    return-void
.end method
