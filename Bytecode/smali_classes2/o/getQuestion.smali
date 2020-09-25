.class public abstract Lo/getQuestion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/access$702;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/Csat<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/getQuestion<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/access$702;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/getQuestion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lo/getQuestion;->ICustomTabsCallback()Lo/getQuestion;

    move-result-object v0

    return-object v0
.end method

.method protected abstract extraCallback(Lo/Csat;)Lo/getQuestion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic onMessageChannelReady(Lo/access$502;)Lo/access$702;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lo/getQuestion;->onRelationshipValidationResult()Lo/access$502;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lo/Csat;

    invoke-virtual {p0, p1}, Lo/getQuestion;->extraCallback(Lo/Csat;)Lo/getQuestion;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
