.class final Lo/mayLaunchUrl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/mayLaunchUrl;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/mayLaunchUrl$2;->ICustomTabsCallback:Lo/mayLaunchUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lo/mayLaunchUrl$2;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
