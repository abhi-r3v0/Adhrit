.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lo/updateCurrentUser;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub$Proxy;
.implements Lo/skipToQueueItem;
.implements Lo/getProfile;
.implements Lo/FirebaseAuthException;


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;
    extraCallback = Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;
    }
.end annotation


# static fields
.field private static final asBinder:I


# instance fields
.field public final ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field public extraCallback:I

.field private final extraCommand:Landroidx/appcompat/widget/AppCompatImageHelper;

.field private getInterfaceDescriptor:Landroid/content/res/ColorStateList;

.field private mayLaunchUrl:I

.field private newSession:Landroid/graphics/PorterDuff$Mode;

.field onMessageChannelReady:I

.field final onNavigationEvent:Landroid/graphics/Rect;

.field onPostMessage:Z

.field public onRelationshipValidationResult:Lo/getUid;

.field private onTransact:Landroid/content/res/ColorStateList;

.field private final requestPostMessageChannel:Landroid/graphics/Rect;

.field private warmup:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->asBinder:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 201
    sget v0, Lo/toStringMap$extraCallback;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 207
    sget v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->asBinder:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lo/updateCurrentUser;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    .line 189
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestPostMessageChannel:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 211
    sget-object v6, Lo/toStringMap$newSession;->FloatingActionButton:[I

    sget v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->asBinder:I

    const/4 v8, 0x0

    new-array v5, v8, [I

    .line 2081
    invoke-static {p1, p2, p3, v7}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, v6

    move v3, p3

    move v4, v7

    .line 2084
    invoke-static/range {v0 .. v5}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 2087
    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_backgroundTint:I

    .line 216
    invoke-static {p1, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onTransact:Landroid/content/res/ColorStateList;

    .line 218
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    .line 219
    invoke-static {v1, v3}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

    .line 221
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_rippleColor:I

    .line 222
    invoke-static {p1, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->warmup:Landroid/content/res/ColorStateList;

    .line 224
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    .line 225
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_fabCustomSize:I

    .line 226
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsService:I

    .line 227
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub$Proxy:I

    .line 228
    sget v1, Lo/toStringMap$newSession;->FloatingActionButton_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 229
    sget v4, Lo/toStringMap$newSession;->FloatingActionButton_hoveredFocusedTranslationZ:I

    .line 230
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 231
    sget v5, Lo/toStringMap$newSession;->FloatingActionButton_pressedTranslationZ:I

    .line 232
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 233
    sget v5, Lo/toStringMap$newSession;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage:Z

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lo/toStringMap$onMessageChannelReady;->mtrl_fab_min_touch_target:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 236
    sget v6, Lo/toStringMap$newSession;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mayLaunchUrl:I

    .line 238
    sget v6, Lo/toStringMap$newSession;->FloatingActionButton_showMotionSpec:I

    .line 2175
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2176
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_0

    .line 2178
    invoke-static {p1, v6}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 240
    :goto_0
    sget v7, Lo/toStringMap$newSession;->FloatingActionButton_hideMotionSpec:I

    .line 3175
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3176
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_1

    .line 3178
    invoke-static {p1, v7}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v3

    .line 242
    :cond_1
    sget v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->asBinder:I

    sget-object v9, Lo/useAppLanguage;->extraCallback:Lo/signOut;

    .line 243
    invoke-static {p1, p2, p3, v7, v9}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p1

    .line 3429
    new-instance v7, Lo/useAppLanguage;

    invoke-direct {v7, p1, v8}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 247
    sget p1, Lo/toStringMap$newSession;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 248
    invoke-virtual {v0, p1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCommand:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 253
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 255
    new-instance p2, Lo/scrollVerticallyBy$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/scrollVerticallyBy$ICustomTabsCallback;-><init>(Lo/getProfile;)V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    .line 3434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_2

    .line 3435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 3437
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 257
    invoke-virtual {p2, v7}, Lo/getUid;->extraCallback(Lo/useAppLanguage;)V

    .line 4434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_3

    .line 4435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 4437
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 258
    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onTransact:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->warmup:Landroid/content/res/ColorStateList;

    iget v8, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub$Proxy:I

    .line 259
    invoke-virtual {p2, p3, v0, v7, v8}, Lo/getUid;->onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 5434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_4

    .line 5435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 5437
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 6228
    iput v5, p2, Lo/getUid;->warmup:I

    .line 6434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_5

    .line 6435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 6437
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 7239
    iget p3, p2, Lo/getUid;->asBinder:F

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_6

    .line 7240
    iput v1, p2, Lo/getUid;->asBinder:F

    .line 7241
    iget p3, p2, Lo/getUid;->asBinder:F

    iget v0, p2, Lo/getUid;->asInterface:F

    iget v1, p2, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {p2, p3, v0, v1}, Lo/getUid;->onPostMessage(FFF)V

    .line 7434
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_7

    .line 7435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 7437
    :cond_7
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 8258
    iget p3, p2, Lo/getUid;->asInterface:F

    cmpl-float p3, p3, v4

    if-eqz p3, :cond_8

    .line 8259
    iput v4, p2, Lo/getUid;->asInterface:F

    .line 8260
    iget p3, p2, Lo/getUid;->asBinder:F

    iget v0, p2, Lo/getUid;->asInterface:F

    iget v1, p2, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {p2, p3, v0, v1}, Lo/getUid;->onPostMessage(FFF)V

    .line 8434
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_9

    .line 8435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 8437
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 9265
    iget p3, p2, Lo/getUid;->getInterfaceDescriptor:F

    cmpl-float p3, p3, v2

    if-eqz p3, :cond_a

    .line 9266
    iput v2, p2, Lo/getUid;->getInterfaceDescriptor:F

    .line 9267
    iget p3, p2, Lo/getUid;->asBinder:F

    iget v0, p2, Lo/getUid;->asInterface:F

    iget v1, p2, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {p2, p3, v0, v1}, Lo/getUid;->onPostMessage(FFF)V

    .line 9434
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_b

    .line 9435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 9437
    :cond_b
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 264
    iget p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mayLaunchUrl:I

    .line 10272
    iget v0, p2, Lo/getUid;->postMessage:I

    if-eq v0, p3, :cond_c

    .line 10273
    iput p3, p2, Lo/getUid;->postMessage:I

    .line 10281
    iget p3, p2, Lo/getUid;->extraCommand:F

    .line 10285
    iput p3, p2, Lo/getUid;->extraCommand:F

    .line 10287
    iget-object v0, p2, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    .line 10288
    invoke-virtual {p2, p3, v0}, Lo/getUid;->ICustomTabsCallback(FLandroid/graphics/Matrix;)V

    .line 10289
    iget-object p2, p2, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 10434
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_d

    .line 10435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 10437
    :cond_d
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 11335
    iput-object v6, p2, Lo/getUid;->ICustomTabsService:Lo/getExperimentsToRemove;

    .line 11434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_e

    .line 11435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 11437
    :cond_e
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 12344
    iput-object v3, p2, Lo/getUid;->ICustomTabsCallback$Stub$Proxy:Lo/getExperimentsToRemove;

    .line 12434
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p2, :cond_f

    .line 12435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 12437
    :cond_f
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 13356
    iput-boolean p1, p2, Lo/getUid;->onTransact:Z

    .line 269
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic extraCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static onMessageChannelReady(II)I
    .locals 2

    .line 899
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 900
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    .line 918
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 911
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private onNavigationEvent()V
    .locals 4

    .line 466
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getInterfaceDescriptor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 472
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asInterface(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 476
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->newSession:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    .line 479
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 483
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getUid;
    .locals 2

    .line 1442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1443
    new-instance v0, Lo/getSignInMethod;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lo/getSignInMethod;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/setTenantId;)V

    return-object v0

    .line 1445
    :cond_0
    new-instance v0, Lo/getUid;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lo/getUid;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/setTenantId;)V

    return-object v0
.end method

.method public final ICustomTabsCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V
    .locals 2

    .line 23434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 23435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 23437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 23714
    :cond_1
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;)V

    move-object p1, v1

    .line 616
    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/getUid;->onMessageChannelReady(Lo/getUid$onMessageChannelReady;Z)V

    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 2

    .line 816
    invoke-super {p0}, Lo/updateCurrentUser;->drawableStateChanged()V

    .line 27434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 27435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 27437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getUid;->onMessageChannelReady([I)V

    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onTransact:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getInterfaceDescriptor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->newSession:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 822
    invoke-super {p0}, Lo/updateCurrentUser;->jumpDrawablesToCurrentState()V

    .line 28434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 28435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 28437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 823
    invoke-virtual {v0}, Lo/getUid;->extraCallback()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 3

    .line 804
    invoke-super {p0}, Lo/updateCurrentUser;->onAttachedToWindow()V

    .line 25434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 25435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 25437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 25697
    iget-object v1, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_1

    .line 25698
    iget-object v1, v0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-static {v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Lo/setFirebaseUIVersion;)V

    .line 25701
    :cond_1
    invoke-virtual {v0}, Lo/getUid;->ICustomTabsCallback$Stub()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25702
    iget-object v1, v0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 25728
    iget-object v2, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v2, :cond_2

    .line 25729
    iput-object v0, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 25739
    :cond_2
    iget-object v0, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 25702
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    .line 810
    invoke-super {p0}, Lo/updateCurrentUser;->onDetachedFromWindow()V

    .line 26434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 26435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 26437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 26707
    iget-object v1, v0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 26708
    iget-object v2, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 26709
    iget-object v2, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    .line 26710
    iput-object v1, v0, Lo/getUid;->setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .line 13777
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage(I)I

    move-result v0

    .line 276
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mayLaunchUrl:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady:I

    .line 14434
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v1, :cond_0

    .line 14435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 14437
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 277
    invoke-virtual {v1}, Lo/getUid;->asInterface()V

    .line 279
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady(II)I

    move-result p1

    .line 280
    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady(II)I

    move-result p2

    .line 284
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 287
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method final onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V
    .locals 1

    .line 22434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 22435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 22437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p1, p2, v0}, Lo/getUid;->onNavigationEvent(Lo/getUid$onMessageChannelReady;Z)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    .line 24056
    iget-boolean v0, v0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady:Z

    return v0
.end method

.method public final onNavigationEvent(Landroid/graphics/Rect;)V
    .locals 2

    .line 885
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 886
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 887
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 888
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final onPostMessage(I)I
    .locals 3

    const/4 v0, 0x1

    .line 781
    :goto_0
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsService:I

    if-eqz v1, :cond_0

    return v1

    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    .line 798
    sget p1, Lo/toStringMap$onMessageChannelReady;->design_fab_size_normal:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 795
    :cond_1
    sget p1, Lo/toStringMap$onMessageChannelReady;->design_fab_size_mini:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 789
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 790
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 791
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x1d6

    if-ge p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 844
    instance-of v0, p1, Lo/FirebaseAuthInvalidUserException;

    if-nez v0, :cond_0

    .line 845
    invoke-super {p0, p1}, Lo/updateCurrentUser;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 849
    :cond_0
    check-cast p1, Lo/FirebaseAuthInvalidUserException;

    .line 850
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lo/updateCurrentUser;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 852
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    iget-object p1, p1, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    const-string v1, "expandableWidgetHelper"

    .line 853
    invoke-virtual {p1, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/os/Bundle;

    .line 852
    invoke-virtual {v0, p1}, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 30064
    throw p1
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 828
    invoke-super {p0}, Lo/updateCurrentUser;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    :cond_0
    new-instance v1, Lo/FirebaseAuthInvalidUserException;

    invoke-direct {v1, v0}, Lo/FirebaseAuthInvalidUserException;-><init>(Landroid/os/Parcelable;)V

    .line 834
    iget-object v0, v1, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    .line 29062
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 29063
    iget-boolean v4, v2, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady:Z

    const-string v5, "expanded"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29064
    iget v2, v2, Lo/scrollVerticallyBy$ICustomTabsCallback;->onNavigationEvent:I

    const-string v4, "expandedComponentIdHint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "expandableWidgetHelper"

    .line 834
    invoke-virtual {v0, v2, v3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestPostMessageChannel:Landroid/graphics/Rect;

    .line 30866
    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 30867
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 30868
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestPostMessageChannel:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 931
    :cond_1
    invoke-super {p0, p1}, Lo/updateCurrentUser;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 499
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 489
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 494
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onTransact:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    .line 367
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onTransact:Landroid/content/res/ColorStateList;

    .line 16434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 16435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 16437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 17213
    iget-object v1, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_1

    .line 17214
    iget-object v1, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v1, p1}, Lo/setFirebaseUIVersion;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 17216
    :cond_1
    iget-object v1, v0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    if-eqz v1, :cond_2

    .line 17217
    iget-object v0, v0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    invoke-virtual {v0, p1}, Lo/getCurrentUser;->ICustomTabsCallback(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1

    .line 394
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback$Stub:Landroid/graphics/PorterDuff$Mode;

    .line 17434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 17435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 17437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 18222
    iget-object v1, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_1

    .line 18223
    iget-object v0, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public final setCompatElevation(F)V
    .locals 3

    .line 33434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 33435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 33437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 34239
    iget v1, v0, Lo/getUid;->asBinder:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 34240
    iput p1, v0, Lo/getUid;->asBinder:F

    .line 34241
    iget p1, v0, Lo/getUid;->asBinder:F

    iget v1, v0, Lo/getUid;->asInterface:F

    iget v2, v0, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {v0, p1, v1, v2}, Lo/getUid;->onPostMessage(FFF)V

    :cond_1
    return-void
.end method

.method public final setCompatElevationResource(I)V
    .locals 1

    .line 1225
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public final setCompatHoveredFocusedTranslationZ(F)V
    .locals 3

    .line 34434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 34435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 34437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 35258
    iget v1, v0, Lo/getUid;->asInterface:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 35259
    iput p1, v0, Lo/getUid;->asInterface:F

    .line 35260
    iget p1, v0, Lo/getUid;->asBinder:F

    iget v1, v0, Lo/getUid;->asInterface:F

    iget v2, v0, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {v0, p1, v1, v2}, Lo/getUid;->onPostMessage(FFF)V

    :cond_1
    return-void
.end method

.method public final setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    .line 1260
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public final setCompatPressedTranslationZ(F)V
    .locals 3

    .line 35434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 35435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 35437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 36265
    iget v1, v0, Lo/getUid;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 36266
    iput p1, v0, Lo/getUid;->getInterfaceDescriptor:F

    .line 36267
    iget p1, v0, Lo/getUid;->asBinder:F

    iget v1, v0, Lo/getUid;->asInterface:F

    iget v2, v0, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {v0, p1, v1, v2}, Lo/getUid;->onPostMessage(FFF)V

    :cond_1
    return-void
.end method

.method public final setCompatPressedTranslationZResource(I)V
    .locals 1

    .line 1295
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public final setCustomSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 750
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsService:I

    if-eq p1, v0, :cond_0

    .line 751
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsService:I

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 747
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setElevation(F)V
    .locals 2

    .line 1189
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setElevation(F)V

    .line 31434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 31435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 31437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 32371
    iget-object v1, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_1

    .line 32372
    iget-object v0, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 32651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 32652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 32653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_1
    return-void
.end method

.method public final setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .line 20434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 20435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 20437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 21352
    iget-boolean v0, v0, Lo/getUid;->onTransact:Z

    if-eq p1, v0, :cond_2

    .line 21434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_1

    .line 21435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 21437
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 22356
    iput-boolean p1, v0, Lo/getUid;->onTransact:Z

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final setExpandedComponentIdHint(I)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    .line 24081
    iput p1, v0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method public final setHideMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 37434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 37435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 37437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 38344
    iput-object p1, v0, Lo/getUid;->ICustomTabsCallback$Stub$Proxy:Lo/getExperimentsToRemove;

    return-void
.end method

.method public final setHideMotionSpecResource(I)V
    .locals 1

    .line 1343
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 511
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 512
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 18435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 18437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 19281
    iget v0, p1, Lo/getUid;->extraCommand:F

    .line 19285
    iput v0, p1, Lo/getUid;->extraCommand:F

    .line 19287
    iget-object v1, p1, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    .line 19288
    invoke-virtual {p1, v0, v1}, Lo/getUid;->ICustomTabsCallback(FLandroid/graphics/Matrix;)V

    .line 19289
    iget-object p1, p1, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 514
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getInterfaceDescriptor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCommand:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 506
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent()V

    return-void
.end method

.method public final setRippleColor(I)V
    .locals 0

    .line 326
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->warmup:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 341
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->warmup:Landroid/content/res/ColorStateList;

    .line 15434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 15435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 15437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 342
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->warmup:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lo/getUid;->ICustomTabsCallback(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    .line 1412
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setScaleX(F)V

    .line 41434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 41435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 41437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 1413
    invoke-virtual {p1}, Lo/getUid;->ICustomTabsCallback()V

    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    .line 1418
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setScaleY(F)V

    .line 42434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 42435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 42437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 1419
    invoke-virtual {p1}, Lo/getUid;->ICustomTabsCallback()V

    return-void
.end method

.method public final setShadowPaddingEnabled(Z)V
    .locals 1

    .line 43434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 43435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 43437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 44360
    iput-boolean p1, v0, Lo/getUid;->ICustomTabsCallback$Stub:Z

    .line 44361
    invoke-virtual {v0}, Lo/getUid;->asInterface()V

    return-void
.end method

.method public final setShapeAppearanceModel(Lo/useAppLanguage;)V
    .locals 1

    .line 19434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 19435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 19437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 523
    invoke-virtual {v0, p1}, Lo/getUid;->extraCallback(Lo/useAppLanguage;)V

    return-void
.end method

.method public final setShowMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 36434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v0, :cond_0

    .line 36435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 36437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 37335
    iput-object p1, v0, Lo/getUid;->ICustomTabsService:Lo/getExperimentsToRemove;

    return-void
.end method

.method public final setShowMotionSpecResource(I)V
    .locals 1

    .line 1319
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 689
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsService:I

    .line 690
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    if-eq p1, v0, :cond_0

    .line 691
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getInterfaceDescriptor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getInterfaceDescriptor:Landroid/content/res/ColorStateList;

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->newSession:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 454
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->newSession:Landroid/graphics/PorterDuff$Mode;

    .line 455
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    .line 1394
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setTranslationX(F)V

    .line 38434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 38435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 38437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 1395
    invoke-virtual {p1}, Lo/getUid;->onNavigationEvent()V

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    .line 1400
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setTranslationY(F)V

    .line 39434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 39435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 39437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 1401
    invoke-virtual {p1}, Lo/getUid;->onNavigationEvent()V

    return-void
.end method

.method public final setTranslationZ(F)V
    .locals 0

    .line 1406
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setTranslationZ(F)V

    .line 40434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 40435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 40437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 1407
    invoke-virtual {p1}, Lo/getUid;->onNavigationEvent()V

    return-void
.end method

.method public final setUseCompatPadding(Z)V
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage:Z

    if-eq v0, p1, :cond_1

    .line 658
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage:Z

    .line 24434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_0

    .line 24435
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 24437
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 659
    invoke-virtual {p1}, Lo/getUid;->onRelationshipValidationResult()V

    :cond_1
    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    .line 560
    invoke-super {p0, p1}, Lo/updateCurrentUser;->setVisibility(I)V

    return-void
.end method
