.class final Lo/getFirstChild$ICustomTabsService;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getFirstChild<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "@Url parameter is null."

    .line 59
    invoke-static {p2, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method
