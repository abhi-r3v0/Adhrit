.class public interface abstract Lo/SubMenuItem;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/PinAccountRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraCallback()V
.end method

.method public abstract onMessageChannelReady(Ljava/util/List;)Lo/PinAccountRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TabConfigResponse;",
            ">;)",
            "Lo/PinAccountRequest;"
        }
    .end annotation
.end method
