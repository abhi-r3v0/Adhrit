.class Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1074
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->extraCallback(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->ICustomTabsCallback()V

    .line 1081
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;)V

    return-void
.end method
