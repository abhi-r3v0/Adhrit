.class final Landroidx/appcompat/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AudioAttributesImplBaseParcelizer$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu$2;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 0

    .line 112
    iget-object p1, p0, Landroidx/appcompat/widget/PopupMenu$2;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Landroidx/appcompat/widget/PopupMenu$2;->onNavigationEvent:Landroidx/appcompat/widget/PopupMenu;

    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
