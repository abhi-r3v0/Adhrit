.class final Lo/isConnected$extraCallback;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/notify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final onNavigationEvent:Landroid/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 513
    move-object v0, p1

    check-cast v0, Landroid/view/CollapsibleActionView;

    iput-object v0, p0, Lo/isConnected$extraCallback;->onNavigationEvent:Landroid/view/CollapsibleActionView;

    .line 514
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onActionViewCollapsed()V
    .locals 1

    .line 524
    iget-object v0, p0, Lo/isConnected$extraCallback;->onNavigationEvent:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    return-void
.end method

.method public final onActionViewExpanded()V
    .locals 1

    .line 519
    iget-object v0, p0, Lo/isConnected$extraCallback;->onNavigationEvent:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    return-void
.end method
