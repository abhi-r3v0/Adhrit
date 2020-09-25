.class final Lo/onAuthStatus$onMessageChannelReady;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAuthStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getMinKey$ICustomTabsCallback;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    if-eqz p1, :cond_0

    .line 132
    check-cast p1, Lo/getMinKey$ICustomTabsCallback;

    iput-object p1, p0, Lo/onAuthStatus$onMessageChannelReady;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/onAuthStatus$onMessageChannelReady;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 142
    const-class v0, Lo/onAuthStatus$onMessageChannelReady;

    .line 2119
    new-instance v1, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 142
    iget-object v0, p0, Lo/onAuthStatus$onMessageChannelReady;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback;

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
