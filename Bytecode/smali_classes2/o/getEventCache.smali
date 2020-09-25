.class public interface abstract Lo/getEventCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/getEventCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/getEventCache$2;

    invoke-direct {v0}, Lo/getEventCache$2;-><init>()V

    sput-object v0, Lo/getEventCache;->onPostMessage:Lo/getEventCache;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/io/File;)Z
.end method

.method public abstract asBinder(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/io/File;)Lo/exceptionStacktrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
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

.method public abstract onRelationshipValidationResult(Ljava/io/File;)J
.end method
