.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# static fields
.field private static final onMessageChannelReady:Landroid/view/View$OnTouchListener;


# instance fields
.field ICustomTabsCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;

.field extraCallback:I

.field onNavigationEvent:Lcom/google/android/material/snackbar/BaseTransientBottomBar$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1075
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage$4;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage$4;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->onMessageChannelReady:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1092
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1096
    invoke-static {p1, p2, v0, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1099
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1100
    sget-object v1, Lo/toStringMap$newSession;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1101
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1102
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_elevation:I

    .line 1103
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 1102
    invoke-static {p0, p2}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    .line 1105
    :cond_0
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_animationMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->extraCallback:I

    .line 1106
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_backgroundOverlayColorAlpha:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1107
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1108
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1111
    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->onMessageChannelReady:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 1112
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1133
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->ICustomTabsCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;->onMessageChannelReady()V

    .line 1137
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1143
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->ICustomTabsCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 1144
    invoke-interface {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1124
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1125
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->onNavigationEvent:Lcom/google/android/material/snackbar/BaseTransientBottomBar$onNavigationEvent;

    if-eqz p1, :cond_0

    .line 1126
    invoke-interface {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onNavigationEvent;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1118
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->onMessageChannelReady:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
