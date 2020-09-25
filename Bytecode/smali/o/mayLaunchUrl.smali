.class final Lo/mayLaunchUrl;
.super Lo/onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mayLaunchUrl$onPostMessage;,
        Lo/mayLaunchUrl$ICustomTabsCallback;,
        Lo/mayLaunchUrl$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/view/Window$Callback;

.field private final asInterface:Ljava/lang/Runnable;

.field extraCallback:Z

.field private onMessageChannelReady:Z

.field onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lo/onPostMessage;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/mayLaunchUrl;->onRelationshipValidationResult:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lo/mayLaunchUrl$1;

    invoke-direct {v0, p0}, Lo/mayLaunchUrl$1;-><init>(Lo/mayLaunchUrl;)V

    iput-object v0, p0, Lo/mayLaunchUrl;->asInterface:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lo/mayLaunchUrl$2;

    invoke-direct {v0, p0}, Lo/mayLaunchUrl$2;-><init>(Lo/mayLaunchUrl;)V

    iput-object v0, p0, Lo/mayLaunchUrl;->onTransact:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 70
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    .line 71
    new-instance v0, Lo/mayLaunchUrl$extraCallback;

    invoke-direct {v0, p0, p3}, Lo/mayLaunchUrl$extraCallback;-><init>(Lo/mayLaunchUrl;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    .line 72
    iget-object p3, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 73
    iget-object p3, p0, Lo/mayLaunchUrl;->onTransact:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 74
    iget-object p1, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 407
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 2

    .line 505
    iget-boolean v0, p0, Lo/mayLaunchUrl;->onPostMessage:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Lo/mayLaunchUrl;->onPostMessage:Z

    .line 510
    iget-object p1, p0, Lo/mayLaunchUrl;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 512
    iget-object v1, p0, Lo/mayLaunchUrl;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 2

    .line 434
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/mayLaunchUrl;->asInterface:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/mayLaunchUrl;->asInterface:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method final asBinder()V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/mayLaunchUrl;->asInterface:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final asInterface()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 324
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 477
    invoke-virtual {p0}, Lo/mayLaunchUrl;->getInterfaceDescriptor()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 479
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 482
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method final getInterfaceDescriptor()Landroid/view/Menu;
    .locals 3

    .line 544
    iget-boolean v0, p0, Lo/mayLaunchUrl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Lo/mayLaunchUrl$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/mayLaunchUrl$ICustomTabsCallback;-><init>(Lo/mayLaunchUrl;)V

    new-instance v2, Lo/mayLaunchUrl$onPostMessage;

    invoke-direct {v2, p0}, Lo/mayLaunchUrl$onPostMessage;-><init>(Lo/mayLaunchUrl;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Lo/getSessionToken$extraCallback;Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lo/mayLaunchUrl;->onMessageChannelReady:Z

    .line 549
    :cond_0
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 414
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/content/res/Configuration;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lo/onPostMessage;->onNavigationEvent(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1260
    :goto_0
    iget-object v1, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    .line 1261
    iget-object v2, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1424
    iget-object p1, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    :cond_0
    return v0
.end method

.method public final onPostMessage(Z)V
    .locals 0

    return-void
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method
