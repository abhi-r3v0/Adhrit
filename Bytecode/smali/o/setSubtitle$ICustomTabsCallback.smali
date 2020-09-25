.class public Lo/setSubtitle$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field AudioAttributesCompatParcelizer:Ljava/lang/String;

.field AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

.field ICustomTabsCallback:Ljava/lang/CharSequence;

.field ICustomTabsCallback$Stub:Landroid/widget/RemoteViews;

.field ICustomTabsCallback$Stub$Proxy:Z

.field ICustomTabsService:Lo/setSubtitle$onTransact;

.field ICustomTabsService$Stub:Z

.field ICustomTabsService$Stub$Proxy:Z

.field INotificationSideChannel:I

.field INotificationSideChannel$Default:Landroid/widget/RemoteViews;

.field INotificationSideChannel$Stub:Landroid/widget/RemoteViews;

.field INotificationSideChannel$Stub$Proxy:Landroid/widget/RemoteViews;

.field IPostMessageService:Ljava/lang/String;

.field IPostMessageService$Stub:Z

.field IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

.field IconCompatParcelizer:Z

.field MediaBrowserCompat:Z

.field RemoteActionCompatParcelizer:J

.field asBinder:Ljava/lang/CharSequence;

.field asInterface:Landroid/app/PendingIntent;

.field cancel:I

.field cancelAll:Ljava/lang/String;

.field public connect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field disconnect:Lo/setSubtitle$onPostMessage;

.field public extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/setSubtitle$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field extraCommand:Ljava/lang/CharSequence;

.field getDefaultImpl:Landroid/app/Notification;

.field getInterfaceDescriptor:Z

.field mayLaunchUrl:I

.field newSession:I

.field notify:Z

.field onMessageChannelReady:Ljava/lang/CharSequence;

.field public onNavigationEvent:Landroid/content/Context;

.field onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/setSubtitle$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:Landroid/graphics/Bitmap;

.field onTransact:Landroid/app/PendingIntent;

