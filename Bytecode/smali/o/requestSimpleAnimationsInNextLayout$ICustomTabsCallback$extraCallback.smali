.class public final Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1",
        "com/dreamplug/fabrik/ui/sms/BankSmsFragmentUiHelperKt$$special$$inlined$postDelayed$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;->ICustomTabsCallback:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 337
    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;->ICustomTabsCallback:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;

    iget-object v0, v0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    .line 1000
    iget-object v0, v0, Lo/getSelectionModeForAccessibility;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isLayoutHierarchical;

    .line 1036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 337
    iget-object v1, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;->ICustomTabsCallback:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;

    iget-object v1, v1, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v1

    new-instance v2, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback$3;

    invoke-direct {v2, p0}, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback$3;-><init>(Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
