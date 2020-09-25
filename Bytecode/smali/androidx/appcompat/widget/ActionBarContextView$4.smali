.class final Landroidx/appcompat/widget/ActionBarContextView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Lo/INotificationSideChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/INotificationSideChannel;

.field final synthetic onNavigationEvent:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;Lo/INotificationSideChannel;)V
    .locals 0

    .line 171
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView$4;->onNavigationEvent:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContextView$4;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView$4;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {p1}, Lo/INotificationSideChannel;->extraCallback()V

    return-void
.end method