.field postMessage:[Ljava/lang/CharSequence;

.field read:I

.field requestPostMessageChannel:I

.field setDefaultImpl:Ljava/lang/String;

.field updateVisuals:Z

.field validateRelationship:Ljava/lang/String;

.field warmup:I

.field write:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 791
    invoke-direct {p0, p1, v0}, Lo/setSubtitle$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lo/setSubtitle$ICustomTabsCallback;->getInterfaceDescriptor:Z

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub:Z

    .line 737
    iput v1, p0, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel:I

    .line 738
    iput v1, p0, Lo/setSubtitle$ICustomTabsCallback;->cancel:I

    .line 744
    iput v1, p0, Lo/setSubtitle$ICustomTabsCallback;->read:I

    .line 747
    iput v1, p0, Lo/setSubtitle$ICustomTabsCallback;->write:I

    .line 750
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    .line 774
    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    .line 775
    iput-object p2, p0, Lo/setSubtitle$ICustomTabsCallback;->setDefaultImpl:Ljava/lang/String;

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 779
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 780
    iput v1, p0, Lo/setSubtitle$ICustomTabsCallback;->newSession:I

    .line 781
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->connect:Ljava/util/ArrayList;

    .line 782
    iput-boolean v0, p0, Lo/setSubtitle$ICustomTabsCallback;->IconCompatParcelizer:Z

    return-void
.end method

.method protected static extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1682
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1683
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private onPostMessage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    .line 1051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1056
    sget v1, Lo/getIconUri$onNavigationEvent;->compat_notification_large_icon_max_width:I

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1058
    sget v2, Lo/getIconUri$onNavigationEvent;->compat_notification_large_icon_max_height:I

    .line 1059
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1060
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 1064
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1070
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1067
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private onPostMessage(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1251
    iget-object p2, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void

    .line 1253
    :cond_0
    iget-object p2, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1275
    iput p1, p0, Lo/setSubtitle$ICustomTabsCallback;->newSession:I

    return-object p0
.end method

.method public ICustomTabsCallback(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 2

    .line 1421
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    new-instance v1, Lo/setSubtitle$extraCallback;

    invoke-direct {v1, p1, p2, p3}, Lo/setSubtitle$extraCallback;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ICustomTabsCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 987
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public ICustomTabsCallback(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 884
    invoke-static {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public ICustomTabsCallback(Ljava/lang/String;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1571
    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->setDefaultImpl:Ljava/lang/String;

    return-object p0
.end method

.method public ICustomTabsCallback(Z)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    const/4 v0, 0x2

    .line 1160
    invoke-direct {p0, v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(IZ)V

    return-object p0
.end method

.method public ICustomTabsCallback$Stub(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1511
    iput p1, p0, Lo/setSubtitle$ICustomTabsCallback;->cancel:I

    return-object p0
.end method

.method public extraCallback()Landroid/app/Notification;
    .locals 1

    .line 1677
    new-instance v0, Lo/setDescription;

    invoke-direct {v0, p0}, Lo/setDescription;-><init>(Lo/setSubtitle$ICustomTabsCallback;)V

    invoke-virtual {v0}, Lo/setDescription;->onPostMessage()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 851
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 975
    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->asInterface:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public extraCallback(Lo/setSubtitle$extraCallback;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1440
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onMessageChannelReady(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1242
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1244
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public onMessageChannelReady(III)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1139
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1140
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1141
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1142
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOnMS:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOffMS:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1143
    :goto_0
    iget-object p2, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iget p3, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, -0x2

    or-int/2addr p1, p3

    .line 1144
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public onMessageChannelReady(Landroid/graphics/Bitmap;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1042
    invoke-direct {p0, p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1482
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService:Lo/setSubtitle$onTransact;

    if-eq v0, p1, :cond_0

    .line 1483
    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService:Lo/setSubtitle$onTransact;

    if-eqz p1, :cond_0

    .line 1485
    invoke-virtual {p1, p0}, Lo/setSubtitle$onTransact;->onMessageChannelReady(Lo/setSubtitle$ICustomTabsCallback;)V

    :cond_0
    return-object p0
.end method

.method public onMessageChannelReady(Z)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 808
    iput-boolean p1, p0, Lo/setSubtitle$ICustomTabsCallback;->getInterfaceDescriptor:Z

    return-object p0
.end method

.method public onNavigationEvent(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 935
    iput p1, p0, Lo/setSubtitle$ICustomTabsCallback;->warmup:I

    return-object p0
.end method

.method public onNavigationEvent(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1022
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    invoke-static {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onNavigationEvent(Z)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    const/16 v0, 0x10

    .line 1204
    invoke-direct {p0, v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(IZ)V

    return-object p0
.end method

.method public onNavigationEvent([J)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 1129
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public onPostMessage()Landroid/os/Bundle;
    .locals 1

    .line 1398
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    .line 1401
    :cond_0
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->IPostMessageService$Stub$Proxy:Landroid/os/Bundle;

    return-object v0
.end method

.method public onPostMessage(I)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1499
    iput p1, p0, Lo/setSubtitle$ICustomTabsCallback;->INotificationSideChannel:I

    return-object p0
.end method

.method public onPostMessage(J)Lo/setSubtitle$ICustomTabsCallback;
    .locals 1

    .line 799
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public onPostMessage(Landroid/net/Uri;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 2

    .line 1083
    iget-object v0, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1084
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    const/4 v0, -0x1

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1085
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1086
    iget-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->AudioAttributesImplApi21Parcelizer:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1087
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1088
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public onPostMessage(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 892
    invoke-static {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onPostMessage(Ljava/lang/String;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1227
    iput-object p1, p0, Lo/setSubtitle$ICustomTabsCallback;->cancelAll:Ljava/lang/String;

    return-object p0
.end method

.method public onPostMessage(Z)Lo/setSubtitle$ICustomTabsCallback;
    .locals 0

    .line 1215
    iput-boolean p1, p0, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsService$Stub:Z

    return-object p0
.end method
