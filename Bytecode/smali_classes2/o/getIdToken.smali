.class public abstract Lo/getIdToken;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract ICustomTabsCallback$Stub()J
.end method

.method abstract ICustomTabsCallback$Stub$Proxy()Landroid/app/PendingIntent;
.end method

.method abstract ICustomTabsService()Landroid/app/PendingIntent;
.end method

.method abstract asBinder()J
.end method

.method public abstract asInterface()J
.end method

.method final extraCallback(Lo/reload;)Landroid/app/PendingIntent;
    .locals 8

    .line 1000
    iget v0, p1, Lo/reload;->ICustomTabsCallback:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo/getIdToken;->getInterfaceDescriptor()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/getIdToken;->getInterfaceDescriptor()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 3000
    :cond_0
    iget-boolean p1, p1, Lo/reload;->extraCallback:Z

    if-eqz p1, :cond_1

    .line 2000
    invoke-virtual {p0}, Lo/getIdToken;->asBinder()J

    move-result-wide v4

    invoke-virtual {p0}, Lo/getIdToken;->onTransact()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo/getIdToken;->ICustomTabsService()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    .line 4000
    :cond_3
    iget v0, p1, Lo/reload;->ICustomTabsCallback:I

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lo/getIdToken;->warmup()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lo/getIdToken;->warmup()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 6000
    :cond_4
    iget-boolean p1, p1, Lo/reload;->extraCallback:Z

    if-eqz p1, :cond_5

    .line 5000
    invoke-virtual {p0}, Lo/getIdToken;->asBinder()J

    move-result-wide v4

    invoke-virtual {p0}, Lo/getIdToken;->onTransact()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-gtz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/getIdToken;->ICustomTabsCallback$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method abstract getInterfaceDescriptor()Landroid/app/PendingIntent;
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent()Ljava/lang/Integer;
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onRelationshipValidationResult()I
.end method

.method abstract onTransact()J
.end method

.method abstract warmup()Landroid/app/PendingIntent;
.end method
