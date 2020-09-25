.class final Lo/getPriorityHash;
.super Lo/getQueryDefinition$ICustomTabsCallback;
.source ""


# static fields
.field static final onMessageChannelReady:Lo/getQueryDefinition$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/getPriorityHash;

    invoke-direct {v0}, Lo/getPriorityHash;-><init>()V

    sput-object v0, Lo/getPriorityHash;->onMessageChannelReady:Lo/getQueryDefinition$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/getQueryDefinition$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/getQueryDefinition<",
            "**>;"
        }
    .end annotation

    .line 1084
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 31
    const-class p3, Lo/fromQueryDefinition;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 36
    new-instance p2, Lo/getPriorityHash$3;

    invoke-direct {p2, p1}, Lo/getPriorityHash$3;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2
.end method
