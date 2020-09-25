.class final Landroidx/appcompat/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 156
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->onPostMessage:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Lo/IMediaControllerCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/IMediaControllerCallback;->subUiVisibilityChanged(Z)V

    :cond_1
    return-void
.end method
