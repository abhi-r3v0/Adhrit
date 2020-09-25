.class final Lo/setHomeButtonEnabled$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHomeButtonEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/setHomeButtonEnabled$onNavigationEvent;->onMessageChannelReady:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 92
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 86
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object p1, p0, Lo/setHomeButtonEnabled$onNavigationEvent;->onMessageChannelReady:Ljava/io/File;

    invoke-static {p1}, Lo/getSoftInputMode;->ICustomTabsCallback(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "ByteBufferFileLoader"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to obtain ByteBuffer for file"

    .line 64
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_0
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
