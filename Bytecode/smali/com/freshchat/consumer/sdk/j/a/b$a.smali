.class public final Lcom/freshchat/consumer/sdk/j/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/a/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic jv:Lcom/freshchat/consumer/sdk/j/a/b;

.field private final jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

.field private jx:Z


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/b$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$b;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jx:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V

    return-void
.end method

.method public final commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b;->aR(Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V

    return-void
.end method

.method public final w(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v1

    if-ne v1, p0, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/b$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/b$a;->jw:Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->y(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/freshchat/consumer/sdk/j/a/b$a$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/b$a;Ljava/io/OutputStream;Lcom/freshchat/consumer/sdk/j/a/c;)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
