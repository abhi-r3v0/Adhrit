.class Lcom/freshchat/consumer/sdk/j/a/f$b;
.super Lcom/freshchat/consumer/sdk/j/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/a/a<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final gS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic kl:Lcom/freshchat/consumer/sdk/j/a/f;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/a/f;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/a;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->gS:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/f$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->data:Ljava/lang/Object;

    return-object p0
.end method

.method private fA()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->gS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Landroid/widget/ImageView;)Lcom/freshchat/consumer/sdk/j/a/f$b;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->data:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/f;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :catch_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    iget-boolean v3, v3, Lcom/freshchat/consumer/sdk/j/a/f;->kh:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->isCancelled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/f;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Lcom/freshchat/consumer/sdk/j/a/f;)Lcom/freshchat/consumer/sdk/j/a/d;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f$b;->fA()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/f;->c(Lcom/freshchat/consumer/sdk/j/a/f;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Lcom/freshchat/consumer/sdk/j/a/f;)Lcom/freshchat/consumer/sdk/j/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/j/a/d;->aU(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f$b;->fA()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/f;->c(Lcom/freshchat/consumer/sdk/j/a/f;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/a/f;->d(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Lcom/freshchat/consumer/sdk/j/a/f;)Lcom/freshchat/consumer/sdk/j/a/d;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Lcom/freshchat/consumer/sdk/j/a/f;)Lcom/freshchat/consumer/sdk/j/a/d;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f$b;->b([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->onCancelled(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f$b;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/f;->c(Lcom/freshchat/consumer/sdk/j/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f$b;->fA()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "ImageWorker"

    const-string v2, "onPostExecute - setting bitmap"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$b;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->d(Lcom/freshchat/consumer/sdk/j/a/f;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f$b;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
