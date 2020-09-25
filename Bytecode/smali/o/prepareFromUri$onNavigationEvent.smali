.class final Lo/prepareFromUri$onNavigationEvent;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/prepareFromUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2138
    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2203
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2204
    check-cast p1, Lo/prepareFromUri;

    .line 2205
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2206
    invoke-virtual {p1}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2207
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2208
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2209
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {p2, v0}, Lo/getMetadata;->onNavigationEvent(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2211
    invoke-virtual {p1}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result p1

    invoke-static {p2, p1}, Lo/getMetadata;->onMessageChannelReady(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 2

    .line 2178
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 2179
    check-cast p1, Lo/prepareFromUri;

    .line 2180
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 2181
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2182
    invoke-virtual {p1}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 2184
    invoke-virtual {p2, v1}, Lo/getPlaybackState;->warmup(Z)V

    .line 2185
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    .line 2186
    sget-object v1, Lo/getPlaybackState$extraCallback;->newSession:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, v1}, Lo/getPlaybackState;->ICustomTabsCallback(Lo/getPlaybackState$extraCallback;)V

    .line 2188
    sget-object v1, Lo/getPlaybackState$extraCallback;->IPostMessageService$Stub:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, v1}, Lo/getPlaybackState;->ICustomTabsCallback(Lo/getPlaybackState$extraCallback;)V

    .line 2191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 2192
    sget-object p1, Lo/getPlaybackState$extraCallback;->warmup:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(Lo/getPlaybackState$extraCallback;)V

    .line 2194
    sget-object p1, Lo/getPlaybackState$extraCallback;->IPostMessageService$Stub$Proxy:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(Lo/getPlaybackState$extraCallback;)V

    :cond_1
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 2141
    invoke-super {p0, p1, p2, p3}, Lo/onSessionDestroyed;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 2144
    :cond_0
    check-cast p1, Lo/prepareFromUri;

    .line 2145
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    :cond_1
    const/16 p3, 0x1000

    const/16 v2, 0xfa

    if-eq p2, p3, :cond_4

    const/16 p3, 0x2000

    if-eq p2, p3, :cond_2

    const p3, 0x1020038

    if-eq p2, p3, :cond_2

    const p3, 0x102003a

    if-eq p2, p3, :cond_4

    return v1

    .line 2163
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 2164
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    .line 2165
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2166
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 3506
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p3

    sub-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, v1, p2, v2, v0}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    return v0

    :cond_3
    return v1

    .line 2151
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 2152
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    .line 2153
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    add-int/2addr p3, p2

    .line 2154
    invoke-virtual {p1}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result p2

    .line 2153
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2155
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_5

    .line 2506
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p3

    sub-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, v1, p2, v2, v0}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    return v0

    :cond_5
    return v1
.end method
