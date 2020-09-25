.class Lo/unregisterCallbackListener$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/ArrayCreatingInputMerger$extraCallback;


# direct methods
.method constructor <init>(Lo/ArrayCreatingInputMerger$extraCallback;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Lo/unregisterCallbackListener$4;->onNavigationEvent:Lo/ArrayCreatingInputMerger$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2473
    invoke-static {p2}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p2

    .line 2474
    iget-object v0, p0, Lo/unregisterCallbackListener$4;->onNavigationEvent:Lo/ArrayCreatingInputMerger$extraCallback;

    invoke-interface {v0, p1, p2}, Lo/ArrayCreatingInputMerger$extraCallback;->extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;

    move-result-object p1

    .line 2475
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onRelationshipValidationResult()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
