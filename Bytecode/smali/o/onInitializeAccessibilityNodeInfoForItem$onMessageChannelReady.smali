.class public final Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onInitializeAccessibilityNodeInfoForItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialFullScreenDialogFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialFullScreenDialogFragment;",
        "data",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager$InterstitialData;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getRowCountForAccessibility$ICustomTabsCallback;)Lo/onInitializeAccessibilityNodeInfoForItem;
    .locals 2

    const-string v0, "data"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lo/onInitializeAccessibilityNodeInfoForItem;

    invoke-direct {v0}, Lo/onInitializeAccessibilityNodeInfoForItem;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady$extraCallback;

    invoke-direct {v1, p0}, Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady$extraCallback;-><init>(Lo/getRowCountForAccessibility$ICustomTabsCallback;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lo/onInitializeAccessibilityNodeInfoForItem;

    return-object p0
.end method
