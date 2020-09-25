.class public final Lcom/freshchat/consumer/sdk/Freshchat;
.super Ljava/lang/Object;


# static fields
.field public static final FRESHCHAT_ACTION_MESSAGE_COUNT_CHANGED:Ljava/lang/String; = "com.freshchat.consumer.sdk.MessageCountChanged"

.field public static final FRESHCHAT_ACTION_NOTIFICATION_INTERCEPTED:Ljava/lang/String; = "com.freshchat.consumer.sdk.FreshchatNotificationIntercepted"

.field public static final FRESHCHAT_EVENTS:Ljava/lang/String; = "com.freshchat.consumer.sdk.FreshchatEvents"

.field public static final FRESHCHAT_UNREAD_MESSAGE_COUNT_CHANGED:Ljava/lang/String; = "com.freshchat.consumer.sdk.MessageCountChanged"

.field public static final FRESHCHAT_USER_RESTORE_ID_GENERATED:Ljava/lang/String; = "com.freshchat.consumer.sdk.UserRestoreIdGenerated"

.field private static volatile INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

.field private static lifecycleCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final context:Landroid/content/Context;

.field private freshchatUserInteractionListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private linkHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freshchat/consumer/sdk/LinkHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Freshchat;->lifecycleCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freshchat/consumer/sdk/Freshchat;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/Freshchat;->executeUnreadCountCallback(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V

    return-void
.end method

.method private static executeUnreadCountCallback(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/f;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/f;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/Freshchat$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/freshchat/consumer/sdk/Freshchat$2;-><init>(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/f;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getEventFromBundle(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bg;->e(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2

    if-eqz p0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/Freshchat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/Freshchat;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/Freshchat;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getInstance() requires a valid context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSDKVersionCode()I
    .locals 1

    const/16 v0, 0x10f

    return v0
.end method

.method public static handleFcmMessage(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/h/b;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/Freshchat;->isFreshchatNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got notification for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->a(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->kv:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is a mandatory param for handleFcmMessage()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hasSavedConfig(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFreshchatNotification(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->isFreshchatNotification(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFreshchatNotification(Landroid/os/Bundle;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "source"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "freshchat_user"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFreshchatNotification(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->isFreshchatNotification(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static openFreshchatDeeplink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0, v0, v2}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {p0, v0, v2}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to open Freshchat deeplink : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Deeplink url is a mandatory param for openFreshchatDeeplink()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is a mandatory param for openFreshchatDeeplink()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerLifecycleCallbacks()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/Freshchat;->lifecycleCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/b/d;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/b/d;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/Freshchat;->lifecycleCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static resetUser(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatMessage;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/o;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/o;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/o;->ao(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/o;->setText(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sendMessage() requires a non null instance of FreshchatMessage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sendMessage() requires a valid context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setConversationBannerMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CONFIG_CONVERSATION_BANNER_MESSAGE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setImageLoader(Lcom/freshchat/consumer/sdk/FreshchatImageLoader;)V
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/af;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoader;)V

    return-void
.end method

.method public static showConversations(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->showConversations(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)V

    return-void
.end method

.method public static showConversations(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eQ()Z

    move-result v0

    const-string v1, "FRESHCHAT_WARNING"

    if-nez v0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->dd:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_account_not_active:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_inbox_section_not_enabled:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->hasSavedConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_init_not_completed_method_name_placeholder:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_init_not_completed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "showConversations()"

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->R(Landroid/content/Context;)V

    if-nez p1, :cond_4

    new-instance p1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/ConversationOptions;-><init>()V

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_5

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_failed_to_launch_support_section:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->lF:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/z;)Lcom/freshchat/consumer/sdk/j/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ea()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "showConversations() requires a valid context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFAQs(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->showFAQs(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)V

    return-void
.end method

.method public static showFAQs(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eQ()Z

    move-result v0

    const-string v1, "FRESHCHAT_WARNING"

    if-nez v0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->dd:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_account_not_active:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->az(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_faq_section_not_enabled:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->hasSavedConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_init_not_completed_method_name_placeholder:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_init_not_completed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "showFAQs()"

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    new-instance p1, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_5

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_failed_to_launch_support_section:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->lF:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/z;)Lcom/freshchat/consumer/sdk/j/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ea()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "showFAQs() requires a valid context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCustomLinkHandler()Lcom/freshchat/consumer/sdk/LinkHandler;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->linkHandlerReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/LinkHandler;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFreshchatUserId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/d;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->freshchatUserInteractionListenerReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUnreadCountAsync(Lcom/freshchat/consumer/sdk/UnreadCountCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getUnreadCountAsync(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Ljava/util/List;)V

    return-void
.end method

.method public final getUnreadCountAsync(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/UnreadCountCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "FRESHCHAT_WARNING"

    const-string p2, "Invalid callback received. Not fetching unread count"

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/w;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/w;-><init>()V

    sget-object v1, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_ERROR:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/w;->a(Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/w;->dO()Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/w;->getCount()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->executeUnreadCountCallback(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    const/4 v1, 0x5

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gl:Lcom/freshchat/consumer/sdk/service/e/d$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/Freshchat$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/freshchat/consumer/sdk/Freshchat$1;-><init>(Lcom/freshchat/consumer/sdk/Freshchat;Ljava/util/List;Lcom/freshchat/consumer/sdk/UnreadCountCallback;)V

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public final getUser()Lcom/freshchat/consumer/sdk/FreshchatUser;
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/FreshchatUser;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/freshchat/consumer/sdk/FreshchatUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatUser;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v0

    return-object v0
.end method

.method public final getUserIdTokenStatus()Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    return-object v0
.end method

.method public final identifyUser(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "identifyUser()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->v(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->resetUser(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/User;->setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/beans/User;->setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1
.end method

.method public final init(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eQ()Z

    move-result v0

    const-string v1, "FRESHCHAT_WARNING"

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->dd:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isAccountActive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Account is not active"

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_account_not_active:I

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/y;->a(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aa;->aH(Landroid/content/Context;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ba;->fX()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->isCameraCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/g;->am(Landroid/content/Context;)V

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/am;->aT(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/PermissionNotGrantedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Permission required for Freshchat is missing!"

    invoke-static {v1, v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fD()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->registerLifecycleCallbacks()V

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/l;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/l;-><init>(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/y;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V

    :cond_3
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->R(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->T(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freshchat init completed for app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final linkifyWithPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->w(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/b/e;->x(Ljava/lang/String;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1
.end method

.method public final restoreUser(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;,
            Lcom/freshchat/consumer/sdk/exception/JwtException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "restoreUser()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->w(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/o;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/d;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->resetUser(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, v2, p1}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/exception/JwtException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JWT Id Token provided in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t have the mandatory field reference_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/exception/JwtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCustomLinkHandler(Lcom/freshchat/consumer/sdk/LinkHandler;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->linkHandlerReference:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->linkHandlerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setFreshchatUserInteractionListener(Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->freshchatUserInteractionListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setNotificationConfig(Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/h/b;->O(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->du:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1
.end method

.method public final setPushRegistrationToken(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/y;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/y;->K(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/y;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public final setUser(Lcom/freshchat/consumer/sdk/FreshchatUser;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    const-string/jumbo v1, "setUser()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->v(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/d;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatUser;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setUser() requires a valid FreshchatUser object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUser(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;,
            Lcom/freshchat/consumer/sdk/exception/JwtException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "setUser()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->w(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/o;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/o;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/o;->x(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1
.end method

.method public final setUserProperties(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/Freshchat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "setUserProperties()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->v(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setUserProperties() requires non null keys and values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/d;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_2
    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "setUserProperty()"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/o;->v(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->setUserProperties(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/Freshchat;

    sget-object p1, Lcom/freshchat/consumer/sdk/Freshchat;->INSTANCE:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "setUserProperty() requires a non null key and value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
