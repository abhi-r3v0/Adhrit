.class public Lcom/freshchat/consumer/sdk/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected ax:Lcom/freshchat/consumer/sdk/j/h;

.field protected eJ:Z

.field protected eK:Landroid/content/Context;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/f/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->eK:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/f/b;->ax:Lcom/freshchat/consumer/sdk/j/h;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/f/b;->eJ:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h;->startRecording()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/f/b;->startTime:J

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/f/b;->eJ:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/freshchat/consumer/sdk/f/b;->eJ:Z

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/f/b;->startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2ee

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/f/b;->eJ:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->eK:Landroid/content/Context;

    const-string p2, "Hold to record, release to send, swipe away to cancel"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h;->eh()V

    return v1

    :cond_4
    iput-boolean v2, p0, Lcom/freshchat/consumer/sdk/f/b;->eJ:Z

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h;->ei()V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/f/b;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h;->eh()V

    :cond_6
    :goto_2
    return v1
.end method
