.class final Lo/getPreviousEmail;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Landroid/content/res/ColorStateList;

.field private final asBinder:Lo/useAppLanguage;

.field private final extraCallback:Landroid/content/res/ColorStateList;

.field final onMessageChannelReady:Landroid/graphics/Rect;

.field private final onNavigationEvent:I

.field private final onPostMessage:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILo/useAppLanguage;Landroid/graphics/Rect;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p6, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_3

    .line 68
    iget v0, p6, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_2

    .line 69
    iget v0, p6, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1

    .line 70
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    if-ltz v0, :cond_0

    .line 72
    iput-object p6, p0, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 73
    iput-object p2, p0, Lo/getPreviousEmail;->onPostMessage:Landroid/content/res/ColorStateList;

    .line 74
    iput-object p1, p0, Lo/getPreviousEmail;->extraCallback:Landroid/content/res/ColorStateList;

    .line 75
    iput-object p3, p0, Lo/getPreviousEmail;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 76
    iput p4, p0, Lo/getPreviousEmail;->onNavigationEvent:I

    .line 77
    iput-object p5, p0, Lo/getPreviousEmail;->asBinder:Lo/useAppLanguage;

    return-void

    .line 4138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2138
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1138
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 90
    sget-object v1, Lo/toStringMap$newSession;->MaterialCalendarItem:[I

    .line 91
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_android_insetLeft:I

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 95
    sget v2, Lo/toStringMap$newSession;->MaterialCalendarItem_android_insetTop:I

    .line 96
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 98
    sget v3, Lo/toStringMap$newSession;->MaterialCalendarItem_android_insetRight:I

    .line 99
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 101
    sget v4, Lo/toStringMap$newSession;->MaterialCalendarItem_android_insetBottom:I

    .line 102
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 104
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_itemFillColor:I

    .line 107
    invoke-static {p0, p1, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 109
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_itemTextColor:I

    .line 110
    invoke-static {p0, p1, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 112
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_itemStrokeColor:I

    .line 113
    invoke-static {p0, p1, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 115
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_itemStrokeWidth:I

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 118
    sget v1, Lo/toStringMap$newSession;->MaterialCalendarItem_itemShapeAppearance:I

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 120
    sget v2, Lo/toStringMap$newSession;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 121
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 5489
    new-instance v3, Lo/startActivityForSignInWithProvider;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    invoke-static {p0, v1, v2, v3}, Lo/useAppLanguage;->onPostMessage(Landroid/content/Context;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p0

    .line 6429
    new-instance v10, Lo/useAppLanguage;

    invoke-direct {v10, p0, v0}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 128
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance p0, Lo/getPreviousEmail;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lo/getPreviousEmail;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILo/useAppLanguage;Landroid/graphics/Rect;)V

    return-object p0

    .line 5050
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/widget/TextView;)V
    .locals 10

    .line 136
    new-instance v0, Lo/setFirebaseUIVersion;

    invoke-direct {v0}, Lo/setFirebaseUIVersion;-><init>()V

    .line 137
    new-instance v1, Lo/setFirebaseUIVersion;

    invoke-direct {v1}, Lo/setFirebaseUIVersion;-><init>()V

    .line 138
    iget-object v2, p0, Lo/getPreviousEmail;->asBinder:Lo/useAppLanguage;

    invoke-virtual {v0, v2}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 139
    iget-object v2, p0, Lo/getPreviousEmail;->asBinder:Lo/useAppLanguage;

    invoke-virtual {v1, v2}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 140
    iget-object v2, p0, Lo/getPreviousEmail;->extraCallback:Landroid/content/res/ColorStateList;

    .line 7288
    iget-object v3, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_0

    .line 7289
    iget-object v3, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v2, v3, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 7290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 141
    :cond_0
    iget v2, p0, Lo/getPreviousEmail;->onNavigationEvent:I

    int-to-float v2, v2

    iget-object v3, p0, Lo/getPreviousEmail;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    .line 142
    iget-object v2, p0, Lo/getPreviousEmail;->onPostMessage:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 145
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lo/getPreviousEmail;->onPostMessage:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 149
    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
