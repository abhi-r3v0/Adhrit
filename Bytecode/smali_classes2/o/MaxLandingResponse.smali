.class final synthetic Lo/MaxLandingResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/SuggestedAmount;

.field private final onMessageChannelReady:Lo/setBottomTag;

.field private final onNavigationEvent:Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;

.field private final onPostMessage:Lo/RemoteControlCard;


# direct methods
.method constructor <init>(Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;Lo/setBottomTag;Lo/SuggestedAmount;Lo/RemoteControlCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MaxLandingResponse;->onNavigationEvent:Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;

    iput-object p2, p0, Lo/MaxLandingResponse;->onMessageChannelReady:Lo/setBottomTag;

    iput-object p3, p0, Lo/MaxLandingResponse;->ICustomTabsCallback:Lo/SuggestedAmount;

    iput-object p4, p0, Lo/MaxLandingResponse;->onPostMessage:Lo/RemoteControlCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/MaxLandingResponse;->onNavigationEvent:Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;

    iget-object v1, p0, Lo/MaxLandingResponse;->onMessageChannelReady:Lo/setBottomTag;

    iget-object v2, p0, Lo/MaxLandingResponse;->ICustomTabsCallback:Lo/SuggestedAmount;

    iget-object v3, p0, Lo/MaxLandingResponse;->onPostMessage:Lo/RemoteControlCard;

    :try_start_0
    invoke-virtual {v1}, Lo/setBottomTag;->extraCallback()Lo/setBottomBarItemClick;

    move-result-object v1

    invoke-interface {v1, v3}, Lo/setBottomBarItemClick;->onNavigationEvent(Lo/RemoteControlCard;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Unable to obtain a cache service instance."

    invoke-static {v3, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    iget-object v0, v0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    invoke-static {v0}, Lo/setNotificationBadges;->extraCallback(Lo/setNotificationBadges;)V

    return-void
.end method
