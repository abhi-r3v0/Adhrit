.class public final Lo/getAuthTokenProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addToArray;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/moveRedLeft$3;

.field public final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lo/moveRedLeft$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/moveRedLeft$3;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-object p1, p0, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    .line 1006
    iput-object p2, p0, Lo/getAuthTokenProvider$1;->onNavigationEvent:Ljava/lang/Class;

    .line 1007
    iput-object p3, p0, Lo/getAuthTokenProvider$1;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 1009
    iput-object p4, p0, Lo/getAuthTokenProvider$1;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/net/SocketAddress;)Lo/removeFromArray;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PropertyDescription "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getAuthTokenProvider$1;->onNavigationEvent:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getAuthTokenProvider$1;->onMessageChannelReady:Lo/moveRedLeft$3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getAuthTokenProvider$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
