.class public abstract Lo/ge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DeeplinkInterstitialActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/gb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/ge<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/DeeplinkInterstitialActivity;"
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
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lo/ge;->onRelationshipValidationResult()Lo/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/aD;)Lo/DeeplinkInterstitialActivity;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lo/ge;->INotificationSideChannel$Default()Lo/aD;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lo/gb;

    invoke-virtual {p0, p1}, Lo/ge;->onPostMessage(Lo/gb;)Lo/ge;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onPostMessage(Lo/gb;)Lo/ge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract onRelationshipValidationResult()Lo/ge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
