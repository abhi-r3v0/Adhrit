.class public Lo/MediaBrowserCompat$CustomActionResultReceiver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$CustomActionResultReceiver;

.field private static ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:I

.field private final onMessageChannelReady:Landroid/view/View;

.field private final onNavigationEvent:Ljava/lang/CharSequence;

.field private final onPostMessage:Ljava/lang/Runnable;

.field private onRelationshipValidationResult:Z

.field private onTransact:Lo/onItemLoaded;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lo/MediaBrowserCompat$CustomActionResultReceiver$3;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver$3;-><init>(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lo/MediaBrowserCompat$CustomActionResultReceiver$1;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver$1;-><init>(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    .line 110
    iput-object p2, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lo/isTransportControlEnabled;->extraCallback(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->extraCallback:I

    .line 113
    invoke-direct {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage()V

    .line 115
    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private extraCallback()V
    .locals 4

    .line 220
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget-object v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private extraCallback(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 237
    iget v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asBinder:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->extraCallback:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asInterface:I

    sub-int v1, p1, v1

    .line 238
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->extraCallback:I

    if-gt v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 241
    :cond_0
    iput v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asBinder:I

    .line 242
    iput p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asInterface:I

    const/4 p1, 0x1

    return p1
.end method

.method private onMessageChannelReady()V
    .locals 2

    .line 224
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget-object v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 93
    sget-object v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 94
    invoke-static {v1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object p1, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 98
    invoke-virtual {p1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback()V

    .line 100
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    .line 104
    :cond_2
    new-instance v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;

    invoke-direct {v0, p0, p1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onPostMessage()V
    .locals 1

    const v0, 0x7fffffff

    .line 250
    iput v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asBinder:I

    .line 251
    iput v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asInterface:I

    return-void
.end method

.method private static onPostMessage(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V
    .locals 1

    .line 210
    sget-object v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {v0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady()V

    .line 214
    :cond_0
    sput-object p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    if-eqz p0, :cond_1

    .line 215
    invoke-direct {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->extraCallback()V

    :cond_1
    return-void
.end method


# virtual methods
.method ICustomTabsCallback()V
    .locals 4

    .line 192
    sget-object v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_3

    .line 193
    sput-object v1, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    .line 194
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onTransact:Lo/onItemLoaded;

    if-eqz v0, :cond_2

    .line 3100
    iget-object v2, v0, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3095
    iget-object v2, v0, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3096
    iget-object v0, v0, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 196
    :cond_1
    iput-object v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onTransact:Lo/onItemLoaded;

    .line 197
    invoke-direct {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage()V

    .line 198
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    :cond_2
    const-string v0, "TooltipCompatHandler"

    const-string/jumbo v2, "sActiveHandler.mPopup == null"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    :goto_1
    sget-object v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    if-ne v0, p0, :cond_4

    .line 204
    invoke-static {v1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    .line 206
    :cond_4
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget-object v1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onTransact:Lo/onItemLoaded;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    return v0

    .line 132
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 134
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 137
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage()V

    .line 145
    invoke-virtual {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onTransact:Lo/onItemLoaded;

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->extraCallback(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    invoke-static {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asBinder:I

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asInterface:I

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage(Z)V

    return p1
.end method

.method onPostMessage(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 163
    iget-object v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 166
    invoke-static {v1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V

    .line 167
    sget-object v1, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback()V

    .line 170
    :cond_1
    sput-object v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    move/from16 v1, p1

    .line 172
    iput-boolean v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onRelationshipValidationResult:Z

    .line 173
    new-instance v1, Lo/onItemLoaded;

    iget-object v2, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/onItemLoaded;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onTransact:Lo/onItemLoaded;

    .line 174
    iget-object v2, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget v3, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asBinder:I

    iget v4, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->asInterface:I

    iget-boolean v5, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onRelationshipValidationResult:Z

    iget-object v6, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 1100
    iget-object v7, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const-string/jumbo v10, "window"

    if-eqz v7, :cond_4

    .line 2100
    iget-object v7, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 2095
    iget-object v7, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 2096
    iget-object v11, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-interface {v7, v11}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1082
    :cond_4
    iget-object v7, v1, Lo/onItemLoaded;->extraCallback:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v6, v1, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    .line 2105
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2106
    iget-object v7, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lo/extraCallback$onMessageChannelReady;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 2110
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v7, :cond_5

    goto :goto_2

    .line 2115
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    .line 2120
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    if-lt v11, v7, :cond_6

    .line 2122
    iget-object v7, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lo/extraCallback$onMessageChannelReady;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int v11, v4, v7

    sub-int/2addr v4, v7

    goto :goto_3

    .line 2128
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v4, 0x0

    :goto_3
    const/16 v7, 0x31

    .line 2132
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2134
    iget-object v7, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v5, :cond_7

    .line 2135
    sget v13, Lo/extraCallback$onMessageChannelReady;->tooltip_y_offset_touch:I

    goto :goto_4

    :cond_7
    sget v13, Lo/extraCallback$onMessageChannelReady;->tooltip_y_offset_non_touch:I

    .line 2134
    :goto_4
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 2188
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .line 2189
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 2190
    instance-of v15, v14, Landroid/view/WindowManager$LayoutParams;

    if-eqz v15, :cond_8

    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v14, v12, :cond_a

    .line 2198
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 2199
    :goto_5
    instance-of v15, v14, Landroid/content/ContextWrapper;

    if-eqz v15, :cond_a

    .line 2200
    instance-of v15, v14, Landroid/app/Activity;

    if-eqz v15, :cond_9

    .line 2201
    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    goto :goto_6

    .line 2203
    :cond_9
    check-cast v14, Landroid/content/ContextWrapper;

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v13, :cond_b

    const-string v2, "TooltipPopup"

    const-string v3, "Cannot find app view"

    .line 2139
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2142
    :cond_b
    iget-object v14, v1, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2143
    iget-object v14, v1, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-gez v14, :cond_d

    iget-object v14, v1, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-gez v14, :cond_d

    .line 2146
    iget-object v14, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "status_bar_height"

    const-string v12, "dimen"

    const-string v8, "android"

    .line 2148
    invoke-virtual {v14, v15, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_c

    .line 2150
    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 2154
    :goto_7
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 2155
    iget-object v14, v1, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v15, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v14, v9, v8, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2157
    :cond_d
    iget-object v8, v1, Lo/onItemLoaded;->asBinder:[I

    invoke-virtual {v13, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2159
    iget-object v8, v1, Lo/onItemLoaded;->asInterface:[I

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2160
    iget-object v2, v1, Lo/onItemLoaded;->asInterface:[I

    aget v8, v2, v9

    iget-object v12, v1, Lo/onItemLoaded;->asBinder:[I

    aget v12, v12, v9

    sub-int/2addr v8, v12

    aput v8, v2, v9

    .line 2161
    iget-object v2, v1, Lo/onItemLoaded;->asInterface:[I

    const/4 v8, 0x1

    aget v12, v2, v8

    iget-object v14, v1, Lo/onItemLoaded;->asBinder:[I

    aget v14, v14, v8

    sub-int/2addr v12, v14

    aput v12, v2, v8

    .line 2164
    iget-object v2, v1, Lo/onItemLoaded;->asInterface:[I

    aget v2, v2, v9

    add-int/2addr v2, v3

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v8, 0x2

    div-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2166
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2167
    iget-object v3, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 2168
    iget-object v2, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2170
    iget-object v3, v1, Lo/onItemLoaded;->asInterface:[I

    const/4 v8, 0x1

    aget v3, v3, v8

    add-int/2addr v3, v4

    sub-int/2addr v3, v7

    sub-int/2addr v3, v2

    .line 2171
    iget-object v4, v1, Lo/onItemLoaded;->asInterface:[I

    aget v4, v4, v8

    add-int/2addr v4, v11

    add-int/2addr v4, v7

    if-eqz v5, :cond_e

    if-gez v3, :cond_f

    .line 2176
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_e
    add-int/2addr v2, v4

    .line 2179
    iget-object v5, v1, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v2, v5, :cond_f

    .line 2180
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    .line 2182
    :cond_f
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1086
    :goto_8
    iget-object v2, v1, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1087
    iget-object v3, v1, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    iget-object v1, v1, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    iget-boolean v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_10

    const-wide/16 v1, 0x9c4

    goto :goto_a

    .line 181
    :cond_10
    iget-object v1, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1}, Lo/unregisterCallbackListener;->postMessage(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    const-wide/16 v1, 0xbb8

    .line 183
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    goto :goto_9

    :cond_11
    const-wide/16 v1, 0x3a98

    .line 185
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    :goto_9
    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 187
    :goto_a
    iget-object v3, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget-object v4, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v3, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onMessageChannelReady:Landroid/view/View;

    iget-object v4, v0, Lo/MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback()V

    return-void
.end method
