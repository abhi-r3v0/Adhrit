.class Lo/setDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setIconUri;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Landroid/widget/RemoteViews;

.field private extraCallback:Landroid/widget/RemoteViews;

.field private final onMessageChannelReady:Landroid/app/Notification$Builder;

.field private onNavigationEvent:Landroid/widget/RemoteViews;

.field private final onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

.field private final onRelationshipValidationResult:Landroid/os/Bundle;

.field private onTransact:I


# direct methods
.method constructor <init>(Lo/setSubtitle$ICustomTabsCallback;)V
    .locals 11

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setDescription;->ICustomTabsCallback:Ljava/util/List;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->setDefaultImpl:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    .line 71
    :goto_0
    iget-object v0, p1, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    .line 72
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 74
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/widget/RemoteViews;

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 76
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 77
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 78
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 79
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v7, 0x10

    and-int/2addr v3, v7

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 80
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->asInterface:Landroid/app/PendingIntent;

    .line 85
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->onTransact:Landroid/app/PendingIntent;

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 87
    :goto_4
    invoke-virtual {v2, v3, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lo/setSubtitle$ICustomTabsCallback;->warmup:I

    .line 90
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lo/setSubtitle$ICustomTabsCallback;->mayLaunchUrl:I

    iget v8, p1, Lo/setSubtitle$ICustomTabsCallback;->requestPostMessageChannel:I

    iget-boolean v9, p1, Lo/setSubtitle$ICustomTabsCallback;->updateVisuals:Z

    .line 91
    invoke-virtual {v2, v3, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_5

    .line 93
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v8, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v9, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 95
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v2, v7, :cond_c

    .line 96
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->extraCommand:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 97
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v7, p1, Lo/setSubtitle$ICustomTabsCallback;->newSession:I

    .line 98
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 99
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setSubtitle$extraCallback;

    .line 100
    invoke-direct {p0, v7}, Lo/setDescription;->onPostMessage(Lo/setSubtitle$extraCallback;)V

    goto :goto_5

    .line 103
    :cond_6
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 104
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 106
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_b

    .line 107
    iget-boolean v2, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub:Z

    if-eqz v2, :cond_8

    .line 108
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    const-string v7, "android.support.localOnly"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    :cond_8
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->validateRelationship:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 111
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->validateRelationship:Ljava/lang/String;

    const-string v9, "android.support.groupKey"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v2, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v2, :cond_9

    .line 113
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    const-string v7, "android.support.isGroupSummary"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 115
    :cond_9
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    const-string v7, "android.support.useSideChannel"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    :cond_a
    :goto_6
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 120
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService:Ljava/lang/String;

    const-string v9, "android.support.sortKey"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_b
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lo/setDescription;->onNavigationEvent:Landroid/widget/RemoteViews;

    .line 125
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Default:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lo/setDescription;->extraCallback:Landroid/widget/RemoteViews;

    .line 127
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v2, v7, :cond_d

    .line 128
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Lo/setSubtitle$ICustomTabsCallback;->getInterfaceDescriptor:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 130
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_d

    .line 131
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 132
    iget-object v2, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    iget-object v9, p1, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v9, "android.people"

    .line 132
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_e

    .line 138
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->validateRelationship:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 140
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 143
    iget v2, p1, Lo/setSubtitle$ICustomTabsCallback;->write:I

    iput v2, p0, Lo/setDescription;->onTransact:I

    .line 145
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_12

    .line 146
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->cancelAll:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel:I

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lo/setSubtitle$ICustomTabsCallback;->cancel:I

    .line 148
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->getDefaultImpl:Landroid/app/Notification;

    .line 149
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v7, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 150
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 152
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    iget-object v7, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 155
    :cond_f
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub$Proxy:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lo/setDescription;->asInterface:Landroid/widget/RemoteViews;

    .line 157
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 161
    invoke-virtual {p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_10

    .line 163
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 165
    :cond_10
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    .line 166
    :goto_8
    iget-object v9, p1, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 168
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v10, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/setSubtitle$extraCallback;

    .line 169
    invoke-static {v10}, Lo/setTitle;->onPostMessage(Lo/setSubtitle$extraCallback;)Landroid/os/Bundle;

    move-result-object v10

    .line 167
    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    const-string v8, "invisible_actions"

    .line 172
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    iget-object v7, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_15

    .line 181
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->postMessage:[Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 183
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_13

    .line 184
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 186
    :cond_13
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Default:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_14

    .line 187
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Default:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 189
    :cond_14
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub$Proxy:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_15

    .line 190
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub$Proxy:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 193
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_17

    .line 194
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget v7, p1, Lo/setSubtitle$ICustomTabsCallback;->read:I

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesCompatParcelizer:Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-wide v7, p1, Lo/setSubtitle$ICustomTabsCallback;->RemoteActionCompatParcelizer:J

    .line 196
    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v7, p1, Lo/setSubtitle$ICustomTabsCallback;->write:I

    .line 197
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 198
    iget-boolean v2, p1, Lo/setSubtitle$ICustomTabsCallback;->notify:Z

    if-eqz v2, :cond_16

    .line 199
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 202
    :cond_16
    iget-object v2, p1, Lo/setSubtitle$ICustomTabsCallback;->setDefaultImpl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 203
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 209
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v2, v6, :cond_18

    .line 210
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-boolean v6, p1, Lo/setSubtitle$ICustomTabsCallback;->IconCompatParcelizer:Z

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 213
    iget-object v2, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v6, p1, Lo/setSubtitle$ICustomTabsCallback;->disconnect:Lo/setSubtitle$onPostMessage;

    .line 214
    invoke-static {v6}, Lo/setSubtitle$onPostMessage;->onNavigationEvent(Lo/setSubtitle$onPostMessage;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    .line 213
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 217
    :cond_18
    iget-boolean p1, p1, Lo/setSubtitle$ICustomTabsCallback;->MediaBrowserCompat:Z

    if-eqz p1, :cond_1b

    .line 218
    iget-object p1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-boolean p1, p1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:Z

    if-eqz p1, :cond_19

    .line 219
    iput v4, p0, Lo/setDescription;->onTransact:I

    goto :goto_9

    .line 221
    :cond_19
    iput v5, p0, Lo/setDescription;->onTransact:I

    .line 224
    :goto_9
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 225
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 226
    iget p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x2

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 227
    iget p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 228
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 230
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1b

    .line 231
    iget-object p1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-object p1, p1, Lo/setSubtitle$ICustomTabsCallback;->validateRelationship:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 232
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    const-string/jumbo v0, "silent"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 234
    :cond_1a
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget v0, p0, Lo/setDescription;->onTransact:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    :cond_1b
    return-void
.end method

.method private extraCallback(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 463
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 464
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 465
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private onPostMessage(Lo/setSubtitle$extraCallback;)V
    .locals 5

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 286
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onPostMessage()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 288
    new-instance v1, Landroid/app/Notification$Action$Builder;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->ICustomTabsCallback()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v2

    .line 291
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 293
    :cond_1
    new-instance v1, Landroid/app/Notification$Action$Builder;

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->onNavigationEvent()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 295
    :goto_1
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 298
    :goto_2
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult()[Lo/setMediaUri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult()[Lo/setMediaUri;

    move-result-object v0

    .line 299
    invoke-static {v0}, Lo/setMediaUri;->onNavigationEvent([Lo/setMediaUri;)[Landroid/app/RemoteInput;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 301
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 305
    :cond_3
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_4

    .line 308
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    :goto_4
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback()Z

    move-result v2

    const-string v3, "android.support.allowGeneratedReplies"

    .line 310
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5

    .line 313
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 317
    :cond_5
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback$Stub()I

    move-result v2

    const-string v3, "android.support.action.semanticAction"

    .line 316
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    .line 319
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback$Stub()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 322
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_7

    .line 323
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onTransact()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 327
    :cond_7
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->asBinder()Z

    move-result p1

    const-string v2, "android.support.action.showsUserInterface"

    .line 326
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 329
    iget-object p1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void

    .line 330
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 331
    iget-object v0, p0, Lo/setDescription;->ICustomTabsCallback:Ljava/util/List;

    iget-object v1, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    .line 332
    invoke-static {v1, p1}, Lo/setTitle;->onPostMessage(Landroid/app/Notification$Builder;Lo/setSubtitle$extraCallback;)Landroid/os/Bundle;

    move-result-object p1

    .line 331
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public extraCallback()Landroid/app/Notification$Builder;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method protected onNavigationEvent()Landroid/app/Notification;
    .locals 7

    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v1, :cond_3

    .line 341
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 343
    iget v1, p0, Lo/setDescription;->onTransact:I

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v3, :cond_1

    .line 348
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    .line 351
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_2

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v2, :cond_2

    .line 354
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    :cond_2
    return-object v0

    .line 359
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 360
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 361
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lo/setDescription;->onNavigationEvent:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_4

    .line 363
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 365
    :cond_4
    iget-object v1, p0, Lo/setDescription;->extraCallback:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    .line 366
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 368
    :cond_5
    iget-object v1, p0, Lo/setDescription;->asInterface:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 369
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 372
    :cond_6
    iget v1, p0, Lo/setDescription;->onTransact:I

    if-eqz v1, :cond_8

    .line 374
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v3, :cond_7

    .line 377
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    .line 380
    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_8

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v2, :cond_8

    .line 383
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    :cond_8
    return-object v0

    .line 387
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e

    .line 388
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 389
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lo/setDescription;->onNavigationEvent:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    .line 391
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 393
    :cond_a
    iget-object v1, p0, Lo/setDescription;->extraCallback:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    .line 394
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 397
    :cond_b
    iget v1, p0, Lo/setDescription;->onTransact:I

    if-eqz v1, :cond_d

    .line 399
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v3, :cond_c

    .line 402
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    .line 405
    :cond_c
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_d

    iget v1, p0, Lo/setDescription;->onTransact:I

    if-ne v1, v2, :cond_d

    .line 408
    invoke-direct {p0, v0}, Lo/setDescription;->extraCallback(Landroid/app/Notification;)V

    :cond_d
    return-object v0

    .line 413
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.actionExtras"

    if-lt v0, v1, :cond_12

    .line 414
    iget-object v0, p0, Lo/setDescription;->ICustomTabsCallback:Ljava/util/List;

    .line 415
    invoke-static {v0}, Lo/setTitle;->onNavigationEvent(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 418
    iget-object v1, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 421
    :cond_f
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 422
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lo/setDescription;->onNavigationEvent:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_10

    .line 424
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 426
    :cond_10
    iget-object v1, p0, Lo/setDescription;->extraCallback:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_11

    .line 427
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_11
    return-object v0

    .line 430
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 431
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lo/setSubtitle;->onPostMessage(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 435
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 436
    iget-object v4, p0, Lo/setDescription;->onRelationshipValidationResult:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 438
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_14
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 442
    iget-object v1, p0, Lo/setDescription;->ICustomTabsCallback:Ljava/util/List;

    .line 443
    invoke-static {v1}, Lo/setTitle;->onNavigationEvent(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 446
    invoke-static {v0}, Lo/setSubtitle;->onPostMessage(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 449
    :cond_15
    iget-object v1, p0, Lo/setDescription;->onNavigationEvent:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_16

    .line 450
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 452
    :cond_16
    iget-object v1, p0, Lo/setDescription;->extraCallback:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_17

    .line 453
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_17
    return-object v0

    .line 457
    :cond_18
    iget-object v0, p0, Lo/setDescription;->onMessageChannelReady:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage()Landroid/app/Notification;
    .locals 5

    .line 245
    iget-object v0, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-object v0, v0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService:Lo/setSubtitle$onTransact;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p0}, Lo/setSubtitle$onTransact;->onPostMessage(Lo/setIconUri;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0, p0}, Lo/setSubtitle$onTransact;->onMessageChannelReady(Lo/setIconUri;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 253
    :goto_0
    invoke-virtual {p0}, Lo/setDescription;->onNavigationEvent()Landroid/app/Notification;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 255
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 256
    :cond_2
    iget-object v1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-object v1, v1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-object v1, v1, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 259
    :cond_3
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {v0, p0}, Lo/setSubtitle$onTransact;->onNavigationEvent(Lo/setIconUri;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 262
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 265
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_5

    if-eqz v0, :cond_5

    .line 266
    iget-object v1, p0, Lo/setDescription;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    iget-object v1, v1, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService:Lo/setSubtitle$onTransact;

    .line 267
    invoke-virtual {v1, p0}, Lo/setSubtitle$onTransact;->ICustomTabsCallback(Lo/setIconUri;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 269
    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 273
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    if-eqz v0, :cond_6

    .line 274
    invoke-static {v2}, Lo/setSubtitle;->onPostMessage(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 276
    invoke-virtual {v0, v1}, Lo/setSubtitle$onTransact;->ICustomTabsCallback(Landroid/os/Bundle;)V

    :cond_6
    return-object v2
.end method
