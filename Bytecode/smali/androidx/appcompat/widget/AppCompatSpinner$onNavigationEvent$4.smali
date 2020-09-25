.class Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatSpinner;

.field final synthetic onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    .line 975
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 978
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 979
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 980
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    iget-object p4, p4, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent:Landroid/widget/ListAdapter;

    .line 981
    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 983
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;->onPostMessage:Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
