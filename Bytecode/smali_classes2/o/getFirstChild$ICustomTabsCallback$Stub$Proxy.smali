.class final Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
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
.field private final ICustomTabsCallback:Z

.field private final onNavigationEvent:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/ensureIndexed;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    .line 129
    iput-object p1, p0, Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/ensureIndexed;

    .line 130
    iput-boolean p2, p0, Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Z

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

    .line 135
    :cond_0
    iget-object v0, p0, Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/ensureIndexed;

    invoke-interface {v0, p2}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2, v0, v1}, Lo/getMaxNode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
