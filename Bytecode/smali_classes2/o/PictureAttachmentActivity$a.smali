.class final Lo/PictureAttachmentActivity$a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/PictureAttachmentActivity$a;


# instance fields
.field private final ICustomTabsCallback:Lo/aI;

.field private final onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/C<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/PictureAttachmentActivity$a;

    invoke-direct {v0}, Lo/PictureAttachmentActivity$a;-><init>()V

    sput-object v0, Lo/PictureAttachmentActivity$a;->extraCallback:Lo/PictureAttachmentActivity$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/PictureAttachmentActivity$a;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lo/ConversationDetailActivity$3;

    invoke-direct {v0}, Lo/ConversationDetailActivity$3;-><init>()V

    iput-object v0, p0, Lo/PictureAttachmentActivity$a;->ICustomTabsCallback:Lo/aI;

    return-void
.end method

.method public static onPostMessage()Lo/PictureAttachmentActivity$a;
    .locals 1

    .line 1
    sget-object v0, Lo/PictureAttachmentActivity$a;->extraCallback:Lo/PictureAttachmentActivity$a;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Class;)Lo/C;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/C<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lo/aw;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lo/PictureAttachmentActivity$a;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/C;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/PictureAttachmentActivity$a;->ICustomTabsCallback:Lo/aI;

    invoke-interface {v1, p1}, Lo/aI;->onNavigationEvent(Ljava/lang/Class;)Lo/C;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lo/aw;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 8
    invoke-static {v1, v0}, Lo/aw;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lo/PictureAttachmentActivity$a;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/C;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/C<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/PictureAttachmentActivity$a;->extraCallback(Ljava/lang/Class;)Lo/C;

    move-result-object p1

    return-object p1
.end method
