.class public Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final bodyLocArgs:[Ljava/lang/String;

.field private final bodyLocKey:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final clickAction:Ljava/lang/String;

.field private final color:Ljava/lang/String;

.field private final defaultLightSettings:Z

.field private final defaultSound:Z

.field private final defaultVibrateTimings:Z

.field private final eventTime:Ljava/lang/Long;

.field private final icon:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final lightSettings:[I

.field private final link:Landroid/net/Uri;

.field private final localOnly:Z

.field private final notificationCount:Ljava/lang/Integer;

.field private final notificationPriority:Ljava/lang/Integer;

.field private final sound:Ljava/lang/String;

.field private final sticky:Z

.field private final tag:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final titleLocArgs:[Ljava/lang/String;

.field private final titleLocKey:Ljava/lang/String;

.field private final vibrateTimings:[J

.field private final visibility:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lo/ProcMapEntryParser;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcm.n.title"

    .line 2
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->title:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->titleLocKey:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->getLocalizationArgs(Lo/ProcMapEntryParser;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->titleLocArgs:[Ljava/lang/String;

    const-string v0, "gcm.n.body"

    .line 5
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->body:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->bodyLocKey:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->getLocalizationArgs(Lo/ProcMapEntryParser;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->bodyLocArgs:[Ljava/lang/String;

    const-string v0, "gcm.n.icon"

    .line 8
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->icon:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getSoundResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->sound:Ljava/lang/String;

    const-string v0, "gcm.n.tag"

    .line 10
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->tag:Ljava/lang/String;

    const-string v0, "gcm.n.color"

    .line 11
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->color:Ljava/lang/String;

    const-string v0, "gcm.n.click_action"

    .line 12
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->clickAction:Ljava/lang/String;

    const-string v0, "gcm.n.android_channel_id"

    .line 13
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->channelId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getLink()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->link:Landroid/net/Uri;

    const-string v0, "gcm.n.image"

    .line 15
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->imageUrl:Ljava/lang/String;

    const-string v0, "gcm.n.ticker"

    .line 16
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->ticker:Ljava/lang/String;

    const-string v0, "gcm.n.notification_priority"

    .line 17
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->notificationPriority:Ljava/lang/Integer;

    const-string v0, "gcm.n.visibility"

    .line 18
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->visibility:Ljava/lang/Integer;

    const-string v0, "gcm.n.notification_count"

    .line 19
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->notificationCount:Ljava/lang/Integer;

    const-string v0, "gcm.n.sticky"

    .line 20
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->sticky:Z

    const-string v0, "gcm.n.local_only"

    .line 21
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->localOnly:Z

    const-string v0, "gcm.n.default_sound"

    .line 22
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultSound:Z

    const-string v0, "gcm.n.default_vibrate_timings"

    .line 23
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultVibrateTimings:Z

    const-string v0, "gcm.n.default_light_settings"

    .line 24
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultLightSettings:Z

    const-string v0, "gcm.n.event_time"

    .line 25
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->eventTime:Ljava/lang/Long;

    .line 26
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getLightSettings()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->lightSettings:[I

    .line 27
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getVibrateTimings()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->vibrateTimings:[J

    return-void
.end method

.method synthetic constructor <init>(Lo/ProcMapEntryParser;Lcom/google/firebase/messaging/RemoteMessage$4;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;-><init>(Lo/ProcMapEntryParser;)V

    return-void
.end method

.method private static getLocalizationArgs(Lo/ProcMapEntryParser;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 29
    invoke-virtual {p0, p1}, Lo/ProcMapEntryParser;->getLocalizationArgsForKey(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 34
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationArgs()[Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->bodyLocArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->bodyLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAction()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->clickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLightSettings()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultLightSettings:Z

    return v0
.end method

.method public getDefaultSound()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultSound:Z

    return v0
.end method

.method public getDefaultVibrateSettings()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->defaultVibrateTimings:Z

    return v0
.end method

.method public getEventTime()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->eventTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightSettings()[I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->lightSettings:[I

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->link:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalOnly()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->localOnly:Z

    return v0
.end method

.method public getNotificationCount()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->notificationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationPriority()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->notificationPriority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getSticky()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->sticky:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationArgs()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->titleLocArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->titleLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateTimings()[J
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->vibrateTimings:[J

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$onNavigationEvent;->visibility:Ljava/lang/Integer;

    return-object v0
.end method
