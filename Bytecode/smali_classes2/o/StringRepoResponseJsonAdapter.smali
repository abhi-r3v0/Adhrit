.class final Lo/StringRepoResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/WishlistUnlikeEntity;

.field private final synthetic onMessageChannelReady:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/WishlistUnlikeEntity;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/StringRepoResponseJsonAdapter;->ICustomTabsCallback:Lo/WishlistUnlikeEntity;

    iput-object p2, p0, Lo/StringRepoResponseJsonAdapter;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/StringRepoResponseJsonAdapter;->ICustomTabsCallback:Lo/WishlistUnlikeEntity;

    invoke-static {v0}, Lo/WishlistUnlikeEntity;->ICustomTabsCallback(Lo/WishlistUnlikeEntity;)Lo/PromotionalCardsJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/StringRepoResponseJsonAdapter;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-static {v1}, Lo/StringRepoResponse;->onNavigationEvent(Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)I

    move-result v1

    invoke-interface {v0, v1}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
