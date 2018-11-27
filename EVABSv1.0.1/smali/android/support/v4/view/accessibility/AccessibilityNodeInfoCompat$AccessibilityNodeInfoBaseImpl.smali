.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public canOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public findAccessibilityNodeInfosByViewId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public focusSearch(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActionContextClick()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionList(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionSetProgress()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionInfoSelectionMode(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDrawingOrder(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getError(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtras(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;
    .locals 0

    .line 971
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method public getInputType(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLiveRegion(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMaxTextLength(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSelectionEnd(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getTextSelectionStart(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isContentInvalid(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isContextClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDismissable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEditable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isMultiLine(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refresh(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setCanOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setContentInvalid(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setContextClickable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setDismissable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setDrawingOrder(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    return-void
.end method

.method public setEditable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setError(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setInputType(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    return-void
.end method

.method public setLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setLiveRegion(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    return-void
.end method

.method public setMaxTextLength(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    return-void
.end method

.method public setMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    return-void
.end method

.method public setMultiLine(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSource(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setTextSelection(Landroid/view/accessibility/AccessibilityNodeInfo;II)V
    .locals 0

    return-void
.end method

.method public setTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method
