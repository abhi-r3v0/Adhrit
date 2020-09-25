.class public final Lo/editSignupDetails;
.super Lo/getFinanceCharges$onPostMessage;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:D

.field private final extraCallback:Lo/enableDarkMode;

.field private final onNavigationEvent:Landroid/net/Uri;

.field private final onPostMessage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lo/enableDarkMode;)V
    .locals 3

    const-string v0, ""

    invoke-direct {p0}, Lo/getFinanceCharges$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/editSignupDetails;->extraCallback:Lo/enableDarkMode;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lo/enableDarkMode;->onMessageChannelReady()Lo/getEventName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lo/editSignupDetails;->onPostMessage:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object p1, p0, Lo/editSignupDetails;->extraCallback:Lo/enableDarkMode;

    invoke-interface {p1}, Lo/enableDarkMode;->onPostMessage()Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-object v1, p0, Lo/editSignupDetails;->onNavigationEvent:Landroid/net/Uri;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :try_start_2
    iget-object p1, p0, Lo/editSignupDetails;->extraCallback:Lo/enableDarkMode;

    invoke-interface {p1}, Lo/enableDarkMode;->extraCallback()D

    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-wide v1, p0, Lo/editSignupDetails;->ICustomTabsCallback:D

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()D
    .locals 2

    iget-wide v0, p0, Lo/editSignupDetails;->ICustomTabsCallback:D

    return-wide v0
.end method

.method public final extraCallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lo/editSignupDetails;->onPostMessage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final onNavigationEvent()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lo/editSignupDetails;->onNavigationEvent:Landroid/net/Uri;

    return-object v0
.end method
