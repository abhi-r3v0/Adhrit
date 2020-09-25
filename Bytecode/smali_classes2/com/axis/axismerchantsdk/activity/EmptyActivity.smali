.class public Lcom/axis/axismerchantsdk/activity/EmptyActivity;
.super Lo/asBinder;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lo/asBinder;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lo/onSupportContentChanged$onNavigationEvent;->activity_empty:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "action"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPermission"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "permissions"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 1040
    invoke-static {p0, p1, v0}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 46
    array-length v0, p2

    if-lez v0, :cond_5

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, v1

    const-string v3, "DENIED"

    const-string v4, "GRANTED"

    const/4 v5, -0x1

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 1066
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_4

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p3, v1

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    if-ne v0, v5, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 2066
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_4
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    const-string v1, "permission_response"

    invoke-static {v1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    invoke-static {}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->ICustomTabsCallback()Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 56
    invoke-static {}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->ICustomTabsCallback()Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage(I[Ljava/lang/String;[I)V

    :cond_6
    return-void
.end method
