.class Landroidx/appcompat/widget/AppCompatSpinner$3;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

.field final synthetic onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$3;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Landroidx/appcompat/widget/AppCompatSpinner$3;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lo/sendCustomAction;
    .locals 1

    .line 267
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$3;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$3;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$extraCallback;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$3;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
