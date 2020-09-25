.class public Lo/onDataChange;
.super Lo/newLogger;
.source ""


# instance fields
.field final onNavigationEvent:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/newLogger;-><init>()V

    .line 31
    iput-object p1, p0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/newRunLoop;)Z
    .locals 1

    .line 35
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lo/newLogger$extraCallback;

    .line 1043
    iget-object v1, p0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1044
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 39
    sget-object v1, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v0, p1, v1}, Lo/newLogger$extraCallback;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;)V

    return-object v0
.end method
