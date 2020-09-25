.class final Lo/getDisplayableErrorMessage;
.super Lo/getContentType;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getContentType<",
        "Lo/UnsupportedFragmentConfig$ErrorMessage;",
        "Lo/UnsupportedFragmentConfig$ErrorMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getContentType;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;Lo/UnsupportedFragmentConfig$ErrorMessage;)V
    .locals 0

    .line 3
    check-cast p0, Lo/MarketingMessageStatus;

    iput-object p1, p0, Lo/MarketingMessageStatus;->zzb:Lo/UnsupportedFragmentConfig$ErrorMessage;

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lo/UnsupportedFragmentConfig$ErrorMessage;

    invoke-static {p1, p2}, Lo/getDisplayableErrorMessage;->extraCallback(Ljava/lang/Object;Lo/UnsupportedFragmentConfig$ErrorMessage;)V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 13
    invoke-virtual {p1}, Lo/UnsupportedFragmentConfig$ErrorMessage;->ICustomTabsCallback()I

    move-result p1

    return p1
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 24
    invoke-virtual {p1, p2}, Lo/UnsupportedFragmentConfig$ErrorMessage;->onMessageChannelReady(Lo/setLaunchDeeplinkFromNotification;)V

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lo/MarketingMessageStatus;

    iget-object p1, p1, Lo/MarketingMessageStatus;->zzb:Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 7
    invoke-virtual {p1}, Lo/UnsupportedFragmentConfig$ErrorMessage;->extraCallback()V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 10
    invoke-virtual {p1}, Lo/UnsupportedFragmentConfig$ErrorMessage;->onPostMessage()I

    move-result p1

    return p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lo/MarketingMessageStatus;

    iget-object p1, p1, Lo/MarketingMessageStatus;->zzb:Lo/UnsupportedFragmentConfig$ErrorMessage;

    return-object p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lo/UnsupportedFragmentConfig$ErrorMessage;

    check-cast p2, Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 16
    invoke-static {}, Lo/UnsupportedFragmentConfig$ErrorMessage;->onMessageChannelReady()Lo/UnsupportedFragmentConfig$ErrorMessage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/UnsupportedFragmentConfig$ErrorMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lo/UnsupportedFragmentConfig$ErrorMessage;->onNavigationEvent(Lo/UnsupportedFragmentConfig$ErrorMessage;Lo/UnsupportedFragmentConfig$ErrorMessage;)Lo/UnsupportedFragmentConfig$ErrorMessage;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lo/UnsupportedFragmentConfig$ErrorMessage;

    .line 21
    invoke-virtual {p1, p2}, Lo/UnsupportedFragmentConfig$ErrorMessage;->onNavigationEvent(Lo/setLaunchDeeplinkFromNotification;)V

    return-void
.end method
