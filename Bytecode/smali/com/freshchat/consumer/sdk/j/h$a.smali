.class public Lcom/freshchat/consumer/sdk/j/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic ht:Lcom/freshchat/consumer/sdk/j/h;

.field private hu:J

.field private hv:Ljava/io/File;

.field private hw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/h;)V
    .locals 1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h$a;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hv:Ljava/io/File;

    return-void
.end method

.method public eq()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hu:J

    return-void
.end method

.method public er()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hv:Ljava/io/File;

    return-object v0
.end method

.method public es()I
    .locals 5

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hu:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/h$a;->startTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$a;->hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/j/h$a;->startTime:J

    return-void
.end method
