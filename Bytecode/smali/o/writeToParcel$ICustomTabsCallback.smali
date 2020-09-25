.class public final Lo/writeToParcel$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeToParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/writeToParcel$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeToParcel$onPostMessage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private extraCallback:Z

.field onNavigationEvent:Lo/toString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/toString<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {}, Lo/toString;->ICustomTabsCallback()Lo/toString;

    move-result-object v0

    iput-object v0, p0, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent:Lo/toString;

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 4

    .line 332
    iget-object v0, p0, Lo/writeToParcel$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeToParcel$onPostMessage;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lo/writeToParcel$onPostMessage;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Lo/writeToParcel$onMessageChannelReady;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/writeToParcel$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/writeToParcel$onPostMessage;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    .line 344
    :cond_0
    iget-boolean v0, p0, Lo/writeToParcel$ICustomTabsCallback;->extraCallback:Z

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent:Lo/toString;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Lo/toString;->extraCallback(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lo/writeToParcel$ICustomTabsCallback;->extraCallback:Z

    .line 248
    iget-object v1, p0, Lo/writeToParcel$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeToParcel$onPostMessage;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1, p1}, Lo/writeToParcel$onPostMessage;->extraCallback(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 1322
    iput-object p1, p0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;

    .line 1323
    iput-object p1, p0, Lo/writeToParcel$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeToParcel$onPostMessage;

    .line 1324
    iput-object p1, p0, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent:Lo/toString;

    :cond_1
    return v0
.end method
