.class public Lo/throwAbtExceptionIfAnalyticsIsNull;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Lo/FirebaseAuthException;


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final onPostMessage:[I

.field private static final onRelationshipValidationResult:I


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:Landroid/content/res/ColorStateList;

.field private final asInterface:Lo/getMaxUserPropertiesInAnalytics;

.field public extraCallback:Landroid/graphics/drawable/Drawable;

.field private getInterfaceDescriptor:I

.field private newSession:Z

.field public onMessageChannelReady:I

.field private onTransact:Landroid/graphics/PorterDuff$Mode;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 125
    sput-object v1, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    .line 126
    sput-object v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback:[I

    .line 167
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_Button:I

    sput v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onRelationshipValidationResult:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0}, Lo/throwAbtExceptionIfAnalyticsIsNull;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 191
    sget v0, Lo/toStringMap$extraCallback;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/throwAbtExceptionIfAnalyticsIsNull;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 195
    sget v1, Lo/throwAbtExceptionIfAnalyticsIsNull;->onRelationshipValidationResult:I

    move-object/from16 v2, p1

    invoke-static {v2, v7, v8, v1}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub:Ljava/util/LinkedHashSet;

    const/4 v9, 0x0

    .line 182
    iput-boolean v9, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->warmup:Z

    .line 183
    iput-boolean v9, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->newSession:Z

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 199
    sget-object v11, Lo/toStringMap$newSession;->MaterialButton:[I

    sget v12, Lo/throwAbtExceptionIfAnalyticsIsNull;->onRelationshipValidationResult:I

    new-array v6, v9, [I

    .line 1081
    invoke-static {v10, v7, v8, v12}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v11

    move/from16 v4, p3

    move v5, v12

    .line 1084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 1087
    invoke-virtual {v10, v7, v11, v8, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    sget v2, Lo/toStringMap$newSession;->MaterialButton_iconPadding:I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub$Proxy:I

    .line 204
    sget v2, Lo/toStringMap$newSession;->MaterialButton_iconTintMode:I

    const/4 v3, -0x1

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 205
    invoke-static {v2, v4}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onTransact:Landroid/graphics/PorterDuff$Mode;

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lo/toStringMap$newSession;->MaterialButton_iconTint:I

    .line 209
    invoke-static {v2, v1, v4}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asBinder:Landroid/content/res/ColorStateList;

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lo/toStringMap$newSession;->MaterialButton_icon:I

    invoke-static {v2, v1, v4}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    .line 212
    sget v2, Lo/toStringMap$newSession;->MaterialButton_iconGravity:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    .line 214
    sget v2, Lo/toStringMap$newSession;->MaterialButton_iconSize:I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    .line 215
    sget v2, Lo/throwAbtExceptionIfAnalyticsIsNull;->onRelationshipValidationResult:I

    .line 1454
    new-instance v5, Lo/startActivityForSignInWithProvider;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    invoke-static {v10, v7, v8, v2, v5}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object v2

    .line 2429
    new-instance v5, Lo/useAppLanguage;

    invoke-direct {v5, v2, v9}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 219
    new-instance v2, Lo/getMaxUserPropertiesInAnalytics;

    invoke-direct {v2, v0, v5}, Lo/getMaxUserPropertiesInAnalytics;-><init>(Lo/throwAbtExceptionIfAnalyticsIsNull;Lo/useAppLanguage;)V

    iput-object v2, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 3081
    sget v5, Lo/toStringMap$newSession;->MaterialButton_android_insetLeft:I

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->extraCallback:I

    .line 3082
    sget v5, Lo/toStringMap$newSession;->MaterialButton_android_insetRight:I

    .line 3083
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent:I

    .line 3084
    sget v5, Lo/toStringMap$newSession;->MaterialButton_android_insetTop:I

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->asBinder:I

    .line 3085
    sget v5, Lo/toStringMap$newSession;->MaterialButton_android_insetBottom:I

    .line 3086
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub:I

    .line 3089
    sget v5, Lo/toStringMap$newSession;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3090
    sget v5, Lo/toStringMap$newSession;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onRelationshipValidationResult:I

    .line 3091
    iget-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    iget v6, v2, Lo/getMaxUserPropertiesInAnalytics;->onRelationshipValidationResult:I

    int-to-float v6, v6

    .line 4738
    new-instance v7, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v7, v5}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 5140
    new-instance v5, Lo/startActivityForSignInWithProvider;

    invoke-direct {v5, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v5, v7, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 5154
    new-instance v5, Lo/startActivityForSignInWithProvider;

    invoke-direct {v5, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v5, v7, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 5168
    new-instance v5, Lo/startActivityForSignInWithProvider;

    invoke-direct {v5, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v5, v7, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 5182
    new-instance v5, Lo/startActivityForSignInWithProvider;

    invoke-direct {v5, v6}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v5, v7, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 5429
    new-instance v5, Lo/useAppLanguage;

    invoke-direct {v5, v7, v9}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 6380
    iput-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 6381
    invoke-virtual {v2, v5}, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage(Lo/useAppLanguage;)V

    .line 3092
    iput-boolean v4, v2, Lo/getMaxUserPropertiesInAnalytics;->extraCommand:Z

    .line 3095
    :cond_0
    sget v5, Lo/toStringMap$newSession;->MaterialButton_strokeWidth:I

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    .line 3097
    sget v5, Lo/toStringMap$newSession;->MaterialButton_backgroundTintMode:I

    .line 3099
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3098
    invoke-static {v5, v6}, Lo/signInAnonymously;->extraCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    .line 3100
    iget-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 3102
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lo/toStringMap$newSession;->MaterialButton_backgroundTint:I

    .line 3101
    invoke-static {v5, v1, v6}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 3103
    iget-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 3105
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lo/toStringMap$newSession;->MaterialButton_strokeColor:I

    .line 3104
    invoke-static {v5, v1, v6}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsService:Landroid/content/res/ColorStateList;

    .line 3106
    iget-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 3108
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lo/toStringMap$newSession;->MaterialButton_rippleColor:I

    .line 3107
    invoke-static {v5, v1, v6}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v2, Lo/getMaxUserPropertiesInAnalytics;->newSession:Landroid/content/res/ColorStateList;

    .line 3110
    sget v5, Lo/toStringMap$newSession;->MaterialButton_android_checkable:I

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    .line 3111
    sget v5, Lo/toStringMap$newSession;->MaterialButton_elevation:I

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 3114
    iget-object v6, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-static {v6}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v6

    .line 3115
    iget-object v7, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 3116
    iget-object v8, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-static {v8}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v8

    .line 3117
    iget-object v10, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 3120
    iget-object v11, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 7195
    new-instance v12, Lo/setFirebaseUIVersion;

    iget-object v13, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-direct {v12, v13}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 7196
    iget-object v13, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 7585
    iget-object v14, v12, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v15, Lo/getUsername;

    invoke-direct {v15, v13}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v15, v14, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 7586
    invoke-virtual {v12}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 7198
    iget-object v13, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-static {v12, v13}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 7199
    iget-object v13, v2, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    if-eqz v13, :cond_1

    .line 7200
    iget-object v13, v2, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v12, v13}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7202
    :cond_1
    iget v13, v2, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    int-to-float v13, v13

    iget-object v14, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsService:Landroid/content/res/ColorStateList;

    invoke-virtual {v12, v13, v14}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    .line 7204
    new-instance v13, Lo/setFirebaseUIVersion;

    iget-object v14, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-direct {v13, v14}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    .line 7206
    invoke-virtual {v13, v9}, Lo/setFirebaseUIVersion;->setTint(I)V

    .line 7207
    iget v14, v2, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    int-to-float v14, v14

    invoke-virtual {v13, v14, v9}, Lo/setFirebaseUIVersion;->onNavigationEvent(FI)V

    .line 7213
    sget-boolean v14, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage:Z

    const/4 v15, 0x2

    if-eqz v14, :cond_2

    .line 7214
    new-instance v14, Lo/setFirebaseUIVersion;

    iget-object v4, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-direct {v14, v4}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    iput-object v14, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    .line 7215
    iget-object v4, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;I)V

    .line 7216
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, v2, Lo/getMaxUserPropertiesInAnalytics;->newSession:Landroid/content/res/ColorStateList;

    .line 7218
    invoke-static {v4}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v14, Landroid/graphics/drawable/LayerDrawable;

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v13, v15, v9

    const/4 v13, 0x1

    aput-object v12, v15, v13

    invoke-direct {v14, v15}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 8155
    new-instance v12, Landroid/graphics/drawable/InsetDrawable;

    iget v13, v2, Lo/getMaxUserPropertiesInAnalytics;->extraCallback:I

    iget v15, v2, Lo/getMaxUserPropertiesInAnalytics;->asBinder:I

    iget v9, v2, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent:I

    iget v0, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub:I

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    move/from16 v18, v13

    move/from16 v19, v15

    move/from16 v20, v9

    move/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 7219
    iget-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v12, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v2, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    .line 7223
    iget-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x1

    goto :goto_0

    .line 7225
    :cond_2
    new-instance v0, Lo/checkActionCode;

    iget-object v3, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-direct {v0, v3}, Lo/checkActionCode;-><init>(Lo/useAppLanguage;)V

    iput-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    .line 7226
    iget-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Lo/getMaxUserPropertiesInAnalytics;->newSession:Landroid/content/res/ColorStateList;

    .line 7227
    invoke-static {v3}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 7226
    invoke-static {v0, v3}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 7228
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    iget-object v9, v2, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    aput-object v9, v3, v15

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    .line 7231
    iget-object v0, v2, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    .line 9155
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget v9, v2, Lo/getMaxUserPropertiesInAnalytics;->extraCallback:I

    iget v12, v2, Lo/getMaxUserPropertiesInAnalytics;->asBinder:I

    iget v13, v2, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent:I

    iget v14, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub:I

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v3

    .line 9485
    :goto_0
    invoke-super {v11, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 10337
    invoke-virtual {v2, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v3

    if-eqz v3, :cond_3

    int-to-float v5, v5

    .line 10651
    iget-object v9, v3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v9, v9, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v9, v9, v5

    if-eqz v9, :cond_3

    .line 10652
    iget-object v9, v3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v5, v9, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 10653
    invoke-virtual {v3}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 3128
    :cond_3
    iget-object v3, v2, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    iget v5, v2, Lo/getMaxUserPropertiesInAnalytics;->extraCallback:I

    add-int/2addr v6, v5

    iget v5, v2, Lo/getMaxUserPropertiesInAnalytics;->asBinder:I

    add-int/2addr v7, v5

    iget v5, v2, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent:I

    add-int/2addr v8, v5

    iget v2, v2, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub:I

    add-int/2addr v10, v2

    invoke-static {v3, v6, v7, v8, v10}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;IIII)V

    .line 222
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v1, p0

    .line 224
    iget v2, v1, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 225
    iget-object v2, v1, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v1, v9}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    return-void
.end method

.method private extraCallback()Ljava/lang/String;
    .locals 1

    .line 10977
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 11345
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 231
    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_1

    :cond_1
    const-class v0, Landroid/widget/Button;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onMessageChannelReady()V
    .locals 6

    .line 431
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 435
    :cond_0
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_2

    .line 441
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    :cond_2
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    iget v3, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 454
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    .line 456
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub$Proxy:I

    sub-int/2addr v4, v0

    .line 459
    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 24474
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 463
    :goto_0
    iget v3, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_6

    neg-int v4, v4

    .line 467
    :cond_6
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsService:I

    if-eq v0, v4, :cond_7

    .line 468
    iput v4, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsService:I

    .line 469
    invoke-direct {p0, v2}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_7
    return-void

    .line 436
    :cond_8
    :goto_2
    iput v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsService:I

    .line 437
    invoke-direct {p0, v2}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method private onPostMessage(Z)V
    .locals 6

    .line 657
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 658
    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asBinder:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 660
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onTransact:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 661
    iget-object v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 664
    :cond_0
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 665
    :goto_0
    iget v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 666
    :goto_1
    iget-object v3, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsService:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 670
    :cond_3
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    const/4 v4, 0x0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 24692
    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, v4, v4, v4}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 24694
    :cond_6
    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v4, v4, p1, v4}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 679
    :cond_7
    invoke-static {p0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 680
    aget-object v5, p1, v1

    .line 681
    aget-object p1, p1, v2

    if-eqz v0, :cond_8

    .line 682
    iget-object v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-ne v5, v2, :cond_9

    :cond_8
    if-nez v0, :cond_a

    iget-object v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    .line 25692
    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, v4, v4, v4}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 25694
    :cond_b
    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v4, v4, p1, v4}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 333
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 15044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 15150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 15168
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    return-object v0

    .line 284
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 18044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 18150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 18181
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 321
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->warmup:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 417
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x0

    .line 22337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 417
    invoke-static {p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Lo/setFirebaseUIVersion;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 893
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 36977
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 37345
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 896
    sget-object v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage:[I

    invoke-static {p1, v0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->mergeDrawableStates([I[I)[I

    .line 899
    :cond_1
    invoke-virtual {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 900
    sget-object v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback:[I

    invoke-static {p1, v0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 246
    invoke-direct {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 237
    invoke-direct {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11977
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 12345
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 239
    invoke-virtual {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 394
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 396
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 22236
    iget-object p2, p1, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 22237
    iget-object p2, p1, Lo/getMaxUserPropertiesInAnalytics;->warmup:Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lo/getMaxUserPropertiesInAnalytics;->extraCallback:I

    iget v0, p1, Lo/getMaxUserPropertiesInAnalytics;->asBinder:I

    iget v1, p1, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent:I

    sub-int/2addr p4, v1

    iget p1, p1, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub:I

    sub-int/2addr p5, p1

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 403
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->onMeasure(II)V

    .line 404
    invoke-direct {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 410
    invoke-direct {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 965
    invoke-virtual {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->toggle()V

    .line 967
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 360
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 19044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 19337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 19243
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setTint(I)V

    :cond_1
    return-void

    .line 354
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 21044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const-string v0, "MaterialButton"

    const-string v2, "Do not set the background; MaterialButton manages its own background drawable."

    .line 376
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 22142
    iput-boolean v1, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    .line 22145
    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    iget-object v2, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 22146
    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 388
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 369
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 39044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 39150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 39341
    iput-boolean p1, v0, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 37977
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 38345
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->warmup:Z

    if-eq v0, p1, :cond_3

    .line 937
    iput-boolean p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->warmup:Z

    .line 938
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 941
    iget-boolean p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->newSession:Z

    if-eqz p1, :cond_1

    return-void

    .line 945
    :cond_1
    iput-boolean v1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->newSession:Z

    .line 946
    iget-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 949
    :cond_2
    iput-boolean v2, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->newSession:Z

    :cond_3
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 4

    .line 32044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 32150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 32306
    iget-boolean v3, v0, Lo/getMaxUserPropertiesInAnalytics;->extraCommand:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lo/getMaxUserPropertiesInAnalytics;->onRelationshipValidationResult:I

    if-eq v3, p1, :cond_2

    .line 32307
    :cond_1
    iput p1, v0, Lo/getMaxUserPropertiesInAnalytics;->onRelationshipValidationResult:I

    .line 32308
    iput-boolean v1, v0, Lo/getMaxUserPropertiesInAnalytics;->extraCommand:Z

    .line 32310
    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    int-to-float p1, p1

    .line 33738
    new-instance v3, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v3, v1}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 34140
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v3, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 34154
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v3, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 34168
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v3, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 34182
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v3, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 34429
    new-instance p1, Lo/useAppLanguage;

    invoke-direct {p1, v3, v2}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 35380
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 35381
    invoke-virtual {v0, p1}, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage(Lo/useAppLanguage;)V

    :cond_2
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 36044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 36150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setCornerRadius(I)V

    :cond_1
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 424
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    .line 23044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 23337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 23651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 23652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 23653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 555
    iput-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 556
    invoke-direct {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 885
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    if-eq v0, p1, :cond_0

    .line 886
    iput p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->getInterfaceDescriptor:I

    .line 887
    invoke-direct {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 496
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v0, p1, :cond_0

    .line 497
    iput p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->ICustomTabsCallback$Stub$Proxy:I

    .line 498
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 573
    :goto_0
    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 526
    iget v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    if-eq v0, p1, :cond_0

    .line 527
    iput p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    const/4 p1, 0x1

    .line 528
    invoke-direct {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_0
    return-void

    .line 523
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asBinder:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 598
    iput-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asBinder:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 599
    invoke-direct {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onTransact:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 636
    iput-object p1, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onTransact:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 637
    invoke-direct {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1040
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 26044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 26150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 26248
    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->newSession:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_2

    .line 26249
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->newSession:Landroid/content/res/ColorStateList;

    .line 26250
    sget-boolean v1, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 26251
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 26252
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 26253
    :cond_1
    sget-boolean v1, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lo/checkActionCode;

    if-eqz v1, :cond_2

    .line 26254
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/checkActionCode;

    .line 26255
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 26254
    invoke-virtual {v0, p1}, Lo/checkActionCode;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 27044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 27150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setShapeAppearanceModel(Lo/useAppLanguage;)V
    .locals 1

    .line 40044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 40150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 40380
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 40381
    invoke-virtual {v0, p1}, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage(Lo/useAppLanguage;)V

    return-void

    .line 1002
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 28044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 28150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 28266
    iget-object v1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsService:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 28267
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsService:Landroid/content/res/ColorStateList;

    .line 28268
    invoke-virtual {v0}, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 29044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 29150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 30044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 30150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 30278
    iget v1, v0, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    if-eq v1, p1, :cond_1

    .line 30279
    iput p1, v0, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    .line 30280
    invoke-virtual {v0}, Lo/getMaxUserPropertiesInAnalytics;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 31044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    if-eqz v0, :cond_0

    .line 31150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setStrokeWidth(I)V

    :cond_1
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 13044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 13159
    iget-object v2, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_1

    .line 13160
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 13337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object p1

    .line 13162
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void

    .line 264
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 16044
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16150
    iget-boolean v0, v0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->asInterface:Lo/getMaxUserPropertiesInAnalytics;

    .line 16172
    iget-object v2, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, p1, :cond_1

    .line 16173
    iput-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    .line 16337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16174
    iget-object p1, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    .line 17337
    invoke-virtual {v0, v1}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object p1

    .line 16175
    iget-object v0, v0, Lo/getMaxUserPropertiesInAnalytics;->onTransact:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void

    .line 302
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 960
    iget-boolean v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->warmup:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setChecked(Z)V

    return-void
.end method
