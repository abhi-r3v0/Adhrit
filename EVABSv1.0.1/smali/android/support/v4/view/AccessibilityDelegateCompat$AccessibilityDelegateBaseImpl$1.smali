.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;->newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;

.field final synthetic val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->this$0:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;

    iput-object p2, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 66
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 67
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p2

    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
