.class final Lcom/freshchat/consumer/sdk/h/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic fi:Landroid/content/Context;

.field final synthetic fk:J

.field final synthetic fl:I

.field final synthetic fm:Landroid/app/Notification;


# direct methods
.method constructor <init>(JLandroid/content/Context;ILandroid/app/Notification;)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fk:J

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fi:Landroid/content/Context;

    iput p4, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fl:I

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fm:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fk:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/h/b;->b(JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fi:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iget v0, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fl:I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fm:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fi:Landroid/content/Context;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/h/b$2;->fi:Landroid/content/Context;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    return-void
.end method
