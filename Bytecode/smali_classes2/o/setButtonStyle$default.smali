.class public abstract Lo/setButtonStyle$default;
.super Ljava/lang/Object;

# interfaces
.implements Lo/nativeIterativeBoxBlur;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/getTargetId<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/setButtonStyle$default<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/nativeIterativeBoxBlur;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/getTargetId;)Lo/setButtonStyle$default;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
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

    invoke-virtual {p0}, Lo/setButtonStyle$default;->onMessageChannelReady()Lo/setButtonStyle$default;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic extraCallback(Lo/NativeBlurFilter;)Lo/nativeIterativeBoxBlur;
    .locals 1

    invoke-virtual {p0}, Lo/setButtonStyle$default;->ICustomTabsCallback$Stub$Proxy()Lo/NativeBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lo/getTargetId;

    invoke-virtual {p0, p1}, Lo/setButtonStyle$default;->ICustomTabsCallback(Lo/getTargetId;)Lo/setButtonStyle$default;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onMessageChannelReady()Lo/setButtonStyle$default;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
