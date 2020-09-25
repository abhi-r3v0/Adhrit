.class Lo/getVolumeAttributes$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Lo/getVolumeAttributes;


# direct methods
.method constructor <init>(Lo/getVolumeAttributes;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lo/getVolumeAttributes$onPostMessage;->extraCallback:Lo/getVolumeAttributes;

    return-void
.end method


# virtual methods
.method ICustomTabsCallback()Lo/getVolumeAttributes;
    .locals 1

    .line 589
    iget-object v0, p0, Lo/getVolumeAttributes$onPostMessage;->extraCallback:Lo/getVolumeAttributes;

    return-object v0
.end method

.method ICustomTabsCallback$Stub()Lo/getLong;
    .locals 1

    .line 609
    sget-object v0, Lo/getLong;->extraCallback:Lo/getLong;

    return-object v0
.end method

.method asBinder()Lo/getLong;
    .locals 1

    .line 614
    sget-object v0, Lo/getLong;->extraCallback:Lo/getLong;

    return-object v0
.end method

.method asInterface()Lo/getVolumeAttributes;
    .locals 1

    .line 604
    iget-object v0, p0, Lo/getVolumeAttributes$onPostMessage;->extraCallback:Lo/getVolumeAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 644
    :cond_0
    instance-of v1, p1, Lo/getVolumeAttributes$onPostMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 645
    :cond_1
    check-cast p1, Lo/getVolumeAttributes$onPostMessage;

    .line 646
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->onMessageChannelReady()Z

    move-result v1

    invoke-virtual {p1}, Lo/getVolumeAttributes$onPostMessage;->onMessageChannelReady()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 647
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->onNavigationEvent()Z

    move-result v1

    invoke-virtual {p1}, Lo/getVolumeAttributes$onPostMessage;->onNavigationEvent()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 648
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->ICustomTabsCallback$Stub()Lo/getLong;

    move-result-object v1

    invoke-virtual {p1}, Lo/getVolumeAttributes$onPostMessage;->ICustomTabsCallback$Stub()Lo/getLong;

    move-result-object v3

    invoke-static {v1, v3}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->asBinder()Lo/getLong;

    move-result-object v1

    invoke-virtual {p1}, Lo/getVolumeAttributes$onPostMessage;->asBinder()Lo/getLong;

    move-result-object v3

    invoke-static {v1, v3}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->extraCallback()Lo/RatingCompat$Style;

    move-result-object v1

    invoke-virtual {p1}, Lo/getVolumeAttributes$onPostMessage;->extraCallback()Lo/RatingCompat$Style;

    move-result-object p1

    invoke-static {v1, p1}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method extraCallback()Lo/RatingCompat$Style;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method extraCallback(IIII)Lo/getVolumeAttributes;
    .locals 0

    .line 637
    sget-object p1, Lo/getVolumeAttributes;->onMessageChannelReady:Lo/getVolumeAttributes;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 656
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->onMessageChannelReady()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->onNavigationEvent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->ICustomTabsCallback$Stub()Lo/getLong;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 657
    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->asBinder()Lo/getLong;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getVolumeAttributes$onPostMessage;->extraCallback()Lo/RatingCompat$Style;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 656
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onPostMessage()Lo/getVolumeAttributes;
    .locals 1

    .line 594
    iget-object v0, p0, Lo/getVolumeAttributes$onPostMessage;->extraCallback:Lo/getVolumeAttributes;

    return-object v0
.end method
