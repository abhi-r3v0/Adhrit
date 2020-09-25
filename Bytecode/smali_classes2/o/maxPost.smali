.class final Lo/maxPost;
.super Lo/ensureIndexed$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/maxPost$ICustomTabsCallback;,
        Lo/maxPost$onMessageChannelReady;,
        Lo/maxPost$onNavigationEvent;,
        Lo/maxPost$onPostMessage;,
        Lo/maxPost$extraCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/ensureIndexed$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "*",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation

    .line 43
    const-class p2, Lo/isCompleteForPath;

    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    sget-object p1, Lo/maxPost$onPostMessage;->ICustomTabsCallback:Lo/maxPost$onPostMessage;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "*>;"
        }
    .end annotation

    .line 29
    const-class p3, Lo/getChildKey;

    if-ne p1, p3, :cond_1

    .line 30
    const-class p1, Lo/isBinary;

    invoke-static {p2, p1}, Lo/nameAndPriorityCompare;->ICustomTabsCallback([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    sget-object p1, Lo/maxPost$onNavigationEvent;->onPostMessage:Lo/maxPost$onNavigationEvent;

    return-object p1

    .line 32
    :cond_0
    sget-object p1, Lo/maxPost$onMessageChannelReady;->onMessageChannelReady:Lo/maxPost$onMessageChannelReady;

    return-object p1

    .line 34
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 35
    sget-object p1, Lo/maxPost$extraCallback;->onMessageChannelReady:Lo/maxPost$extraCallback;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
