.class final Lo/writeEnum$extraCallback$onMessageChannelReady$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getEventLogSize$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$extraCallback$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getEventLogSize$onNavigationEvent<",
        "Lo/writeEnum$extraCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;
    .locals 0

    .line 3496
    invoke-static {p1}, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage(I)Lo/writeEnum$extraCallback$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method
