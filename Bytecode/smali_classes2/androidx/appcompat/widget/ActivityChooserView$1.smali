.class final Landroidx/appcompat/widget/ActivityChooserView$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0

    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->extraCallback:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Lo/sendCustomAction;
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->extraCallback:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected final onForwardingStarted()Z
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->extraCallback:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->showPopup()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected final onForwardingStopped()Z
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->extraCallback:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    const/4 v0, 0x1

    return v0
.end method
