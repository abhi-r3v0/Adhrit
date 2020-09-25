.class Lcom/freshchat/consumer/sdk/j/a/b$a$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic jy:Lcom/freshchat/consumer/sdk/j/a/b$a;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b$a;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a$a;->jy:Lcom/freshchat/consumer/sdk/j/a/b$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b$a;Ljava/io/OutputStream;Lcom/freshchat/consumer/sdk/j/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/b$a$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/b$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a$a;->jy:Lcom/freshchat/consumer/sdk/j/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->b(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)Z

    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a$a;->jy:Lcom/freshchat/consumer/sdk/j/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->b(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)Z

    return-void
.end method

.method public write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a$a;->jy:Lcom/freshchat/consumer/sdk/j/a/b$a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/a/b$a;->b(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)Z

    return-void
.end method

.method public write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a$a;->jy:Lcom/freshchat/consumer/sdk/j/a/b$a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/a/b$a;->b(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)Z

    return-void
.end method
