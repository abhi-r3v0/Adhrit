.class final Lo/animateAdd$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0

    iput-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/animateAdd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 52
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/animateAdd;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v0}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    const-string v0, "digestSlider"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget p1, p1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 1136
    invoke-static {p1}, Lo/DiffUtil;->onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    if-eqz p1, :cond_2

    .line 2035
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz p1, :cond_2

    .line 1138
    iget-object v0, p0, Lo/animateAdd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_overflow_clicked"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 2117
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onMessageChannelReady:Ljava/util/List;

    .line 1139
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 1140
    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onNavigationEvent(Lo/animateAdd;)Lo/resetAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 52
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
