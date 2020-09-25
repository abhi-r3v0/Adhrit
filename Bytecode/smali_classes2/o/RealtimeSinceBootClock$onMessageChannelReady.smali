.class public abstract Lo/RealtimeSinceBootClock$onMessageChannelReady;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/RealtimeSinceBootClock$onMessageChannelReady<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/RealtimeSinceBootClock<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzjv:Lo/nativeGetSizeInBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeGetSizeInBytes<",
            "Lo/RealtimeSinceBootClock$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    invoke-static {}, Lo/nativeGetSizeInBytes;->onMessageChannelReady()Lo/nativeGetSizeInBytes;

    move-result-object v0

    iput-object v0, p0, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    return-void
.end method
