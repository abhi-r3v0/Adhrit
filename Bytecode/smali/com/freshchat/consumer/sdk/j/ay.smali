.class public Lcom/freshchat/consumer/sdk/j/ay;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string v0, "XIAOMI_AUTOSTART_USER_NOTIFIED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string v1, "XIAOMI_AUTOSTART_USER_NOTIFIED"

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ay;->bf(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static be(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ay;->fd()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch AutoStart Screen - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static bf(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ay;->fd()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch AutoStart Screen - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static synthetic bg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ay;->be(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$bool;->freshchat_xiaomi_autostart_prompt_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/p;->ew()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ay;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/i;->m(Landroid/content/Context;)Lo/onTransact$onNavigationEvent;

    move-result-object v0

    .line 1418
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onTransact:Ljava/lang/CharSequence;

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_positive:I

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ay$1;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/j/ay$1;-><init>(Landroid/content/Context;)V

    .line 1473
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v3, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v3, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    .line 1474
    iget-object p1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_negative:I

    .line 1509
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v2, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    .line 1510
    iget-object p1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v1, 0x0

    iput-object v1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ay;->a(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method private static fd()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
