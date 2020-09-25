.class final Lo/getCustomActions$onRelationshipValidationResult;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;Landroid/content/Context;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    .line 968
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 974
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->onRelationshipValidationResult()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 977
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 982
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 983
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    iget v0, v0, Lo/getCustomActions;->extraCallback:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 984
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    iget v0, v0, Lo/getCustomActions;->extraCallback:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 985
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getCustomActions$onMessageChannelReady;->extraCallback(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 996
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    .line 2803
    iget-boolean v0, v0, Lo/getCustomActions;->asInterface:Z

    if-eqz v0, :cond_0

    .line 996
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 991
    iget-object v0, p0, Lo/getCustomActions$onRelationshipValidationResult;->onNavigationEvent:Lo/getCustomActions;

    .line 1803
    iget-boolean v0, v0, Lo/getCustomActions;->asInterface:Z

    if-eqz v0, :cond_0

    .line 991
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
