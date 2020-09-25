.class final Lo/extraCommand$3;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/extraCommand;


# direct methods
.method constructor <init>(Lo/extraCommand;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-boolean p1, p1, Lo/extraCommand;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->asInterface:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->asInterface:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    .line 145
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    .line 1310
    iget-object v1, p1, Lo/extraCommand;->ICustomTabsCallback$Stub:Lo/INotificationSideChannel$ICustomTabsCallback;

    if-eqz v1, :cond_1

    .line 1311
    iget-object v1, p1, Lo/extraCommand;->ICustomTabsCallback$Stub:Lo/INotificationSideChannel$ICustomTabsCallback;

    iget-object v2, p1, Lo/extraCommand;->asBinder:Lo/INotificationSideChannel;

    invoke-interface {v1, v2}, Lo/INotificationSideChannel$ICustomTabsCallback;->ICustomTabsCallback(Lo/INotificationSideChannel;)V

    .line 1312
    iput-object v0, p1, Lo/extraCommand;->asBinder:Lo/INotificationSideChannel;

    .line 1313
    iput-object v0, p1, Lo/extraCommand;->ICustomTabsCallback$Stub:Lo/INotificationSideChannel$ICustomTabsCallback;

    .line 146
    :cond_1
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lo/extraCommand$3;->onNavigationEvent:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    :cond_2
    return-void
.end method
