.class final Lo/mayLaunchUrl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/mayLaunchUrl;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/mayLaunchUrl$1;->onNavigationEvent:Lo/mayLaunchUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 57
    iget-object v0, p0, Lo/mayLaunchUrl$1;->onNavigationEvent:Lo/mayLaunchUrl;

    .line 1449
    invoke-virtual {v0}, Lo/mayLaunchUrl;->getInterfaceDescriptor()Landroid/view/Menu;

    move-result-object v1

    .line 1450
    instance-of v2, v1, Lo/AudioAttributesImplBaseParcelizer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lo/AudioAttributesImplBaseParcelizer;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2078
    iget-boolean v5, v2, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 2079
    iput-boolean v5, v2, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2080
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2081
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1455
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 1456
    iget-object v5, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    invoke-interface {v5, v4, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    .line 1457
    invoke-interface {v0, v4, v3, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1458
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2086
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2088
    iget-boolean v0, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v0, :cond_4

    .line 2089
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2090
    iget-boolean v0, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v2, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 3086
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 3088
    iget-boolean v1, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v1, :cond_5

    .line 3089
    iput-boolean v4, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 3090
    iget-boolean v1, v2, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v2, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 1464
    :cond_5
    throw v0
.end method
