.class final Lo/identityTranslator;
.super Lo/verifyInsideTransaction$asBinder;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/util/logging/Logger;

.field private static onPostMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lo/verifyInsideTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lo/identityTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/identityTranslator;->ICustomTabsCallback:Ljava/util/logging/Logger;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/verifyInsideTransaction$asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/verifyInsideTransaction;
    .locals 1

    .line 67
    sget-object v0, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/verifyInsideTransaction;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    :cond_0
    return-object v0
.end method

.method public final extraCallback(Lo/verifyInsideTransaction;Lo/verifyInsideTransaction;)V
    .locals 3

    .line 2067
    sget-object v0, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/verifyInsideTransaction;

    if-nez v0, :cond_0

    .line 2069
    sget-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    :cond_0
    if-eq v0, p1, :cond_1

    .line 47
    sget-object p1, Lo/identityTranslator;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Context was not attached when detaching"

    .line 47
    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    sget-object p1, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    if-eq p2, p1, :cond_2

    .line 51
    sget-object p1, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_2
    sget-object p1, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/verifyInsideTransaction;)Lo/verifyInsideTransaction;
    .locals 2

    .line 1067
    sget-object v0, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/verifyInsideTransaction;

    if-nez v0, :cond_0

    .line 1069
    sget-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    .line 37
    :cond_0
    sget-object v1, Lo/identityTranslator;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method
