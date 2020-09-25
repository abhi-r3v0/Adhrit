.class final Lo/RecentOrderJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/Item;

.field private final synthetic onPostMessage:Lo/openGameRewards;


# direct methods
.method constructor <init>(Lo/Item;Lo/openGameRewards;)V
    .locals 0

    iput-object p1, p0, Lo/RecentOrderJsonAdapter;->onMessageChannelReady:Lo/Item;

    iput-object p2, p0, Lo/RecentOrderJsonAdapter;->onPostMessage:Lo/openGameRewards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/RecentOrderJsonAdapter;->onPostMessage:Lo/openGameRewards;

    invoke-interface {v0}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/RecentOrderJsonAdapter;->onMessageChannelReady:Lo/Item;

    iget-object v1, v1, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/RecentOrderJsonAdapter;->onPostMessage:Lo/openGameRewards;

    invoke-interface {v0, v1}, Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openGameRewards;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
