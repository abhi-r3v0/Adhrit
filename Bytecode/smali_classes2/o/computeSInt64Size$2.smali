.class final Lo/computeSInt64Size$2;
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
.field private synthetic ICustomTabsCallback:Ljava/lang/reflect/Method;

.field private synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/computeSInt64Size$2;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iput p2, p0, Lo/computeSInt64Size$2;->onNavigationEvent:I

    invoke-direct {p0}, Lo/computeSInt64Size;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 73
    invoke-static {p1}, Lo/computeSInt64Size$2;->onMessageChannelReady(Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lo/computeSInt64Size$2;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget p1, p0, Lo/computeSInt64Size$2;->onNavigationEvent:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
