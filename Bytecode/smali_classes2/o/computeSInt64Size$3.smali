.class final Lo/computeSInt64Size$3;
.super Lo/computeSInt64Size;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeSInt64Size;->onPostMessage()Lo/computeSInt64Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic onNavigationEvent:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/computeSInt64Size$3;->onNavigationEvent:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lo/computeSInt64Size$3;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-direct {p0}, Lo/computeSInt64Size;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lo/computeSInt64Size$3;->onMessageChannelReady(Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lo/computeSInt64Size$3;->onNavigationEvent:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lo/computeSInt64Size$3;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
