.class Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatKitKat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;)Ljava/lang/Object;
    .locals 1

    .line 42
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;)V

    return-object v0
.end method
