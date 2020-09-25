.class final Landroidx/appcompat/widget/PopupMenu$3;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/PopupMenu;Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu$3;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Lo/sendCustomAction;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu$3;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    invoke-virtual {v0}, Lo/getRoot;->onNavigationEvent()Lo/getServiceComponent;

    move-result-object v0

    return-object v0
.end method

.method protected final onForwardingStarted()Z
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu$3;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onForwardingStopped()Z
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu$3;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method
