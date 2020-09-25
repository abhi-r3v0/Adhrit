.class public final Lo/CardFooter;
.super Lo/Cta_FlowJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Lo/Badge;

.field private volatile extraCallback:Lo/BadgeJsonAdapter;

.field private volatile onMessageChannelReady:Lo/CardProgress;

.field private volatile onPostMessage:Lo/Cta_DataJsonAdapter;


# direct methods
.method public constructor <init>(Lo/BadgeJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/Cta_FlowJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/Badge;)V
    .locals 0

    iput-object p1, p0, Lo/CardFooter;->ICustomTabsCallback:Lo/Badge;

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->ICustomTabsCallback:Lo/Badge;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->ICustomTabsCallback:Lo/Badge;

    invoke-interface {p1}, Lo/Badge;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getEventName;I)V
    .locals 1

    iget-object v0, p0, Lo/CardFooter;->onMessageChannelReady:Lo/CardProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CardFooter;->onMessageChannelReady:Lo/CardProgress;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lo/CardProgress;->onPostMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->asInterface()V

    :cond_0
    return-void
.end method

.method public final asBinder(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lo/CardFooter;->onPostMessage:Lo/Cta_DataJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CardFooter;->onPostMessage:Lo/Cta_DataJsonAdapter;

    invoke-interface {v0, p1}, Lo/Cta_DataJsonAdapter;->onPostMessage(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/CardProgress;)V
    .locals 0

    iput-object p1, p0, Lo/CardFooter;->onMessageChannelReady:Lo/CardProgress;

    return-void
.end method

.method public final extraCallback(Lo/Cta_DataJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/CardFooter;->onPostMessage:Lo/Cta_DataJsonAdapter;

    return-void
.end method

.method public final extraCallback(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/getEventName;I)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->ICustomTabsCallback:Lo/Badge;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->ICustomTabsCallback:Lo/Badge;

    invoke-interface {p1, p2}, Lo/Badge;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/CardFooter;->onMessageChannelReady:Lo/CardProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CardFooter;->onMessageChannelReady:Lo/CardProgress;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/CardProgress;->extraCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/getEventName;Lo/FooterActions;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1, p2}, Lo/BadgeJsonAdapter;->extraCallback(Lo/FooterActions;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onTransact(Lo/getEventName;)V
    .locals 0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardFooter;->extraCallback:Lo/BadgeJsonAdapter;

    invoke-interface {p1}, Lo/BadgeJsonAdapter;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
