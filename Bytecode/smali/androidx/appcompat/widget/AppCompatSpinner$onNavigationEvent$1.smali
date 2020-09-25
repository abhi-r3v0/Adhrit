.class Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;->ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1089
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;->extraCallback:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;->ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
