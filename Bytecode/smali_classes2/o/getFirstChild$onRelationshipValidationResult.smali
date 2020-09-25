.class final Lo/getFirstChild$onRelationshipValidationResult;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onRelationshipValidationResult"
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 88
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    const-string v0, "name == null"

    .line 89
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/getFirstChild$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lo/getFirstChild$onRelationshipValidationResult;->extraCallback:Lo/ensureIndexed;

    .line 91
    iput-boolean p3, p0, Lo/getFirstChild$onRelationshipValidationResult;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 5
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

    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lo/getFirstChild$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/getFirstChild$onRelationshipValidationResult;->extraCallback:Lo/ensureIndexed;

    invoke-interface {v1, p2}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v1, p0, Lo/getFirstChild$onRelationshipValidationResult;->onNavigationEvent:Z

    .line 1090
    iget-object v2, p1, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1094
    iget-object v2, p1, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1}, Lo/getMaxNode;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    return-void

    .line 1092
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Path parameter \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/getFirstChild$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" value must not be null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
