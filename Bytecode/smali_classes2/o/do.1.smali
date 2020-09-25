.class public final Lo/do;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Z


# direct methods
.method public constructor <init>(Lo/dj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BuildInfo must be non-null"

    .line 2
    invoke-static {p1, v0}, Lo/dq;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lo/dj;->onPostMessage()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo/do;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flagName must not be null"

    .line 5
    invoke-static {p1, v0}, Lo/dq;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v0, p0, Lo/do;->extraCallback:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    sget-object v0, Lo/setTimestamp;->onNavigationEvent:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/b$a$a;

    .line 10
    invoke-virtual {v0, p1}, Lo/b$a$a;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
