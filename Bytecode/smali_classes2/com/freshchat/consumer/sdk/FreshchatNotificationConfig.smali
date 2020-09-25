.class public final Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
.super Ljava/lang/Object;


# instance fields
.field private backstackFallbackActivityClassName:Ljava/lang/String;

.field private importance:I

.field private largeIconResId:I

.field private notificationInterceptionEnabled:Z

.field private notificationSoundEnabled:Z

.field private notificationSoundUri:Landroid/net/Uri;

.field private priority:I

.field private smallIconResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationSoundEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->priority:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->importance:I

    return-void
.end method

.method private launchActivityOnFinish(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->backstackFallbackActivityClassName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "FRESHCHAT_WARNING"

    const-string p2, "Invalid activity name received in launchActivityOnFinish()"

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getActivityToLaunchOnFinish()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->backstackFallbackActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImportance()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->importance:I

    return v0
.end method

.method public final getLargeIcon()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->largeIconResId:I

    return v0
.end method

.method public final getNotificationSound()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationSoundUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->priority:I

    return v0
.end method

.method public final getSmallIcon()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->smallIconResId:I

    return v0
.end method

.method public final isNotificationInterceptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationInterceptionEnabled:Z

    return v0
.end method

.method public final isNotificationSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationSoundEnabled:Z

    return v0
.end method

.method public final launchActivityOnFinish(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->launchActivityOnFinish(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    return-object p0
.end method

.method public final setImportance(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->importance:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->lD:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{{importance}}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final setLargeIcon(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->largeIconResId:I

    return-object p0
.end method

.method public final setNotificationInterceptionEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationInterceptionEnabled:Z

    return-object p0
.end method

.method public final setNotificationSound(Landroid/net/Uri;)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationSoundUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final setNotificationSoundEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->notificationSoundEnabled:Z

    return-object p0
.end method

.method public final setPriority(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 2

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->priority:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid notification priority value provided : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fallback to default priority"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final setSmallIcon(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->smallIconResId:I

    return-object p0
.end method
