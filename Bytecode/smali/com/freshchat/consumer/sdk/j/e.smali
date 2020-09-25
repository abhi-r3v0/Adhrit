.class public Lcom/freshchat/consumer/sdk/j/e;
.super Ljava/lang/Object;


# static fields
.field private static ho:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/e;->ho:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static Y(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/e;->ho:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/s;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/s;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/j/e$1;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/e$1;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static Z(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static aa(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FRESHCHAT"

    const-string v1, "cancelAlarms() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/e;->Z(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object p0, Lcom/freshchat/consumer/sdk/j/e;->ho:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic eg()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/e;->ho:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
