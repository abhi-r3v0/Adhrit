.class final Lo/computeEnumSize$onPostMessage$2;
.super Lo/computeEnumSize$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeEnumSize$onPostMessage;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeEnumSize<",
        "TK;TV;>.extraCallback<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/computeEnumSize$onPostMessage;)V
    .locals 0

    .line 601
    iget-object p1, p1, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    invoke-direct {p0, p1}, Lo/computeEnumSize$extraCallback;-><init>(Lo/computeEnumSize;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lo/computeEnumSize$onPostMessage$2;->onMessageChannelReady()Lo/computeEnumSize$onNavigationEvent;

    move-result-object v0

    iget-object v0, v0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-object v0
.end method
