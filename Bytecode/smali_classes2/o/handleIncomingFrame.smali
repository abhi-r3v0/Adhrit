.class public final Lo/handleIncomingFrame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/handleIncomingFrame$onPostMessage;
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/deleteTrackedQuery$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "Lo/handleIncomingFrame$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Lo/handleIncomingFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 1291
    new-instance v0, Lo/deleteTrackedQuery$onMessageChannelReady;

    const-string v1, "internal-stub-type"

    invoke-direct {v0, v1}, Lo/deleteTrackedQuery$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 718
    sput-object v0, Lo/handleIncomingFrame;->onMessageChannelReady:Lo/deleteTrackedQuery$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
