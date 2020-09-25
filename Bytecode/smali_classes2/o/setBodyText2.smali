.class final Lo/setBodyText2;
.super Lo/RedemptionView;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setBackgroundImage;


# direct methods
.method constructor <init>(Lo/setBackgroundImage;)V
    .locals 0

    iput-object p1, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-direct {p0}, Lo/RedemptionView;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/setCta;

    invoke-direct {v1, p0}, Lo/setCta;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/setHeader;

    invoke-direct {v1, p0}, Lo/setHeader;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/lambdaFactory$;

    invoke-direct {v1, p0}, Lo/lambdaFactory$;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/getOperation;

    invoke-direct {v1, p0}, Lo/getOperation;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/setBodyText1;

    invoke-direct {v1, p0, p1}, Lo/setBodyText1;-><init>(Lo/setBodyText2;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/getInfo;

    invoke-direct {v1, p0}, Lo/getInfo;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTransact()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setBodyText2;->ICustomTabsCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/setCardSliderParent;

    invoke-direct {v1, p0}, Lo/setCardSliderParent;-><init>(Lo/setBodyText2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
