.class final Lo/getMax$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendAuthHelper$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Ljava/lang/Runnable;

.field private synthetic onPostMessage:Lo/getMax;


# direct methods
.method private constructor <init>(Lo/getMax;Ljava/lang/Runnable;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/getMax$onPostMessage;->onPostMessage:Lo/getMax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lo/getMax$onPostMessage;->ICustomTabsCallback:Z

    .line 179
    iput-object p2, p0, Lo/getMax$onPostMessage;->extraCallback:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lo/getMax;Ljava/lang/Runnable;B)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lo/getMax$onPostMessage;-><init>(Lo/getMax;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/io/InputStream;
    .locals 1

    .line 1183
    iget-boolean v0, p0, Lo/getMax$onPostMessage;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lo/getMax$onPostMessage;->extraCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    .line 1185
    iput-boolean v0, p0, Lo/getMax$onPostMessage;->ICustomTabsCallback:Z

    .line 193
    :cond_0
    iget-object v0, p0, Lo/getMax$onPostMessage;->onPostMessage:Lo/getMax;

    .line 2034
    iget-object v0, v0, Lo/getMax;->onPostMessage:Ljava/util/Queue;

    .line 193
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
