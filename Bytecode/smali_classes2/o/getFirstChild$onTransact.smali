.class final Lo/getFirstChild$onTransact;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getFirstChild<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/ensureIndexed;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    const-string v0, "name == null"

    .line 109
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/getFirstChild$onTransact;->extraCallback:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lo/getFirstChild$onTransact;->ICustomTabsCallback:Lo/ensureIndexed;

    .line 111
    iput-boolean p3, p0, Lo/getFirstChild$onTransact;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxNode;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lo/getFirstChild$onTransact;->ICustomTabsCallback:Lo/ensureIndexed;

    invoke-interface {v0, p2}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lo/getFirstChild$onTransact;->extraCallback:Ljava/lang/String;

    iget-boolean v1, p0, Lo/getFirstChild$onTransact;->onNavigationEvent:Z

    invoke-virtual {p1, v0, p2, v1}, Lo/getMaxNode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
