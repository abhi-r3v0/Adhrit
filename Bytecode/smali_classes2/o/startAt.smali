.class public interface abstract Lo/startAt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/startAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/startAt$4;

    invoke-direct {v0}, Lo/startAt$4;-><init>()V

    sput-object v0, Lo/startAt;->onPostMessage:Lo/startAt;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/io/File;)Lo/exceptionStacktrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract asInterface(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/io/File;)Lo/exceptionStacktrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/io/File;)Lo/toLog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTransact(Ljava/io/File;)J
.end method
