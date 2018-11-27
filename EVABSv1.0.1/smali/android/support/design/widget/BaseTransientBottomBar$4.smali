.class Landroid/support/design/widget/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0

    .line 416
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SnackbarManager;->pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 433
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 434
    invoke-virtual {p1, v0}, Landroid/support/design/widget/SnackbarManager;->restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
