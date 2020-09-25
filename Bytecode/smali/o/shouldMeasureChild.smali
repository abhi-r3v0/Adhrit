.class public final Lo/shouldMeasureChild;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\t\u0010\u0014\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationTemplateListItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "notificationCard",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;",
        "(Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;)V",
        "getNotificationCard",
        "()Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;",
        "template",
        "",
        "getTemplate",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isSame",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/shouldMeasureChild;

    if-eqz v0, :cond_0

    check-cast p1, Lo/shouldMeasureChild;

    iget-object v0, p0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p0

    check-cast v0, Lo/shouldMeasureChild;

    if-eq p1, v0, :cond_3

    instance-of v0, p1, Lo/shouldMeasureChild;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 48
    :goto_0
    check-cast p1, Lo/shouldMeasureChild;

    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p1, :cond_1

    .line 2030
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->ICustomTabsCallback:Ljava/lang/String;

    .line 48
    :cond_1
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationTemplateListItem(notificationCard="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
