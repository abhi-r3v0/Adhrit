.class final Lo/access$2300$onMessageChannelReady;
.super Lo/access$2300;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$2300;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/access$2300$onPostMessage;


# direct methods
.method public constructor <init>(Lo/getHashFunction;Lo/getHashFunction;Lo/getHashFunction;Lo/getHashFunction;Ljava/security/Provider;Lo/access$2300$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/security/Provider;",
            "Lo/access$2300$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p5}, Lo/access$2300;-><init>(Ljava/security/Provider;)V

    .line 342
    iput-object p1, p0, Lo/access$2300$onMessageChannelReady;->ICustomTabsCallback:Lo/getHashFunction;

    .line 343
    iput-object p2, p0, Lo/access$2300$onMessageChannelReady;->onMessageChannelReady:Lo/getHashFunction;

    .line 346
    iput-object p3, p0, Lo/access$2300$onMessageChannelReady;->extraCallback:Lo/getHashFunction;

    .line 347
    iput-object p4, p0, Lo/access$2300$onMessageChannelReady;->asInterface:Lo/getHashFunction;

    .line 348
    iput-object p6, p0, Lo/access$2300$onMessageChannelReady;->onRelationshipValidationResult:Lo/access$2300$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/getOnComplete;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 373
    iget-object v2, p0, Lo/access$2300$onMessageChannelReady;->ICustomTabsCallback:Lo/getHashFunction;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lo/getHashFunction;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v2, p0, Lo/access$2300$onMessageChannelReady;->onMessageChannelReady:Lo/getHashFunction;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lo/getHashFunction;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    iget-object p2, p0, Lo/access$2300$onMessageChannelReady;->asInterface:Lo/getHashFunction;

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/getHashFunction;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    .line 379
    invoke-static {p3}, Lo/access$2300$onMessageChannelReady;->onPostMessage(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 380
    iget-object p3, p0, Lo/access$2300$onMessageChannelReady;->asInterface:Lo/getHashFunction;

    invoke-virtual {p3, p1, p2}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 385
    iget-object v0, p0, Lo/access$2300$onMessageChannelReady;->extraCallback:Lo/getHashFunction;

    .line 2060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getHashFunction;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    .line 387
    :cond_1
    iget-object v0, p0, Lo/access$2300$onMessageChannelReady;->extraCallback:Lo/getHashFunction;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 388
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/getRequest;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    return-object v2
.end method

.method public final onPostMessage()Lo/access$2300$onPostMessage;
    .locals 1

    .line 353
    iget-object v0, p0, Lo/access$2300$onMessageChannelReady;->onRelationshipValidationResult:Lo/access$2300$onPostMessage;

    return-object v0
.end method
