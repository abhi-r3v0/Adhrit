.class public final Lo/sessionFile$onPostMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JniNativeApi$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sessionFile$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/reflect/Type;

.field private synthetic onMessageChannelReady:Lo/JniNativeApi;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lo/JniNativeApi;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/sessionFile$onPostMessage$3;->extraCallback:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lo/sessionFile$onPostMessage$3;->onMessageChannelReady:Lo/JniNativeApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lo/sessionFile;",
            ")",
            "Lo/JniNativeApi<",
            "*>;"
        }
    .end annotation

    .line 200
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/sessionFile$onPostMessage$3;->extraCallback:Ljava/lang/reflect/Type;

    invoke-static {p2, p1}, Lo/serializeBeginSession;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/sessionFile$onPostMessage$3;->onMessageChannelReady:Lo/JniNativeApi;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
